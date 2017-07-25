classdef StepType < Simulink.IntEnumType
    enumeration
        % the values of this enum are also used as indices, so don't change
        % them!
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