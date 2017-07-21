classdef ExoskeletonState < Simulink.IntEnumType    
    enumeration
        FULLMANUAL(1337)
        HOLDSIT(1)
        MANUAL(2)
        STANDINGUP(3)
        HOLDSTAND(4)
        SITTINGDOWN(5)
        CONTINUOUSGAIT(6)
        STOPCONTINOUSGAIT(7)
        STAIRS(8)
        SLOPE(9)
        STONES(10)
        SEVERE_ERROR(666)
    end 
end