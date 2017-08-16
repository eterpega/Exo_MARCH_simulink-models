classdef ErrorMessage < Simulink.IntEnumType
    enumeration
        NO_ERROR(72)
        DEVICE_DISCONNECTED_ERROR(1004)
        HEAT_WARNING(1) %I2t + temp
        HEAT_ERROR(2)
        HARDSTOP_ERROR(3) %master + SOMANET
        HIGH_LOAD_ERROR(4) %phasecurrent & max torque
        POWER_ERROR(5) %under/over voltage/current
        CONTROL_ERROR(6) %pos difference error
        TEMPS1_DISCONNCETED(7)
        TEMPS2_DISCONNCETED(8)
        IMU_DISCONNECTED(9)
        HIP_BUTTON_DISCONNECTED(10)
        NO_AKSIM_AT_BOOT(11)
        SOMANET_SENSOR(12)
        PDB_TEMP_SENSOR_DISCONNECTED(13)
        PDB_CURRENT_ERROR(14)
        PDB_VOLTAGE_ERROR(15)
        PDB_TEMPERATURE_ERROR(16)
        GENERIC_JOINT_ERROR(666) % SOMANET stuff
        GENERIC_DEVICE_ERROR(777) % non SOMANET stuff
        UNKNOWN_ERROR(666666)
    end
    
end

