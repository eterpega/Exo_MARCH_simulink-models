classdef ExoskeletonError< Simulink.IntEnumType
    enumeration
        EXOSKELETON_NO_ERROR(72)
        EXOSKELETON_JOINT_NEAR_OVERHEAT(601)
        EXOSKELETON_JOINT_OVERHEAT(661)
        EXOSKELETON_UNSTABLE_CONTROL(662)
        EXOSKELETON_HARDSTOP_REACHED(663)
    end
end

