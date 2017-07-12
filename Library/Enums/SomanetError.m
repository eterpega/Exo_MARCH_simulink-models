classdef SomanetError < Simulink.IntEnumType
    enumeration
        NOERRORSOMANET(72) % Somanet is added here to avoid conflict
        DISCONNECTSOMANET(0) 
        GENERICERRORSOMANET(666)
        HARDSTOPREACHED(1001)
        PHASEOVERCURRENT(1002)
        NONRESPONSIVE(1003)
        OVERHEAT(1004)
    end    
end