/* 
 * This file is part of the arduino vesc library (https://github.com/arduino_vesc)
 * 
 * Copyright (c) 2019 Gianmarco Vitelli
 * 
 * This program is free software: you can redistribute it and/or modify  
 * it under the terms of the GNU General Public License as published by  
 * the Free Software Foundation, version 3.
 *
 * This program is distributed in the hope that it will be useful, but 
 * WITHOUT ANY WARRANTY; without even the implied warranty of 
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU 
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License 
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */
#include "vesc.h"
#include "vesc_utility.h"

Vesc::Vesc(void)
{
}

/**
 * @brief init vesc interface
 * 
 * @param uart 
 * @param debug 
 */
void Vesc::init(HardwareSerial *uart, HardwareSerial *debug)
{
    uartPort = uart;
    debugPort = debug;
}

/**
 * @brief set duty cycle range 0.0% - 1.0%
 * 
 * @param duty 
 */
void Vesc::setDuty(float duty)
{
    uint8_t send_buffer[5];
    int32_t ind = 0;
    send_buffer[ind++] = COMM_SET_DUTY;
    VescUtility::utility_append_int32(send_buffer, (int32_t)(duty * 100000), &ind);
    sendPacket(send_buffer, ind);
}

/**
 * @brief set current 0 - MAX
 * this value will passed directly to mcpwn / mcfoc / mcbldc and will be not truncated if exeeds max motor current!
 * 
 * @param current 
 */
void Vesc::setCurrent(float current)
{
    uint8_t send_buffer[5];
    int32_t ind = 0;
    send_buffer[ind++] = COMM_SET_CURRENT;
    VescUtility::utility_append_int32(send_buffer, (int32_t)(current * 1000), &ind);
    sendPacket(send_buffer, ind);
}

/**
 * @brief set current 0 - MAX
 * this value will passed directly to mcpwn / mcfoc / mcbldc and will be not truncated if exeeds max motor current!
 * 
 * @param current 
 */
void Vesc::setBrakeCurrent(float current)
{
    uint8_t send_buffer[5];
    int32_t ind = 0;
    send_buffer[ind++] = COMM_SET_CURRENT_BRAKE;
    VescUtility::utility_append_int32(send_buffer, (int32_t)(current * 1000), &ind);
    sendPacket(send_buffer, ind);
}

/**
 * @brief set rpm to set 0 - MAX
 * 
 * @param rpm 
 */
void Vesc::setRPM(int32_t rpm)
{
    uint8_t send_buffer[5];
    int32_t ind = 0;
    send_buffer[ind++] = COMM_SET_CURRENT_BRAKE;
    VescUtility::utility_append_int32(send_buffer, rpm, &ind);
    sendPacket(send_buffer, ind);
}

/**
 * @brief set rpm 0 - MAX
 * 
 * @param position 
 */
void Vesc::setPosition(float position)
{
    uint8_t send_buffer[5];
    int32_t ind = 0;
    send_buffer[ind++] = COMM_SET_POS;
    VescUtility::utility_append_int32(send_buffer, (int32_t)(position * 1000000), &ind);
    sendPacket(send_buffer, ind);
}

/**
 * @brief set handbreak 0 - MAX
 * 
 * @param current 
 */
void Vesc::setHandbrake(float current)
{
    uint8_t send_buffer[5];
    int32_t ind = 0;
    send_buffer[ind++] = COMM_SET_HANDBRAKE;
    VescUtility::utility_append_float32(send_buffer, current, 1e3, &ind);
    sendPacket(send_buffer, ind);
}

/**
 * @brief get firmware version
 * 
 * @return vesc_version 
 */
vesc_version Vesc::getFirmwareVersion()
{
    vesc_version version;
    uint8_t send_buffer[5];
    uint8_t receive_buffer[50];
    int32_t ind = 0;
    send_buffer[ind++] = COMM_FW_VERSION;
    sendPacket(send_buffer, ind);
    
    if (receivePacket(receive_buffer) && receive_buffer[0] == COMM_FW_VERSION)
    {
        version.major = receive_buffer[ind++];
        version.minor = receive_buffer[ind++];

        uint8_t *index_pointer = (uint8_t*)strchr((char*)receive_buffer + ind, '\0');
        int index = index_pointer - receive_buffer + ind;
        memcpy(version.hw_name, receive_buffer + ind, index);
        ind += index;
        memcpy(version.stm32_uid, receive_buffer + ind, 12);
        ind += 12;

        version.pairing_done = receive_buffer[ind++];
    }

    return version;
}

/**
 * @brief get real time values
 * 
 * @return vesc_values 
 */
vesc_values Vesc::getRealtimeValues()
{
    vesc_values values;
    uint8_t send_buffer[1];
    uint8_t receive_buffer[600];
    int32_t ind = 0;
    send_buffer[ind++] = COMM_GET_VALUES;
    sendPacket(send_buffer, ind);
    
    if (receivePacket(receive_buffer) && receive_buffer[0] == COMM_GET_VALUES)
    {
        ind = 1;
        values.fet_temp = VescUtility::utility_get_float16(receive_buffer, 1e1, &ind);
        values.motor_temp = VescUtility::utility_get_float16(receive_buffer, 1e1, &ind);
        values.avg_motor_current = VescUtility::utility_get_float32(receive_buffer, 1e2, &ind);
        values.avg_input_current = VescUtility::utility_get_float32(receive_buffer, 1e2, &ind);
        values.reset_avg_id = VescUtility::utility_get_float32(receive_buffer, 1e2, &ind);
        values.reset_avg_iq = VescUtility::utility_get_float32(receive_buffer, 1e2, &ind);
        values.duty_cycle_now = VescUtility::utility_get_float16(receive_buffer, 1e3, &ind);
        values.rpm = VescUtility::utility_get_float32(receive_buffer, 1e0, &ind);
        values.input_voltage = VescUtility::utility_get_float16(receive_buffer, 1e1, &ind);
        values.amp_hours = VescUtility::utility_get_float32(receive_buffer, 1e4, &ind);
        values.amp_hours_charged = VescUtility::utility_get_float32(receive_buffer, 1e4, &ind);
        values.watt_hours = VescUtility::utility_get_float32(receive_buffer, 1e4, &ind);
        values.watt_hours_charged = VescUtility::utility_get_float32(receive_buffer, 1e4, &ind);
        values.tachometer_value = VescUtility::utility_get_int32(receive_buffer, &ind);
        values.tachometer_abs_value = VescUtility::utility_get_int32(receive_buffer, &ind);
        values.fault = receive_buffer[ind++];
        values.pid_pos_now = VescUtility::utility_get_float32(receive_buffer, 1e6, &ind);
        values.controller_id = receive_buffer[ind++];
        values.mos1_temp = VescUtility::utility_get_float16(receive_buffer, 1e1, &ind);
        values.mos2_temp = VescUtility::utility_get_float16(receive_buffer, 1e1, &ind);
        values.mos3_temp = VescUtility::utility_get_float16(receive_buffer, 1e1, &ind);
        values.reset_avg_vd = VescUtility::utility_get_float32(receive_buffer, 1e3, &ind);
        values.reset_avg_vq = VescUtility::utility_get_float32(receive_buffer, 1e3, &ind);
    }

    return values;
}

/**
 * @brief get MosFet temperature
 * 
 * @return float temperature
 */
float Vesc::getFetTemperature()
{
    uint8_t receive_buffer[10];
    int32_t ind = 5;
    if (getRealtimeValuesSelective(receive_buffer, 0))
    {
        return VescUtility::utility_get_float16(receive_buffer, 1e1, &ind);
    }

    return 0;
}

/**
 * @brief get motor temperature
 * 
 * @return float  temperature
 */
float Vesc::getMotorTemperature()
{
    uint8_t receive_buffer[10];
    int32_t ind = 5;
    if (getRealtimeValuesSelective(receive_buffer, 1))
    {
        return VescUtility::utility_get_float16(receive_buffer, 1e1, &ind);
    }

    return 0;
}

/**
 * @brief get average motor current
 * 
 * @return float average motor current
 */
float Vesc::getAvgMotorCurrent()
{
    uint8_t receive_buffer[10];
    int32_t ind = 5;
    if (getRealtimeValuesSelective(receive_buffer, 2))
    {
        return VescUtility::utility_get_float32(receive_buffer, 1e2, &ind);
    }

    return 0;
}

/**
 * @brief get average input current
 * 
 * @return float average input current
 */
float Vesc::getAvgInputCurrent()
{
    uint8_t receive_buffer[10];
    int32_t ind = 5;
    if (getRealtimeValuesSelective(receive_buffer, 3))
    {
        return VescUtility::utility_get_float32(receive_buffer, 1e2, &ind);
    }

    return 0;
}

/**
 * @brief get reset average id
 * 
 * @return float reset average id
 */
float Vesc::getResetAvgId()
{
    uint8_t receive_buffer[10];
    int32_t ind = 5;
    if (getRealtimeValuesSelective(receive_buffer, 4))
    {
        return VescUtility::utility_get_float32(receive_buffer, 1e2, &ind);
    }

    return 0;
}

/**
 * @brief get reset average iq
 * 
 * @return float reset average iq
 */
float Vesc::getResetAvgIq()
{
    uint8_t receive_buffer[10];
    int32_t ind = 5;
    if (getRealtimeValuesSelective(receive_buffer, 5))
    {
        return VescUtility::utility_get_float32(receive_buffer, 1e2, &ind);
    }

    return 0;
}

/**
 * @brief get duty cycle now
 * 
 * @return float duty cycle now
 */
float Vesc::getDutyCycleNow()
{
    uint8_t receive_buffer[10];
    int32_t ind = 5;
    if (getRealtimeValuesSelective(receive_buffer, 6))
    {
        return VescUtility::utility_get_float16(receive_buffer, 1e3, &ind);
    }

    return 0;
}

/**
 * @brief get rpm
 * 
 * @return float rpm
 */
float Vesc::getRPM()
{
    uint8_t receive_buffer[10];
    int32_t ind = 5;
    if (getRealtimeValuesSelective(receive_buffer, 7))
    {
        return VescUtility::utility_get_float32(receive_buffer, 1e0, &ind);
    }

    return 0;
}

/**
 * @brief get input voltage
 * 
 * @return float input voltage
 */
float Vesc::getInputVoltage()
{
    uint8_t receive_buffer[6];
    int32_t ind = 5;
    if (getRealtimeValuesSelective(receive_buffer, 8))
    {
        return VescUtility::utility_get_float16(receive_buffer, 1e1, &ind);
    }

    return 0;
}


/**
 * @brief get amp hours
 * 
 * @return float amp hours
 */
float Vesc::getAmpHours()
{
    uint8_t receive_buffer[10];
    int32_t ind = 5;
    if (getRealtimeValuesSelective(receive_buffer, 9))
    {
        return VescUtility::utility_get_float32(receive_buffer, 1e4, &ind);
    }

    return 0;
}

/**
 * @brief get amp hours charged
 * 
 * @return float amp hours charged
 */
float Vesc::getaAmpHoursCharged()
{
    uint8_t receive_buffer[10];
    int32_t ind = 5;
    if (getRealtimeValuesSelective(receive_buffer, 10))
    {
        return VescUtility::utility_get_float32(receive_buffer, 1e4, &ind);
    }

    return 0;
}

/**
 * @brief get watt hours
 * 
 * @return float watt hours
 */
float Vesc::getWattHours()
{
    uint8_t receive_buffer[10];
    int32_t ind = 5;
    if (getRealtimeValuesSelective(receive_buffer, 11))
    {
        return VescUtility::utility_get_float32(receive_buffer, 1e4, &ind);
    }

    return 0;
}

/**
 * @brief get watt hours charged
 * 
 * @return float watt hours charged
 */
float Vesc::getWattHoursCharged()
{
    uint8_t receive_buffer[10];
    int32_t ind = 5;
    if (getRealtimeValuesSelective(receive_buffer, 12))
    {
        return VescUtility::utility_get_float32(receive_buffer, 1e4, &ind);
    }

    return 0;
}

/**
 * @brief get tachometer value
 * 
 * @return int32_t tachometer value
 */
int32_t Vesc::getTachometerValue()
{
    uint8_t receive_buffer[10];
    int32_t ind = 5;
    if (getRealtimeValuesSelective(receive_buffer, 13))
    {
        return VescUtility::utility_get_int32(receive_buffer, &ind);
    }

    return 0;
}

/**
 * @brief get tachometer abs value
 * 
 * @return int32_t tachometer abs value
 */
int32_t Vesc::getTachometerAbsValue()
{
    uint8_t receive_buffer[10];
    int32_t ind = 5;
    if (getRealtimeValuesSelective(receive_buffer, 14))
    {
        return VescUtility::utility_get_int32(receive_buffer, &ind);
    }

    return 0;
}

/**
 * @brief get fault
 * 
 * @return uint8_t get fault
 */
uint8_t Vesc::getFault()
{
    uint8_t receive_buffer[10];
    if (getRealtimeValuesSelective(receive_buffer, 15))
    {
        return receive_buffer[2];
    }

    return 0;
}

/**
 * @brief get pid pos now
 * 
 * @return float pid pos now
 */
float Vesc::getPidPosNow()
{
    uint8_t receive_buffer[10];
    int32_t ind = 5;
    if (getRealtimeValuesSelective(receive_buffer, 16))
    {
        return VescUtility::utility_get_float32(receive_buffer, 1e6, &ind);
    }

    return 0;
}

/**
 * @brief get controller id
 * 
 * @return uint8_t controller id
 */
uint8_t Vesc::getControllerId()
{
    uint8_t receive_buffer[10];
    if (getRealtimeValuesSelective(receive_buffer, 17))
    {
        return receive_buffer[2];
    }

    return 0;
}

/**
 * @brief get mosfets temperature
 * 
 * @return float* temperature of the tree mosfets
 */
float* Vesc::getMosfetsTemperature()
{
    float values[3];
    uint8_t receive_buffer[10];
    if (getRealtimeValuesSelective(receive_buffer, 18))
    {
        int32_t ind = 5;
        values[0] = VescUtility::utility_get_float16(receive_buffer, 1e1, &ind);
        values[1] = VescUtility::utility_get_float16(receive_buffer, 1e1, &ind);
        values[2] = VescUtility::utility_get_float16(receive_buffer, 1e1, &ind);
    }

    return values;
}

/**
 * @brief get reset average vd
 * 
 * @return float reset average vd
 */
float Vesc::getResetAvgVd()
{
    uint8_t receive_buffer[10];
    int32_t ind = 5;
    if (getRealtimeValuesSelective(receive_buffer, 19))
    {
        return VescUtility::utility_get_float32(receive_buffer, 1e3, &ind);
    }

    return 0;
}

/**
 * @brief get reset average vq
 * 
 * @return float reset average vq
 */
float Vesc::getResetAvgVq()
{
    uint8_t receive_buffer[10];
    int32_t ind = 5;
    if (getRealtimeValuesSelective(receive_buffer, 20))
    {
        return VescUtility::utility_get_float32(receive_buffer, 1e3, &ind);
    }

    return 0;
}

/**
 * @brief helper method to retrieve single values from vesc
 * 
 * @return bool
 */
bool Vesc::getRealtimeValuesSelective(unsigned char *data, unsigned int index)
{
    uint8_t send_buffer[6];
    int32_t ind = 0;
    send_buffer[ind++] = COMM_GET_VALUES_SELECTIVE;
    VescUtility::utility_append_uint32(send_buffer, ((uint32_t)1 << index), &ind);
    sendPacket(send_buffer, ind);
    
    return receivePacket(data) && data[0] == COMM_GET_VALUES_SELECTIVE;
}

/**
 * @brief helper method to send packet
 * 
 * @param data to send
 * @param len of byte array
 */
void Vesc::sendPacket(unsigned char *data, unsigned int len)
{
    VescPacket::send_packet(uartPort, data, len);
}

/**
 * @brief helper method to receive packet
 * 
 * @param data store received byte array
 * @return true if reading was sucessfull
 * @return false if reading gone wrong
 */
bool Vesc::receivePacket(unsigned char *data)
{
    return VescPacket::receive_packet(uartPort, data);
}

/**
 * @brief get motor configuration
 * 
 * @return mc_configuration 
 */
mc_configuration Vesc::getMotorConfiguration() {
    mc_configuration conf;
    uint8_t receive_buffer[600];
    uint8_t send_buffer[2];
    int32_t ind = 0;
    send_buffer[ind++] = COMM_GET_MCCONF;
    sendPacket(send_buffer, ind);
    
    if (receivePacket(receive_buffer) && receive_buffer[0] == COMM_GET_MCCONF)
    {
        int32_t ind = 0;
        conf.signature = VescUtility::utility_get_uint32(receive_buffer, &ind);
        conf.pwm_mode = receive_buffer[ind++];
        conf.comm_mode = receive_buffer[ind++];
        conf.motor_type = receive_buffer[ind++];
        conf.sensor_mode = receive_buffer[ind++];
        conf.l_current_max = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.l_current_min = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.l_in_current_max = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.l_in_current_min = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.l_abs_current_max = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.l_min_erpm = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.l_max_erpm = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.l_erpm_start = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.l_max_erpm_fbrake = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.l_max_erpm_fbrake_cc = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.l_min_vin = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.l_max_vin = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.l_battery_cut_start = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.l_battery_cut_end = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.l_slow_abs_current = receive_buffer[ind++];
        conf.l_temp_fet_start = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.l_temp_fet_end = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.l_temp_motor_start = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.l_temp_motor_end = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.l_temp_accel_dec = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.l_min_duty = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.l_max_duty = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.l_watt_max = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.l_watt_min = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.l_current_max_scale = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.l_current_min_scale = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.sl_min_erpm = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.sl_min_erpm_cycle_int_limit = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.sl_max_fullbreak_current_dir_change = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.sl_cycle_int_limit = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.sl_phase_advance_at_br = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.sl_cycle_int_rpm_br = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.sl_bemf_coupling_k = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.hall_table[0] = receive_buffer[ind++];
        conf.hall_table[1] = receive_buffer[ind++];
        conf.hall_table[2] = receive_buffer[ind++];
        conf.hall_table[3] = receive_buffer[ind++];
        conf.hall_table[4] = receive_buffer[ind++];
        conf.hall_table[5] = receive_buffer[ind++];
        conf.hall_table[6] = receive_buffer[ind++];
        conf.hall_table[7] = receive_buffer[ind++];
        conf.hall_sl_erpm = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.foc_current_kp = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.foc_current_ki = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.foc_f_sw = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.foc_dt_us = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.foc_encoder_inverted = receive_buffer[ind++];
        conf.foc_encoder_offset = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.foc_encoder_ratio = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.foc_encoder_sin_gain = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.foc_encoder_cos_gain = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.foc_encoder_sin_offset = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.foc_encoder_cos_offset = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.foc_encoder_sincos_filter_constant = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.foc_sensor_mode = receive_buffer[ind++];
        conf.foc_pll_kp = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.foc_pll_ki = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.foc_motor_l = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.foc_motor_r = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.foc_motor_flux_linkage = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.foc_observer_gain = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.foc_observer_gain_slow = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.foc_duty_dowmramp_kp = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.foc_duty_dowmramp_ki = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.foc_openloop_rpm = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.foc_sl_openloop_hyst = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.foc_sl_openloop_time = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.foc_sl_d_current_duty = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.foc_sl_d_current_factor = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.foc_hall_table[0] = receive_buffer[ind++];
        conf.foc_hall_table[1] = receive_buffer[ind++];
        conf.foc_hall_table[2] = receive_buffer[ind++];
        conf.foc_hall_table[3] = receive_buffer[ind++];
        conf.foc_hall_table[4] = receive_buffer[ind++];
        conf.foc_hall_table[5] = receive_buffer[ind++];
        conf.foc_hall_table[6] = receive_buffer[ind++];
        conf.foc_hall_table[7] = receive_buffer[ind++];
        conf.foc_sl_erpm = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.foc_sample_v0_v7 = receive_buffer[ind++];
        conf.foc_sample_high_current = receive_buffer[ind++];
        conf.foc_sat_comp = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.foc_temp_comp = receive_buffer[ind++];
        conf.foc_temp_comp_base_temp = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.foc_current_filter_const = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.gpd_buffer_notify_left = VescUtility::utility_get_int16(receive_buffer, &ind);
        conf.gpd_buffer_interpol = VescUtility::utility_get_int16(receive_buffer, &ind);
        conf.gpd_current_filter_const = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.gpd_current_kp = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.gpd_current_ki = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.s_pid_kp = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.s_pid_ki = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.s_pid_kd = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.s_pid_kd_filter = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.s_pid_min_erpm = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.s_pid_allow_braking = receive_buffer[ind++];
        conf.p_pid_kp = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.p_pid_ki = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.p_pid_kd = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.p_pid_kd_filter = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.p_pid_ang_div = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.cc_startup_boost_duty = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.cc_min_current = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.cc_gain = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.cc_ramp_step_max = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.m_fault_stop_time_ms = VescUtility::utility_get_int32(receive_buffer, &ind);
        conf.m_duty_ramp_step = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.m_current_backoff_gain = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.m_encoder_counts = VescUtility::utility_get_uint32(receive_buffer, &ind);
        conf.m_sensor_port_mode = receive_buffer[ind++];
        conf.m_invert_direction = receive_buffer[ind++];
        conf.m_drv8301_oc_mode = receive_buffer[ind++];
        conf.m_drv8301_oc_adj = receive_buffer[ind++];
        conf.m_bldc_f_sw_min = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.m_bldc_f_sw_max = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.m_dc_f_sw = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.m_ntc_motor_beta = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.m_out_aux_mode = receive_buffer[ind++];
        conf.si_motor_poles = receive_buffer[ind++];
        conf.si_gear_ratio = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.si_wheel_diameter = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
        conf.si_battery_type = receive_buffer[ind++];
        conf.si_battery_cells = receive_buffer[ind++];
        conf.si_battery_ah = VescUtility::utility_get_float32_auto(receive_buffer, &ind);
    }

     return conf;
}