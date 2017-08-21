classdef SomanetControlWord < Simulink.IntEnumType  
    enumeration % these correspond with the actual numbers, enum can be directly converted
        DISABLE_SWITCH_ON(4)
        SHUTDOWN(6)
        SWITCH_ON(7)
        QUICK_STOP(2)
        FAULT_RESET(128)
    end
end