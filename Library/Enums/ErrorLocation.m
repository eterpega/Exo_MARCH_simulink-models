classdef ErrorLocation < Simulink.IntEnumType
    enumeration
        LOCATION_UNKNOWN(72)
        LOCATION_LHFE(1)
        LOCATION_LKFE(2)
        LOCATION_RHFE(3)
        LOCATION_RKFE(4)
        LOCATION_PDB(5)
        LOCATION_INPUTDEVICE(6)
        LOCATION_MASTER(7)
        LOCATION_BACKPACK(8)
        LOCATION_MORE_THAN_ONE_JOINT(9)
        LOCATION_MORE_THAN_ONE_DEVICE(10)
    end    
end