classdef StepType < Simulink.IntEnumType
    enumeration
        % the values of this enum are also used as indices, so don't change
        % them!
        FULLSTEP(1)
        HALFSTEPSTART(2)
        HALFSTEPSTOP(3)
        STAIRSUPSTEP(4)
        STANDUP(5)
        SITDOWN(6)
        HOMESTAND(7)
        HOMESIT(8)
        NOSTEP(9)
        STAIRSDOWNSTEP(10)
        INITIALIZESTANDUP(11)
        WAITSTANDUP(12)
        INITIALIZESITDOWN(13)
        WAITSITDOWN(14)
    end 
end