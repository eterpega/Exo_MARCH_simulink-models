classdef SomanetSyncMode < Simulink.IntEnumType
    enumeration
        SYNCALL(1)
        SYNCPID(2)
        SYNCENDSTOP(3)
        SYNCNONE(4)
    end
end