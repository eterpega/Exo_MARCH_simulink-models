classdef StepType < Simulink.IntEnumType
    enumeration
        % the values of this enum are also used as indices, so don't change
        % them!
        FULLSTEP(1)
        HALFSTEPSTART(2)
        HALFSTEPSTOP(3)
        STAIRSUPSTEP(4)
        
        %% Sit gaits
        INITIALIZESTANDUP(11)
        WAITSTANDUP(12)
        STANDUP(5)
        INITIALIZESITDOWN(13)
        WAITSITDOWN(14)
        SITDOWN(6)
        HOMESIT(8)
        
        %% Sofa gaits
        INITIALIZESOFAUP(25)
        WAITSOFAUP(26)
        SOFAUPSTEP(27)
        INITIALIZESOFADOWN(28)
        WAITSOFADOWN(29)
        SOFADOWNSTEP(30)
        HOMESOFA(31) 
        
        HOMESTAND(7)
        NOSTEP(9)
        STAIRSDOWNSTEP(10)
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
        ROUGHTERRAINRIGHTSTEP(32)
        ROUGHTERRAINLEFTSTEP(33)
    end 
end