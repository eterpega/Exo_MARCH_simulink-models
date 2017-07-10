classdef ExoskeletonState < Simulink.IntEnumType    
    enumeration
        FULLMANUAL(1337)
        HOLDSIT(1)
        MANUAL(2)
        STANDINGUP(3)
        HOLDSTAND(4)
        SITTINGDOWN(5)
        CONTINUOUSGAIT(6)
        STAIRS(7)
        SLOPE(8)
        STONES(9)
        SEVERE_ERROR(666)
    end 
end