classdef SomanetState < Simulink.IntEnumType    
    enumeration
        NOT_READY_TO_SWITCH_ON(1)
        SWITCH_ON_DISABLED(2)
        READY_TO_SWITCH_ON(3)
        SWITCHED_ON(4)
        QUICK_STOP_ACTIVE(6)
        FAULT_REACTION_ACTIVE(661)
        OPERATION_ENABLED(72)
        FAULT(666)
        UNKNOWN_STATUSWORD(666666)
    end
end