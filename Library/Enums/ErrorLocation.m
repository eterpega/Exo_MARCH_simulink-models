classdef ErrorLocation < Simulink.IntEnumType
    enumeration
        UNKNOWN(72)
        LHFE(1)
        LKFE(2)
        RHFE(3)
        RKFE(4)
        PDB(5)
        INPUTDEVICE(6)
        MASTER(7)
        BACKPACK(8)
        MORE_THAN_ONE_JOINT(9)
        MORE_THAN_ONE_DEVICE(10)
    end    
end