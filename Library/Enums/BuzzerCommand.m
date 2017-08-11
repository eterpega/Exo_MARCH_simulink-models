classdef BuzzerCommand < Simulink.IntEnumType    
    enumeration
        NOTHING(0)
        STOPTIMER(66)
        ONEBEEP(1)
        COUNTDOWN(5)
    end 
end