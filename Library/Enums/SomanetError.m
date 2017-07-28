classdef SomanetError < Simulink.IntEnumType
    enumeration
        NOERROR_SOMANET(72) % Somanet is added here to avoid conflict
        GENERICERROR_SOMANET(666) % error that can't be further specified
        SOMANET_NONRESPONSIVE(6666) % as of yet undetectable error
        SOMANET_UNKNOWN_ERROR(666666) % error that should never happen
        % 10XX will contain errors detected on master
        PHASE_OVERCURRENT_MASTER_DETECT(1001) % to differentiate between this and that of somanet
        PHASE_I2T_ERROR(1002)
        SOMANET_OVERHEAT(1003)
        SOMANET_DISCONNECTED(1004) 
%         SOFTWARE_HARDSTOP_REACHED_MASTER_DETECT(1005) this was moved to
%         the SafetyModule, so detected higher up
        MAX_TORQUE_REACHED(1006)
        SOMANET_NEAR_I2T_ERROR(1012)
        SOMANET_NEAR_OVERHEAT(1013)
        
        % 20XX will contain errors detected on SOMANET
        PHASE_OVERCURRENT(2001) % as this is most common
        SOFTWARE_SOFTSTOP_REACHED(2002)
        SOFTWARE_HARDSTOP_REACHED(2003)
        TARGET_POSITION_OUT_OF_BOUNDS(2004)
        SOMANET_SENSOR_ERROR(2005)
        % 201x are unlikely errors, implemented for completeness
        SOMANET_UNDERVOLTAGE(2010)
        SOMANET_OVERVOLTAGE(2011)
        SOMANET_DETECT_OVERHEAT(2012)
        SOMANET_DETECT_MOTORBLOCKED(2013)
        SOMANET_DETECT_GENERICERROR(2014)
    end    
end