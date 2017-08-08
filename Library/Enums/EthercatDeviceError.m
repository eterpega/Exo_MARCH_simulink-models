classdef EthercatDeviceError < Simulink.IntEnumType
    enumeration
        NOERROR(72)
        DISCONNECT(1004)
        GENERICERROR(666)
    end    
end