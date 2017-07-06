classdef JointCommand < Simulink.IntEnumType
    enumeration
        POSITIONCONTROL(1)
        VELOCITYCONTROL(2)
        TORQUECONTROL(3)
        DEACTIVATEMOTOR(4)
        FREEZEMOTOR(5)
        RESOLVEERROR(6)
    end    
end