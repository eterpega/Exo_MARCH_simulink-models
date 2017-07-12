classdef StepType < Simulink.IntEnumType
    enumeration
        FULLSTEP(1)
        HALFSTEP(2)
        STAIRSTEP(3)
        NOSTEP(4)
    end 
end