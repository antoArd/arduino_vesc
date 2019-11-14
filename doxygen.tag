<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<tagfile>
  <compound kind="file">
    <name>README.md</name>
    <path>C:/dev/repository/arduino_vesc/</path>
    <filename>d9/dd6/_r_e_a_d_m_e_8md</filename>
  </compound>
  <compound kind="file">
    <name>vesc.cpp</name>
    <path>C:/dev/repository/arduino_vesc/</path>
    <filename>d3/d6e/vesc_8cpp</filename>
    <includes id="d1/d5c/vesc_8h" name="vesc.h" local="yes" imported="no">vesc.h</includes>
    <includes id="d0/df7/vesc__utility_8h" name="vesc_utility.h" local="yes" imported="no">vesc_utility.h</includes>
  </compound>
  <compound kind="file">
    <name>vesc.h</name>
    <path>C:/dev/repository/arduino_vesc/</path>
    <filename>d1/d5c/vesc_8h</filename>
    <includes id="d2/d74/vesc__types_8h" name="vesc_types.h" local="yes" imported="no">vesc_types.h</includes>
    <includes id="dc/dd4/vesc__packet_8h" name="vesc_packet.h" local="yes" imported="no">vesc_packet.h</includes>
    <class kind="class">Vesc</class>
  </compound>
  <compound kind="file">
    <name>vesc_packet.cpp</name>
    <path>C:/dev/repository/arduino_vesc/</path>
    <filename>d6/d0b/vesc__packet_8cpp</filename>
    <includes id="dc/dd4/vesc__packet_8h" name="vesc_packet.h" local="yes" imported="no">vesc_packet.h</includes>
    <member kind="variable">
      <type>const unsigned short</type>
      <name>crc16_tab</name>
      <anchorfile>d6/d0b/vesc__packet_8cpp.html</anchorfile>
      <anchor>a4d155e9b7dd32c222133092c19b69787</anchor>
      <arglist>[]</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>vesc_packet.h</name>
    <path>C:/dev/repository/arduino_vesc/</path>
    <filename>dc/dd4/vesc__packet_8h</filename>
    <class kind="class">VescPacket</class>
  </compound>
  <compound kind="file">
    <name>vesc_types.h</name>
    <path>C:/dev/repository/arduino_vesc/</path>
    <filename>d2/d74/vesc__types_8h</filename>
    <class kind="struct">vesc_version</class>
    <class kind="struct">vesc_values</class>
    <class kind="struct">mc_configuration</class>
    <member kind="enumeration">
      <type></type>
      <name>COMM_PACKET_ID</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_FW_VERSION</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a9114644b124e5e1a87e212bd6a80291e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_JUMP_TO_BOOTLOADER</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a8f6e18ca06469c84af097120e26ff8af</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_ERASE_NEW_APP</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a719eb6161f2dc4b77982f3729791e2b2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_WRITE_NEW_APP_DATA</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a48b9e57fbee927c5c82b58d68e463f2b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_GET_VALUES</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06acc526a8f876180f1191ee3f2572bc772</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_SET_DUTY</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a7df58630ac01bddca8e7b9fc1510884b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_SET_CURRENT</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a25b42a743b3b05ba5ab080c4b6dd9480</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_SET_CURRENT_BRAKE</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a2bd6060e9fa9f15571c57e3772546982</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_SET_RPM</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06ace0693aa4ec9e8a852db0d87faee6425</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_SET_POS</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a82faae68e7d16a9b315d05bd8857f6c9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_SET_HANDBRAKE</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a38e329434c5324e0b3dc2e2112f40487</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_SET_DETECT</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a315b2cb6cf4732e84425d9bca355ec49</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_SET_SERVO_POS</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a0d49a9291ac112070057347d466ed14f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_SET_MCCONF</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06afc4a70ff0738b5c0970972b3b73398d0</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_GET_MCCONF</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a8e1da6ec3e3830364882a22d0ea5d7da</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_GET_MCCONF_DEFAULT</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06acb5df56b57c10652aafedab719a1eb04</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_SET_APPCONF</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06ae3c68ebf90627972c79369018415d82a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_GET_APPCONF</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06abfb916e6013b1d0a14b6a292cfe8c335</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_GET_APPCONF_DEFAULT</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a4abfd7d2f3c45bf9010883101b96b834</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_SAMPLE_PRINT</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a7e51a787bf2107f0d03c65f416dce143</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_TERMINAL_CMD</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06ac6ded17ab9d4add070d8bf0c41c2145f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_PRINT</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06af37add9f535bb3c7b1bf4bf50b023dfe</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_ROTOR_POSITION</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06abce28f7700145eafabae44ac1c723bce</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_EXPERIMENT_SAMPLE</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06ab73a277c2cfba454f3c940d2f0f868d4</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_DETECT_MOTOR_PARAM</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06ad32486ca305b9b4b12930d6fff4c6ec0</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_DETECT_MOTOR_R_L</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a486d3f86edf86272f23571a834bf65fe</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_DETECT_MOTOR_FLUX_LINKAGE</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a16998dcb5eaf2c4e8017c2b373ac19d5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_DETECT_ENCODER</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06adeae06436bd496dea7bfa3fea841d492</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_DETECT_HALL_FOC</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06ab99f3f386133bff511b63d18a67343a1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_REBOOT</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06abb1b56d29127e55ec98d1d5e35e1940d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_ALIVE</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06af45c7bd521782fe5ad918ea51b7410ba</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_GET_DECODED_PPM</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a62dff179eaff8e830371051535c337e7</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_GET_DECODED_ADC</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06ab59b2e56bad686f0f97b612e5ae23bf9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_GET_DECODED_CHUK</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a6b2f29dd04923a388f16802c8d0b38cd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_FORWARD_CAN</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a18ede091afd50bc8082e937caba1b64a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_SET_CHUCK_DATA</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06aa69eff87ed40878b20ad26d5b558d20d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_CUSTOM_APP_DATA</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a42f2a37fccc7da6142bf69425615384c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_NRF_START_PAIRING</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a974f82fee6de22e623b7c67a24b5282b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_GPD_SET_FSW</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06acd0b18e2f394713b65ffce74d8093afa</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_GPD_BUFFER_NOTIFY</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06af84640e4d247e207a994db5158a4c609</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_GPD_BUFFER_SIZE_LEFT</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06aedda3672f61f7ce75dbb893cda614707</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_GPD_FILL_BUFFER</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a5283e2c2aa888e42f35f653108204303</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_GPD_OUTPUT_SAMPLE</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a717e2abf02d152cfcf8bdb73f1799340</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_GPD_SET_MODE</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06ae54916c4d7375a018cb47c10938ca0ec</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_GPD_FILL_BUFFER_INT8</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a8276542042c4887e05ca046879ee77c1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_GPD_FILL_BUFFER_INT16</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06ab6bcf09e3adcabb6f4b1ef91d7082357</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_GPD_SET_BUFFER_INT_SCALE</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06aac01f811e95e99a9167c87ff403301ff</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_GET_VALUES_SETUP</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a736fd69b7a90401b748af855b9c86b7e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_SET_MCCONF_TEMP</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a9d1222f8abd215dd80521887cd0b501a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_SET_MCCONF_TEMP_SETUP</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a7c5d360ba76ee064bf1fc69f249a0890</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_GET_VALUES_SELECTIVE</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a338065e699509542a748fe51c7ec594a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_GET_VALUES_SETUP_SELECTIVE</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a49bcd7826245625445a1d59d9679c549</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_EXT_NRF_PRESENT</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a7fa93f22175fcaf2170584618df5b6c2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_EXT_NRF_ESB_SET_CH_ADDR</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a8b2a66666b7cf5419b72f6fb4ffa8834</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_EXT_NRF_ESB_SEND_DATA</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a9993f9ff694e80936dc533a9aa930c89</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_EXT_NRF_ESB_RX_DATA</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06ac31fbe6987a6f5fef758fed79bb46610</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_EXT_NRF_SET_ENABLED</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06ae597d38a197a2efc03f8780fb5ada92b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_DETECT_MOTOR_FLUX_LINKAGE_OPENLOOP</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06aa3e5aa28e393cc59a05760d4b2218f73</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_DETECT_APPLY_ALL_FOC</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06ac3105b3d531a0f9ee5b52abe8135f260</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_JUMP_TO_BOOTLOADER_ALL_CAN</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a1b0fa5b8857d28137c00099c4310f415</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_ERASE_NEW_APP_ALL_CAN</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a1feacd0cfeaa1a46b8f5a0d4ed6f52b1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_WRITE_NEW_APP_DATA_ALL_CAN</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a29a7bf7fc92dcf1e6ccee8ea40cda14c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_PING_CAN</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a361aba7f673f6ca36eb1d7ac8d98ee24</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_APP_DISABLE_OUTPUT</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a4267c2b31855590c5834fe57d2a11089</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_TERMINAL_CMD_SYNC</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a9d962c0903220c6cb736d0333c1b326e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_GET_IMU_DATA</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a4bf39166b7cb44f03e0cac55816649be</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_BM_CONNECT</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a85b717a92231e646eff826fee58853db</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_BM_ERASE_FLASH_ALL</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06ac2a8829023309e1b82cdc493d8f9f125</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_BM_WRITE_FLASH</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a6ad94b78a983186c845426dd16d110b1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_BM_REBOOT</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a84188b3718ed64c2b18a1bdb377819a6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_BM_DISCONNECT</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a1a50370d92208535e7ef69a40b9105e9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_BM_MAP_PINS_DEFAULT</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06ab5132bbe81f979bf9d1041c8ce8ac9ef</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_BM_MAP_PINS_NRF5X</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06ae903e90c01850457b762a696b1b45551</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_ERASE_BOOTLOADER</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06aa2039e47c8e7d0ad08a6a4ad8df3c80e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_ERASE_BOOTLOADER_ALL_CAN</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a4510496f5f8b95613a7dba467fa9dd88</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_PLOT_INIT</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a547b58a07410e23bced1baad6c898231</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_PLOT_DATA</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06afc5ccf3e7acca0a55ad98c08e28ae99e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_PLOT_ADD_GRAPH</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a89735bf2bcb7d0196f145d54438cff00</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_PLOT_SET_GRAPH</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06a0b01ae98e38074d95d8833ad1db3624f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COMM_GET_DECODED_BALANCE</name>
      <anchorfile>d2/d74/vesc__types_8h.html</anchorfile>
      <anchor>aa2363afa25225dc719506b23d25d7a06aba2da1ec44834cfef35da3a4abdc8ea3</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>vesc_utility.cpp</name>
    <path>C:/dev/repository/arduino_vesc/</path>
    <filename>d6/dc5/vesc__utility_8cpp</filename>
    <includes id="d0/df7/vesc__utility_8h" name="vesc_utility.h" local="yes" imported="no">vesc_utility.h</includes>
  </compound>
  <compound kind="file">
    <name>vesc_utility.h</name>
    <path>C:/dev/repository/arduino_vesc/</path>
    <filename>d0/df7/vesc__utility_8h</filename>
    <class kind="class">VescUtility</class>
  </compound>
  <compound kind="struct">
    <name>mc_configuration</name>
    <filename>d5/d42/structmc__configuration.html</filename>
    <member kind="variable">
      <type>uint32_t</type>
      <name>signature</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a9bd51e0d8ac2d5c785274e8a37d8a1bf</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>pwm_mode</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>aa07739762b782b7353fb99d74ebe2f05</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>comm_mode</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>ade9e437643f95254c405120da065cd36</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>motor_type</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>adf382a91d1ea9f38bca826618e0257fb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>sensor_mode</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>ae46b3d818c00f4da82205c47fc8478b0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>l_current_max</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a19cca6e42152fcbeb6a3c20a2283b4b7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>l_current_min</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>ab0e083ff8c061b3e9099801cd5ff5452</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>l_in_current_max</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a2b4b207de23c4c345566947124e383e8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>l_in_current_min</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>ad32d207e048364a01bb62ff0d6047b43</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>l_abs_current_max</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a11b0c7771a9b9acd4b7051b89bed4817</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>l_min_erpm</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>ad3dfd11124d7041195b87788ccb7a274</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>l_max_erpm</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a0fa8d87a228a8eb0193484f430fbac4c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>l_erpm_start</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>add25b66613f4ee8cddf6275c005e8beb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>l_max_erpm_fbrake</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a18470c7586ca596eb1304b97aa897471</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>l_max_erpm_fbrake_cc</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a57b36c5c66a7f8199068bb8233f89719</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>l_min_vin</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>af2e6c9c09b9798fb6e991cadd5321dc3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>l_max_vin</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a5436d4eeba06ce1cd64953e9530d3910</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>l_battery_cut_start</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a0e7d166b842598553e98740b81c46901</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>l_battery_cut_end</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>acec8a28c49f738384a0100d96016b941</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>l_slow_abs_current</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a86b4a5f18850fa160f83a70f60600844</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>l_temp_fet_start</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a9ef00baab2ff745e8239a9d1d4a520a6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>l_temp_fet_end</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a8fd3e396882807440c74ee1b3b8708ab</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>l_temp_motor_start</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a27c522f57a043af34a44da02145f543b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>l_temp_motor_end</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>ab39dae723b620946b98a8fa1b4c1cc2f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>l_temp_accel_dec</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a2851420b9829be392a67381e453eb044</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>l_min_duty</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a34ddf13f42b12904ed13ffc746ff6951</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>l_max_duty</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>ade6c24d4b5dca3c766b5a4b6519dad0f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>l_watt_max</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a3fb1466ad97cf602b877e1bdca8389b1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>l_watt_min</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a47b4362389fa374dafcd4d84e8c9336b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>l_current_max_scale</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a9f19f8e22361aef1906efc98426b4585</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>l_current_min_scale</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a3aa14eeee82777a07c1a431e7df951ab</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>lo_current_max</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a99a0c7f7cecbdc6a0b1a4c0784236887</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>lo_current_min</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>adf932b731cd6d19e50ea1985309c0761</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>lo_in_current_max</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>afaaa5a8d3ed7ca54c0c95abcd9f1819b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>lo_in_current_min</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>abe6b15b62cf47378651c405e6fb87dd1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>lo_current_motor_max_now</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a8f4a5e8990265899e018393a7a416075</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>lo_current_motor_min_now</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>ac97a4804ed6ba3d420912439316f0ca8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>sl_min_erpm</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>ac230e5a1ae9e29d8a5c24ccbb4b18292</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>sl_min_erpm_cycle_int_limit</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>ae66915361f54e3354741606b3491c1e6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>sl_max_fullbreak_current_dir_change</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>afd06d4a00d748def7658d52425edf6ae</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>sl_cycle_int_limit</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>aa5f8d964f694c895c3cace5c6ec5bd28</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>sl_phase_advance_at_br</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>ab1e177b07d04d1518368a50c99236620</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>sl_cycle_int_rpm_br</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>aa3927be46d0ec5ebed15380ce547c8c7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>sl_bemf_coupling_k</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a7ea5e9ad8a2067577fe193f3922268c3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int8_t</type>
      <name>hall_table</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a8b6efae0ef532434971643e918c8ad24</anchor>
      <arglist>[8]</arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>hall_sl_erpm</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>ad12a80936cf8927b7d560b9bb7a3a27f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>foc_current_kp</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>acbb5e76ec29ebc5153a8e7e010207a21</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>foc_current_ki</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a68d186609eb567c0025cb1356a972f8e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>foc_f_sw</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a6d62b647668e52ed175b9e0fae29c576</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>foc_dt_us</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>ac629dcdfc1eb3753ba0b4c2913163039</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>foc_encoder_offset</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a6232658a5de96faea41fed6ee68289a6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>foc_encoder_inverted</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a03423f79712519cf4cdb30b3b62510ef</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>foc_encoder_ratio</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a26399974289b2b72a077020dae83a973</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>foc_encoder_sin_offset</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a00b736277f29be85cec5ec9b49e491c6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>foc_encoder_sin_gain</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a780413281d7623eb701ad0e44edea41b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>foc_encoder_cos_offset</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>aaf817eeff325125dd73be0165df97303</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>foc_encoder_cos_gain</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a190fe9f4a51aa9e3639287f695fec014</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>foc_encoder_sincos_filter_constant</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>afbfb19e1f49655331e5b29070bb17696</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>foc_motor_l</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>abbab869d59a21d5c0537fea2272cf513</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>foc_motor_r</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a2dc2efc5ec1cdf8b490a7d4221c7fbb8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>foc_motor_flux_linkage</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a7242eea08a50b6b841c16904197320aa</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>foc_observer_gain</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>aea40a0a0198d1a9fa68feddbe62e6e8f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>foc_observer_gain_slow</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>ae84dc4570c309b3e68e51f674a8d7df6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>foc_pll_kp</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a615d0b19f31ab1ecde99c728ce2a3a64</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>foc_pll_ki</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>ad3b468aa7422307a2d1aa9bd520947e2</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>foc_duty_dowmramp_kp</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a37b78af85e6835d66d04d26aec8e0e7b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>foc_duty_dowmramp_ki</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a3ac97c11b73e10973c24fd8793f67287</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>foc_openloop_rpm</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a922dfe2271daf6bd46738409db230d5b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>foc_sl_openloop_hyst</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>ac54db2b3dda8ded2b4fa1aac14015865</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>foc_sl_openloop_time</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a0709054438d9386b231abc2164f0dd53</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>foc_sl_d_current_duty</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a32a4d06f3bab0d0c0549acce40cb0354</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>foc_sl_d_current_factor</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a6fbbd096efdcc4d0a7aa9d6222a303de</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>foc_sensor_mode</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>abbd867cfd9ae561130a41fe067d607a8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>foc_hall_table</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>aa248288c050b2645bca8334035257dd9</anchor>
      <arglist>[8]</arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>foc_sl_erpm</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>adc302ea5ec293f3ca930a278984741b5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>foc_sample_v0_v7</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>ac5ee5efe7bf3c6346d2bc3c268e20d7f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>foc_sample_high_current</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a5f0da2a6c67d230d82e5d51997724e61</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>foc_sat_comp</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a11a41da807289c50c17b9ea1086a6676</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>foc_temp_comp</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a90a1dbc5f320636b453c0c5f78467b04</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>foc_temp_comp_base_temp</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a8f90988c1ff47107b052976de5ad7002</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>foc_current_filter_const</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a2804c9ebad86588cd98ca6f4473bd665</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>gpd_buffer_notify_left</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>abcf3e2c4e8225f76def208bbee62d95f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>gpd_buffer_interpol</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>ab41117eb7950abcce5cef82ea7d1274c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>gpd_current_filter_const</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a0244a3464593eab85d36c86dcfe06761</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>gpd_current_kp</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a3df44ed23204de63b3727c2ca8eb545f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>gpd_current_ki</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>af5200b6ee2db846c1b8928b3628a203e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>s_pid_kp</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>aa512d2e7980926bc1ddfd49112681450</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>s_pid_ki</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a86fa59c49ad7943c2e5805a2daf81f32</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>s_pid_kd</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>af16243d65a7ffe1fcdbd4c26ddd612d3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>s_pid_kd_filter</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a6ca1ba46965c15526f525f4f4f6522fa</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>s_pid_min_erpm</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>aac7477b3659c5f98a7315ab306a03012</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>s_pid_allow_braking</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a9fa498d95cd94cdaf5dc602fe6f24779</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>p_pid_kp</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a612888b5990cf9d03a90f8b84af27bd8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>p_pid_ki</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a6cdc3daeb1ede26480459217bfb8c49c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>p_pid_kd</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a15f5bb69ae5af8badddc87189c862f93</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>p_pid_kd_filter</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a19ab7ffc471a1ae4c3981862e9c80960</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>p_pid_ang_div</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a4420603d39bc25d328b314960df21b90</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>cc_startup_boost_duty</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a67ee174f73c09c6055ee9afaacfd5024</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>cc_min_current</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a183f020d14727e77dd32fd20324fd1ad</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>cc_gain</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a9753a94f4b904923130b31ac1820ce5c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>cc_ramp_step_max</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>ac274e159f140e5ac9b332d69d4fbae58</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int32_t</type>
      <name>m_fault_stop_time_ms</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a50154b07f134f7ee4d30ffe7e79e2ffb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>m_duty_ramp_step</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a22183a341e8c2cdda7ff69b9d12ada24</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>m_current_backoff_gain</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a1de1330e557216b7ec22b5e49241d749</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>m_encoder_counts</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a10b8a18ad158fe1e1ffe58c86cd48151</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>m_sensor_port_mode</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>ade78c7c232385d6cb62001ad260c57dc</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>m_invert_direction</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>ac95753ef001b9c92d4fd2955294561b8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>m_drv8301_oc_mode</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a90c155f74c86ec5ade4b2d71ba75f923</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>m_drv8301_oc_adj</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a1c23497a0666b5cecee44df25d41f376</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>m_bldc_f_sw_min</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>ad409346971d75c632718685ac9e07a9f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>m_bldc_f_sw_max</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>aaf7ef758b531e98edc578c8e009becd7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>m_dc_f_sw</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a6c8423f334559b35f383e8f79103ece0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>m_ntc_motor_beta</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>af88faa428e52eeaab869203f465fea80</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>m_out_aux_mode</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>aa3c702c16591a4bb8155b322af5a256c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>si_motor_poles</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>aba213e870d4e68311144526629c8a44e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>si_gear_ratio</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>adf0508b8da298fc13021234623d4eae5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>si_wheel_diameter</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a3be2aa1dc3297243b7556a93dadad3e6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>si_battery_type</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>a4477d5b6c049dc3412abeda8edc3e92d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>si_battery_cells</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>aea833a3db9be79bc6aab51803c62e6ee</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>si_battery_ah</name>
      <anchorfile>d5/d42/structmc__configuration.html</anchorfile>
      <anchor>aae814a93e56afca8e1676af20e46892a</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Vesc</name>
    <filename>df/d2c/class_vesc.html</filename>
    <member kind="function">
      <type></type>
      <name>Vesc</name>
      <anchorfile>df/d2c/class_vesc.html</anchorfile>
      <anchor>ab277c23fface21d168170a1131ac3a14</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>init</name>
      <anchorfile>df/d2c/class_vesc.html</anchorfile>
      <anchor>a879c8f2cfbeb3d4115954a98b60337d3</anchor>
      <arglist>(HardwareSerial *uartPort, HardwareSerial *debugPort)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setDuty</name>
      <anchorfile>df/d2c/class_vesc.html</anchorfile>
      <anchor>acdd6b813191cda688e390207bd76f456</anchor>
      <arglist>(float duty)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setCurrent</name>
      <anchorfile>df/d2c/class_vesc.html</anchorfile>
      <anchor>afcbbb22344a7cd93b785e0c47f29c2ee</anchor>
      <arglist>(float current)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setBrakeCurrent</name>
      <anchorfile>df/d2c/class_vesc.html</anchorfile>
      <anchor>a8f9796e9a4540ff5c365c655915a24ce</anchor>
      <arglist>(float current)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setRPM</name>
      <anchorfile>df/d2c/class_vesc.html</anchorfile>
      <anchor>a4ffca38b3ff984fa3c9f2a0e90e33959</anchor>
      <arglist>(int32_t rpm)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setPosition</name>
      <anchorfile>df/d2c/class_vesc.html</anchorfile>
      <anchor>a2c7eaa693378f3a23c57006552d37380</anchor>
      <arglist>(float position)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setHandbrake</name>
      <anchorfile>df/d2c/class_vesc.html</anchorfile>
      <anchor>a5f2991e3b31de5174bc671bfa07d4aac</anchor>
      <arglist>(float current)</arglist>
    </member>
    <member kind="function">
      <type>vesc_version</type>
      <name>getFirmwareVersion</name>
      <anchorfile>df/d2c/class_vesc.html</anchorfile>
      <anchor>ae7491c9b168bfd3c5a87b29575ff40ca</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>vesc_values</type>
      <name>getRealtimeValues</name>
      <anchorfile>df/d2c/class_vesc.html</anchorfile>
      <anchor>a74d51530465292956415ef48053e5898</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>mc_configuration</type>
      <name>getMotorConfiguration</name>
      <anchorfile>df/d2c/class_vesc.html</anchorfile>
      <anchor>ab437b5d1aefdc59d055e329aeb200f2f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>getFetTemperature</name>
      <anchorfile>df/d2c/class_vesc.html</anchorfile>
      <anchor>a068cdc40c7d33ed6179f25e4a3294450</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>getMotorTemperature</name>
      <anchorfile>df/d2c/class_vesc.html</anchorfile>
      <anchor>a0774742d7853f5cf35e3c664ddf2e9ef</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>getAvgMotorCurrent</name>
      <anchorfile>df/d2c/class_vesc.html</anchorfile>
      <anchor>a38f12f85ed6abf607ac6d224db6d99ae</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>getAvgInputCurrent</name>
      <anchorfile>df/d2c/class_vesc.html</anchorfile>
      <anchor>a94169a7d401d6c6d47895bd58ce4e81d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>getResetAvgId</name>
      <anchorfile>df/d2c/class_vesc.html</anchorfile>
      <anchor>aa6ab98530ac06f7bb422a479a2b38cc9</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>getResetAvgIq</name>
      <anchorfile>df/d2c/class_vesc.html</anchorfile>
      <anchor>a400357ea19ce2586cd748eedfbb613ad</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>getDutyCycleNow</name>
      <anchorfile>df/d2c/class_vesc.html</anchorfile>
      <anchor>a77b04d23c950b9f2640bfc2f3b599cd0</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>getRPM</name>
      <anchorfile>df/d2c/class_vesc.html</anchorfile>
      <anchor>a1e6b4fdf1f8492785151d4b91860755a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>getInputVoltage</name>
      <anchorfile>df/d2c/class_vesc.html</anchorfile>
      <anchor>a3551e4df3b51f05d5301dda976af7aa5</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>getAmpHours</name>
      <anchorfile>df/d2c/class_vesc.html</anchorfile>
      <anchor>aaa1c5ec5b238e8c1a762b22c672f81ef</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>getaAmpHoursCharged</name>
      <anchorfile>df/d2c/class_vesc.html</anchorfile>
      <anchor>a067908aaec00f292531fa5a9ea43e1e3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>getWattHours</name>
      <anchorfile>df/d2c/class_vesc.html</anchorfile>
      <anchor>a2973fc9d57d5e89edb46bfc9f3763056</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>getWattHoursCharged</name>
      <anchorfile>df/d2c/class_vesc.html</anchorfile>
      <anchor>a649e443eb42b2b0ec02cb86015af8414</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>int32_t</type>
      <name>getTachometerValue</name>
      <anchorfile>df/d2c/class_vesc.html</anchorfile>
      <anchor>ab13643caefd7eb374dbd40a02b0b90e9</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>int32_t</type>
      <name>getTachometerAbsValue</name>
      <anchorfile>df/d2c/class_vesc.html</anchorfile>
      <anchor>a199a6bbe5b082b58d2f4ccdc6d37837a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>uint8_t</type>
      <name>getFault</name>
      <anchorfile>df/d2c/class_vesc.html</anchorfile>
      <anchor>a82628d0203a0b0b7b81c8ff22351301e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>getPidPosNow</name>
      <anchorfile>df/d2c/class_vesc.html</anchorfile>
      <anchor>a46e004731eb7d63e86b688e4b3da192a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>uint8_t</type>
      <name>getControllerId</name>
      <anchorfile>df/d2c/class_vesc.html</anchorfile>
      <anchor>a9d1c440a4e4819298d2829c672d10aa3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>float *</type>
      <name>getMosfetsTemperature</name>
      <anchorfile>df/d2c/class_vesc.html</anchorfile>
      <anchor>a3c2b2de90559238fd1e2776a20b70b6b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>getResetAvgVd</name>
      <anchorfile>df/d2c/class_vesc.html</anchorfile>
      <anchor>a56ef8a33ab1679fd59f563f4f1c8613e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>getResetAvgVq</name>
      <anchorfile>df/d2c/class_vesc.html</anchorfile>
      <anchor>a88b9597c47c34dd3a57b8813c45e6d0e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="private">
      <type>void</type>
      <name>sendPacket</name>
      <anchorfile>df/d2c/class_vesc.html</anchorfile>
      <anchor>a4e60ba04770969dffa8a0da6489a419c</anchor>
      <arglist>(unsigned char *data, unsigned int len)</arglist>
    </member>
    <member kind="function" protection="private">
      <type>bool</type>
      <name>receivePacket</name>
      <anchorfile>df/d2c/class_vesc.html</anchorfile>
      <anchor>a98d85b9f87cda7969692673e09b632f6</anchor>
      <arglist>(unsigned char *data)</arglist>
    </member>
    <member kind="function" protection="private">
      <type>bool</type>
      <name>getRealtimeValuesSelective</name>
      <anchorfile>df/d2c/class_vesc.html</anchorfile>
      <anchor>a55aaa76019035a9edb919f0479c9ebf3</anchor>
      <arglist>(unsigned char *data, unsigned int index)</arglist>
    </member>
    <member kind="variable" protection="private">
      <type>HardwareSerial *</type>
      <name>uartPort</name>
      <anchorfile>df/d2c/class_vesc.html</anchorfile>
      <anchor>ac954fd6c04bc43c1d07a3d2db99c1c2b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="private">
      <type>HardwareSerial *</type>
      <name>debugPort</name>
      <anchorfile>df/d2c/class_vesc.html</anchorfile>
      <anchor>a685c958458a69e3840101beb2ec4bbf9</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>vesc_values</name>
    <filename>d3/d26/structvesc__values.html</filename>
    <member kind="variable">
      <type>float</type>
      <name>fet_temp</name>
      <anchorfile>d3/d26/structvesc__values.html</anchorfile>
      <anchor>a6ff66404af359cb45de53e417c10e868</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>motor_temp</name>
      <anchorfile>d3/d26/structvesc__values.html</anchorfile>
      <anchor>ae97c3d6827d1f778d510b40111b8e4b4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>avg_motor_current</name>
      <anchorfile>d3/d26/structvesc__values.html</anchorfile>
      <anchor>af60ebe518fbd0c3e6dbefe87c9337dc5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>avg_input_current</name>
      <anchorfile>d3/d26/structvesc__values.html</anchorfile>
      <anchor>aaded7cc4ea7027732d9c8de073ccb84c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>reset_avg_id</name>
      <anchorfile>d3/d26/structvesc__values.html</anchorfile>
      <anchor>a38177c1d2f0b46e9ba42214eb212ffc6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>reset_avg_iq</name>
      <anchorfile>d3/d26/structvesc__values.html</anchorfile>
      <anchor>a08ea29982e20c8b6017ff54ac21942f2</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>duty_cycle_now</name>
      <anchorfile>d3/d26/structvesc__values.html</anchorfile>
      <anchor>abb6d9bd74c4d2da163e6270662d35739</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>rpm</name>
      <anchorfile>d3/d26/structvesc__values.html</anchorfile>
      <anchor>ab357ca31a87f11cf66be1d6785787d11</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>input_voltage</name>
      <anchorfile>d3/d26/structvesc__values.html</anchorfile>
      <anchor>ab177088e7c861d11e3135917bc4a0a4d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>amp_hours</name>
      <anchorfile>d3/d26/structvesc__values.html</anchorfile>
      <anchor>a018dbbbbc801415a1cf0de30bf73b7e2</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>amp_hours_charged</name>
      <anchorfile>d3/d26/structvesc__values.html</anchorfile>
      <anchor>a2ffc518b7ae29cf05546a987acaf0e7f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>watt_hours</name>
      <anchorfile>d3/d26/structvesc__values.html</anchorfile>
      <anchor>a80f9854b4ec967d44fb77bc6ac6551e3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>watt_hours_charged</name>
      <anchorfile>d3/d26/structvesc__values.html</anchorfile>
      <anchor>a46ea849ec475a06e5af350e1193c82d3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int32_t</type>
      <name>tachometer_value</name>
      <anchorfile>d3/d26/structvesc__values.html</anchorfile>
      <anchor>a35019d89b87457d279bb2746ea2dcd42</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int32_t</type>
      <name>tachometer_abs_value</name>
      <anchorfile>d3/d26/structvesc__values.html</anchorfile>
      <anchor>a9588d16935456bf9cf0eaa7d3c09c76f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>fault</name>
      <anchorfile>d3/d26/structvesc__values.html</anchorfile>
      <anchor>a145a01bb8af08fc8066fe65cae6d7c38</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>pid_pos_now</name>
      <anchorfile>d3/d26/structvesc__values.html</anchorfile>
      <anchor>a6c34fdb6c6b6ab40d4c3549cd9877619</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>controller_id</name>
      <anchorfile>d3/d26/structvesc__values.html</anchorfile>
      <anchor>a2f4323baba74eccf7deb144038820580</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>mos1_temp</name>
      <anchorfile>d3/d26/structvesc__values.html</anchorfile>
      <anchor>ab13c944517028859b629f9453e16c83d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>mos2_temp</name>
      <anchorfile>d3/d26/structvesc__values.html</anchorfile>
      <anchor>ae07453e2aad4faa7a377cad71b66abe4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>mos3_temp</name>
      <anchorfile>d3/d26/structvesc__values.html</anchorfile>
      <anchor>a266b6ff9dc120a3f7bf02146133c6e90</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>reset_avg_vd</name>
      <anchorfile>d3/d26/structvesc__values.html</anchorfile>
      <anchor>acb8bc69fd7e488e06173e3f9709107c4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>reset_avg_vq</name>
      <anchorfile>d3/d26/structvesc__values.html</anchorfile>
      <anchor>ad0b82a6c4ea3168fe1f7409f7d3937e1</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>vesc_version</name>
    <filename>d7/d14/structvesc__version.html</filename>
    <member kind="variable">
      <type>uint8_t</type>
      <name>major</name>
      <anchorfile>d7/d14/structvesc__version.html</anchorfile>
      <anchor>a8dea6228b99ec2d12e528c8f574872a6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>minor</name>
      <anchorfile>d7/d14/structvesc__version.html</anchorfile>
      <anchor>ac63753d13cebfea18db11e0fdc55fa2b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>char</type>
      <name>hw_name</name>
      <anchorfile>d7/d14/structvesc__version.html</anchorfile>
      <anchor>a410ad3ed48fb82dedf16a3f60e399a5a</anchor>
      <arglist>[20]</arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>stm32_uid</name>
      <anchorfile>d7/d14/structvesc__version.html</anchorfile>
      <anchor>a2a2fc0b80753504d71bece49eed2d757</anchor>
      <arglist>[12]</arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>pairing_done</name>
      <anchorfile>d7/d14/structvesc__version.html</anchorfile>
      <anchor>ac2d2a43cd1ebedcdda274c6c6826565d</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>VescPacket</name>
    <filename>d3/d4e/class_vesc_packet.html</filename>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>receive_packet</name>
      <anchorfile>d3/d4e/class_vesc_packet.html</anchorfile>
      <anchor>a26d57f62845fa926f96f8c867be22195</anchor>
      <arglist>(HardwareSerial *port, unsigned char *data)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>send_packet</name>
      <anchorfile>d3/d4e/class_vesc_packet.html</anchorfile>
      <anchor>a900479b519d26e65c0395e7947591941</anchor>
      <arglist>(HardwareSerial *port, unsigned char *data, unsigned int len)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static unsigned short</type>
      <name>crc16</name>
      <anchorfile>d3/d4e/class_vesc_packet.html</anchorfile>
      <anchor>a01bf74899031b63261c5ff50486285ef</anchor>
      <arglist>(unsigned char *buf, unsigned int len)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>VescUtility</name>
    <filename>d9/d0e/class_vesc_utility.html</filename>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>utility_append_int16</name>
      <anchorfile>d9/d0e/class_vesc_utility.html</anchorfile>
      <anchor>a1175803064a1f58f9d9cac4693d34962</anchor>
      <arglist>(uint8_t *buffer, int16_t number, int32_t *index)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>utility_append_uint16</name>
      <anchorfile>d9/d0e/class_vesc_utility.html</anchorfile>
      <anchor>ac61a2a48acfb2298ed3155f103f1010a</anchor>
      <arglist>(uint8_t *buffer, uint16_t number, int32_t *index)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>utility_append_int32</name>
      <anchorfile>d9/d0e/class_vesc_utility.html</anchorfile>
      <anchor>a0d3bcbe093c1d948d35d23b6628ac86f</anchor>
      <arglist>(uint8_t *buffer, int32_t number, int32_t *index)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>utility_append_uint32</name>
      <anchorfile>d9/d0e/class_vesc_utility.html</anchorfile>
      <anchor>a6ad90a431656c17e57cf7d4763a728f9</anchor>
      <arglist>(uint8_t *buffer, uint32_t number, int32_t *index)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>utility_append_float16</name>
      <anchorfile>d9/d0e/class_vesc_utility.html</anchorfile>
      <anchor>a5c1e1b04c7439570f85e1bcbbdb1d047</anchor>
      <arglist>(uint8_t *buffer, float number, float scale, int32_t *index)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>utility_append_float32</name>
      <anchorfile>d9/d0e/class_vesc_utility.html</anchorfile>
      <anchor>a41e301bb846f666a2c8334d03a070545</anchor>
      <arglist>(uint8_t *buffer, float number, float scale, int32_t *index)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>utility_append_float32_auto</name>
      <anchorfile>d9/d0e/class_vesc_utility.html</anchorfile>
      <anchor>a05425720fcd63d6164fb32ef092b1c7d</anchor>
      <arglist>(uint8_t *buffer, float number, int32_t *index)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int16_t</type>
      <name>utility_get_int16</name>
      <anchorfile>d9/d0e/class_vesc_utility.html</anchorfile>
      <anchor>af8e79b9b4c79a6131e97f04c23c45a18</anchor>
      <arglist>(const uint8_t *buffer, int32_t *index)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static uint16_t</type>
      <name>utility_get_uint16</name>
      <anchorfile>d9/d0e/class_vesc_utility.html</anchorfile>
      <anchor>a5c7c8e1cb4714ff93667e9b8269bdc44</anchor>
      <arglist>(const uint8_t *buffer, int32_t *index)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int32_t</type>
      <name>utility_get_int32</name>
      <anchorfile>d9/d0e/class_vesc_utility.html</anchorfile>
      <anchor>a2c33c78ba3496f6b15b73e003b710669</anchor>
      <arglist>(const uint8_t *buffer, int32_t *index)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static uint32_t</type>
      <name>utility_get_uint32</name>
      <anchorfile>d9/d0e/class_vesc_utility.html</anchorfile>
      <anchor>a97b9578d4c593d174cb290ee734cd097</anchor>
      <arglist>(const uint8_t *buffer, int32_t *index)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static float</type>
      <name>utility_get_float16</name>
      <anchorfile>d9/d0e/class_vesc_utility.html</anchorfile>
      <anchor>a38e278a6f5dcb38e46c188219a371452</anchor>
      <arglist>(const uint8_t *buffer, float scale, int32_t *index)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static float</type>
      <name>utility_get_float32</name>
      <anchorfile>d9/d0e/class_vesc_utility.html</anchorfile>
      <anchor>a400ab904a66873df587ea9a62d514ffa</anchor>
      <arglist>(const uint8_t *buffer, float scale, int32_t *index)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static float</type>
      <name>utility_get_float32_auto</name>
      <anchorfile>d9/d0e/class_vesc_utility.html</anchorfile>
      <anchor>a162c204b7aba5dd0d68d3cb61650e656</anchor>
      <arglist>(const uint8_t *buffer, int32_t *index)</arglist>
    </member>
  </compound>
  <compound kind="page">
    <name>md_README</name>
    <title>arduino_vesc</title>
    <filename>d3/dcc/md__r_e_a_d_m_e</filename>
    <docanchor file="d3/dcc/md__r_e_a_d_m_e" title="Usage">autotoc_md1</docanchor>
    <docanchor file="d3/dcc/md__r_e_a_d_m_e" title="package structure">autotoc_md2</docanchor>
  </compound>
</tagfile>
