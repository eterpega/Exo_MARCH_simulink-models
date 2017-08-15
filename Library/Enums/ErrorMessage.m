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
        GENERIC_JOINT_ERROR(666) % SOMANET stuff
        GENERIC_DEVICE_ERROR(777) % non SOMANET stuff
        UNKNOWN_ERROR(666666)
    end
    
end

