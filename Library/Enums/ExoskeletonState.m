classdef ExoskeletonState < Simulink.IntEnumType    
    enumeration
        FULLMANUAL(1337)
        MANUAL(2)
        %% Normal sitting gaits
        HOLDSIT(1)
        SITTINGDOWN(5)
        STANDINGUP(3)
        %% Sofa sitting gaits
        HOLDSOFA(12)
        SOFADOWN(13)
        SOFAUP(14)
        
        HOLDSTAND(4)
        CONTINUOUSGAIT(6)
        STONES(9)
        
        STAIRSUP(7)
        STAIRSDOWN(10)
        
        SLOPEUP(8)
        SLOPEDOWN(11)
        
        ROUGHTERRAIN(15)
        SINGLE_STEP(16)
        SHUTTING_DOWN(9001)
        SEVERE_ERROR(666)
        UNREACHABLE(999)
    end 
end