classdef BuzzerCommand < Simulink.IntEnumType    
    enumeration
        NOTHING(0)
        STOPTIMER(66)
        ONEBEEP(77)
        ERROR(99)
    end 
end