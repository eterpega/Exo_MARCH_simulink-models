classdef StepType < Simulink.IntEnumType
    enumeration
        FULLSTEP(1)
        HALFSTEPSTART(2)
        HALFSTEPSTOP(3)
        STAIRSTEP(4)
        STANDUP(5)
        SITDOWN(6)
        HOMESTAND(7)
        HOMESIT(8)
        NOSTEP(9)
    end 
end