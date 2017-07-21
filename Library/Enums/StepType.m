classdef StepType < Simulink.IntEnumType
    enumeration
        FULLSTEP(1)
        HALFSTEPSTART(2)
        HALFSTEPSTOP(3)
        STAIRSTEP(4)
        NOSTEP(5)
    end 
end