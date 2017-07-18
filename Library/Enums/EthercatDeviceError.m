classdef EthercatDeviceError < Simulink.IntEnumType
    enumeration
        NOERROR(72)
        DISCONNECT(0)
        GENERICERROR(666)
    end    
end