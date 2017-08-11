classdef BuzzerCommand < Simulink.IntEnumType    
    enumeration
        NOTHING(0)
        STOPTIMER(66)
        ONEBEEP(77)
        COUNTDOWN(5)
    end 
end