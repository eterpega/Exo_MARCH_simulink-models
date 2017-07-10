classdef ErrorReaction < Simulink.IntEnumType
    enumeration
        QUITIMMEDIATELY(1)
        FINISHCURRENTREACTION(2)
        MOVETOPREVIOUSSTATE(3)
        NOREACTION(4)
    end
end