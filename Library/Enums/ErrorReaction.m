classdef ErrorReaction < Simulink.IntEnumType
    enumeration
        QUITIMMEDIATELY(1)
        FINISHCURRENTREACTION(2)
        MOVETOPREVIOUSSTATE(3)
        NOERROR(4)
    end
end