classdef SomanetOpmode < Simulink.IntEnumType  
    enumeration % these correspond with the actual numbers, enum can be directly converted
        NO_OPMODE(0)
        CSPOSITION(8)
        CSVELOCITY(9)
        CSTORQUE(10)
        TUNING(128)
        UNKNOWN_OPMODE(666)
    end    
end