classdef JointCommand < Simulink.IntEnumType
    enumeration
        POSITIONCONTROL(1)
        VELOCITYCONTROL(2)
        TORQUECONTROL(3)
        DEACTIVATEMOTOR(4)
        RESOLVEERROR(5)
        SYNCCONFIGS(6)
        TUNECOMMUTATIONOFFSET(7)
    end    
end