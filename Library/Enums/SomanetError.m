classdef SomanetError < Simulink.IntEnumType
    enumeration
        NOERROR(72)
        DISCONNECT(0)
        HARDSTOPREACHED(1001)
        PHASEOVERCURRENT(1002)
        NONRESPONSIVE(1003)
        GENERICERROR(666)
    end    
end