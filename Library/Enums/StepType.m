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
        INITIALIZESTAIRSUP(15)
        WAITSTAIRSUP(16)
        INITIALIZESTAIRSDOWN(17)
        WAITSTAIRSDOWN(18)
        SLOPEUPSTEP(19)
        SLOPEDOWNSTEP(20)
        INITIALIZESLOPEUP(21)
        WAITSLOPEUP(22)
        INITIALIZESLOPEDOWN(23)
        WAITSLOPEDOWN(24)
    end 
end