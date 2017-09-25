function [ errorReaction, resetJointErrors ] = getErrorReactionFromErrors( detectedError, deviceErrors )
%GETERRORREACTIONFROMERRORS Determines the desired error reaction from
% given errors
switch(detectedError)
    case ExoskeletonError.EXOSKELETON_JOINT_NEAR_OVERHEAT
        errorReaction = ErrorReaction.FINISHCURRENTREACTION;
        resetJointErrors = 0;
    case ExoskeletonError.EXOSKELETON_JOINT_OVERHEAT
        errorReaction = ErrorReaction.QUITIMMEDIATELY;
        resetJointErrors = 0;
    case ExoskeletonError.EXOSKELETON_UNSTABLE_CONTROL 
        % indicates too high position error. We presume the originating
        % state did work, so move back to it
        errorReaction = ErrorReaction.MOVETOPREVIOUSSTATE;
        resetJointErrors = 0;
    case ExoskeletonError.EXOSKELETON_HARDSTOP_REACHED
        % at softstop we have already tried to hold position, but
        % this failed since we reached hardstop. Therefore, give up
        % and quit everything
        errorReaction = ErrorReaction.QUITIMMEDIATELY; 
        resetJointErrors = 0;
    otherwise
        % no error detected, check device errors
        % somanet errors have highest priority
        somanetErrors = deviceErrors.errorSOMANETs;
        if any(somanetErrors ~= SomanetError.NOERROR_SOMANET)
            if any((somanetErrors == SomanetError.GENERICERROR_SOMANET) | ...
                (somanetErrors == SomanetError.SOMANET_NONRESPONSIVE) | ...
                (somanetErrors == SomanetError.SOMANET_UNKNOWN_ERROR))
                % this indicates a programming error, so quit immediately
                errorReaction = ErrorReaction.QUITIMMEDIATELY;
                resetJointErrors = 0;
            elseif any(somanetErrors == SomanetError.SOMANET_NO_AKSIM_AT_BOOT)
                % this somanet won't function until it's been restarted, so
                % quitimmediately
                errorReaction = ErrorReaction.QUITIMMEDIATELY;
                resetJointErrors = 0;
            elseif any(somanetErrors == SomanetError.SOFTWARE_HARDSTOP_REACHED)
                % at softstop we have already tried to hold position, but
                % this failed since we reached hardstop. Therefore, give up
                % and quit everything
                errorReaction = ErrorReaction.QUITIMMEDIATELY; 
                resetJointErrors = 0;
            elseif any(somanetErrors == SomanetError.SOMANET_DISCONNECTED)
                % we have a lot less control over the exoskeleton and
                % cannot predict behaviour. therefore we quit
                errorReaction = ErrorReaction.QUITIMMEDIATELY; 
                resetJointErrors = 0;
            elseif any((somanetErrors == SomanetError.SOMANET_OVERHEAT) | ...
                    (somanetErrors == SomanetError.PHASE_I2T_ERROR))
                % this indicates large possibility of blowing up
                % somanet/motor, so quit immediately
                errorReaction = ErrorReaction.QUITIMMEDIATELY;
                resetJointErrors = 0;
            elseif any(somanetErrors == SomanetError.MAX_TORQUE_REACHED)
                % indicates mechanical failure or erratic control
                errorReaction = ErrorReaction.MOVETOPREVIOUSSTATE;
                resetJointErrors = 0;
            elseif any((somanetErrors == SomanetError.PHASE_OVERCURRENT_MASTER_DETECT) | ...
                    (somanetErrors == SomanetError.SOMANET_NEAR_I2T_ERROR) | ...
                    (somanetErrors == SomanetError.SOMANET_NEAR_OVERHEAT))                    
                % medium error, finish reaction then evaluate
                errorReaction = ErrorReaction.FINISHCURRENTREACTION;
                resetJointErrors = 0;
            elseif any((somanetErrors == SomanetError.PHASE_OVERCURRENT) | ...
                    (somanetErrors == SomanetError.TARGET_POSITION_OUT_OF_BOUNDS) | ...
                    (somanetErrors == SomanetError.SOMANET_SENSOR_ERROR) |...
                    (somanetErrors == SomanetError.SOMANET_OVERVOLTAGE))
                % medium error, somanet in fault state. finish reaction and
                % reset error
                errorReaction = ErrorReaction.FINISHCURRENTREACTION;
                resetJointErrors = 1;
            elseif any(somanetErrors == SomanetError.SOFTWARE_SOFTSTOP_REACHED)
                % disregard. should not happen but testers will notice
                errorReaction = ErrorReaction.NOREACTION;
                resetJointErrors = 0;
            else
                % we ran into another obscure error, we did not see coming
                % this could be a programming error or something worse,
                % therefore quit immediately                       
                errorReaction = ErrorReaction.QUITIMMEDIATELY; 
                resetJointErrors = 0;         
            end
        else
            if(deviceErrors.errorPDB == PDBError.PDB_DISCONNECTED)
                errorReaction = ErrorReaction.FINISHCURRENTREACTION;
                resetJointErrors = 0;
            elseif(deviceErrors.errorPDB == PDBError.PDB_LOW_VOLTAGE_WARNING || ...
                   deviceErrors.errorPDB == PDBError.PDB_HIGH_CURRENT_WARNING || ...
                   deviceErrors.errorPDB == PDBError.PDB_TEMP_SENSOR_ERROR || ...
                   deviceErrors.errorPDB == PDBError.PDB_HIGH_TEMPERATURE_WARNING)
               %not a bad error so finish current
               errorReaction = ErrorReaction.FINISHCURRENTREACTION;
               resetJointErrors = 0;
            elseif(deviceErrors.errorPDB == PDBError.PDB_HIGH_CURRENT_ERROR || ...
                   deviceErrors.errorPDB == PDBError.PDB_LOW_VOLTAGE_ERROR || ...
                   deviceErrors.errorPDB == PDBError.PDB_HIGH_TEMPERATURE_ERROR || ...
                   deviceErrors.errorPDB == PDBError.UNKNOWN_ERROR_PDB)
               %bad error so stop
               errorReaction = ErrorReaction.QUITIMMEDIATELY; 
               resetJointErrors = 0; 
            else
                if(any(deviceErrors.errorGES == GESError.GES_NO_CONNECTION)) % currently only implemented error
                    % finish and stop
                    errorReaction = ErrorReaction.FINISHCURRENTREACTION;
                    resetJointErrors = 0;
                else
                    if(deviceErrors.errorInputDevice ~= EthercatDeviceError.NOERROR)
                        if(deviceErrors.errorInputDevice == EthercatDeviceError.DISCONNECT)
                            errorReaction = ErrorReaction.FINISHCURRENTREACTION;
                            resetJointErrors = 0;
                        elseif(deviceErrors.errorInputDevice == EthercatDeviceError.GENERICERROR)
                            errorReaction = ErrorReaction.QUITIMMEDIATELY;
                            resetJointErrors = 0;
                        else
                            % we ran into another obscure error, so quit immediately
                            errorReaction = ErrorReaction.QUITIMMEDIATELY;
                            resetJointErrors = 0;
                        end
                    else
                          % no errors detected, continue
                        errorReaction = ErrorReaction.NOREACTION;
                        resetJointErrors = 0;
                    end
                end
            end
        end
    % this is badly aligned because of switch cases
end
end