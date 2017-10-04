function [errorMessage, errorLocationOut] = getErrorMessageFromErrors(detectedError, deviceErrors,errorLocationHighLevel)
errorLocation = '00000000';
switch(detectedError)
    case ExoskeletonError.EXOSKELETON_JOINT_NEAR_OVERHEAT
        errorMessage = ErrorMessage.HEAT_WARNING;
        errorLocation = dec2bin(errorLocationHighLevel);
        errorLocation(5:8) = '0'; %We ignore the Somanet and Ges errors
    case ExoskeletonError.EXOSKELETON_JOINT_OVERHEAT
        errorMessage = ErrorMessage.HEAT_ERROR;
        errorLocation =  dec2bin(errorLocationHighLevel);
        errorLocation(5:8) = '0'; %We ignore the Somanet and Ges errors
    case ExoskeletonError.EXOSKELETON_UNSTABLE_CONTROL 
        % indicates too high position error. We presume the originating
        % state did work, so move back to it
        errorMessage = ErrorMessage.CONTROL_ERROR;
        errorLocation = dec2bin(errorLocationHighLevel);
        errorLocation(5:8) = '0'; %We ignore the Somanet and Ges errors
    case ExoskeletonError.EXOSKELETON_HARDSTOP_REACHED
        % at softstop we have already tried to hold position, but
        % this failed since we reached hardstop. Therefore, give up
        % and quit everything
        errorMessage = ErrorMessage.HARDSTOP_ERROR;
        errorLocation =  dec2bin(errorLocationHighLevel);
        errorLocation(5:8) = '0'; %We ignore the Somanet and Ges errors
    otherwise
        % no error detected, check device errors
        % somanet errors have highest priority
        somanetErrors = deviceErrors.errorSOMANETs;
        if any(somanetErrors ~= SomanetError.NOERROR_SOMANET)
            if any((somanetErrors == SomanetError.GENERICERROR_SOMANET) | ...
                (somanetErrors == SomanetError.SOMANET_NONRESPONSIVE) | ...
                (somanetErrors == SomanetError.SOMANET_UNKNOWN_ERROR))
                % this indicates a programming error, so quit immediately
                errorMessage = ErrorMessage.UNKNOWN_ERROR;

            elseif any(somanetErrors == SomanetError.SOFTWARE_HARDSTOP_REACHED)
                % at softstop we have already tried to hold position, but
                % this failed since we reached hardstop. Therefore, give up
                % and quit everything
                errorMessage = ErrorMessage.HARDSTOP_ERROR;

            elseif any(somanetErrors == SomanetError.SOMANET_DISCONNECTED)
                % we have a lot less control over the exoskeleton and
                % cannot predict behaviour. therefore we quit
                errorMessage = ErrorMessage.DEVICE_DISCONNECTED_ERROR;

            elseif any((somanetErrors == SomanetError.SOMANET_OVERHEAT) | ...
                    (somanetErrors == SomanetError.PHASE_I2T_ERROR))
                % this indicates large possibility of blowing up
                % somanet/motor, so quit immediately
                errorMessage = ErrorMessage.HEAT_ERROR;

            elseif any(somanetErrors == SomanetError.MAX_TORQUE_REACHED | ...
                    (somanetErrors == SomanetError.PHASE_OVERCURRENT_MASTER_DETECT) | ...
                    (somanetErrors == SomanetError.PHASE_OVERCURRENT))
                % indicates mechanical failure or erratic control
                errorMessage = ErrorMessage.HIGH_LOAD_ERROR;

            elseif any((somanetErrors == SomanetError.SOMANET_NEAR_I2T_ERROR) | ...
                    (somanetErrors == SomanetError.SOMANET_NEAR_OVERHEAT))                    
                % medium error, finish reaction then evaluate
                errorMessage = ErrorMessage.HEAT_WARNING;

            elseif any((somanetErrors == SomanetError.TARGET_POSITION_OUT_OF_BOUNDS))
                % medium error, somanet in fault state. finish reaction and
                % reset error
                errorMessage = ErrorMessage.CONTROL_ERROR;
            elseif any((somanetErrors == SomanetError.SOMANET_NO_AKSIM_AT_BOOT))
                errorMessage = ErrorMessage.NO_AKSIM_AT_BOOT;
            elseif any((somanetErrors == SomanetError.SOMANET_SENSOR_ERROR))
                errorMessage = ErrorMessage.SOMANET_SENSOR;
            elseif any(somanetErrors == SomanetError.SOFTWARE_SOFTSTOP_REACHED)
                % disregard. should not happen but testers will notice
                errorMessage = ErrorMessage.NO_ERROR;

            else
                % we ran into another obscure error, we did not see coming
                % this could be a programming error or something worse,
                % therefore quit immediately    
                errorMessage = ErrorMessage.UNKNOWN_ERROR;
       
            end
            errorLocation = getErrorLocationFromErrors(deviceErrors);
            errorLocation(5:8) = '0'; %We ignore non Somanet errors, ie PDB and GES
        elseif deviceErrors.errorPDB ~= PDBError.NO_ERROR_PDB
            errorPDB = deviceErrors.errorPDB;
            if (errorPDB == PDBError.PDB_HIGH_CURRENT_WARNING || errorPDB == PDBError.PDB_HIGH_CURRENT_ERROR)
                errorMessage = ErrorMessage.PDB_CURRENT_ERROR;
            elseif (errorPDB == PDBError.PDB_LOW_VOLTAGE_WARNING || errorPDB == PDBError.PDB_LOW_VOLTAGE_ERROR)
                errorMessage = ErrorMessage.PDB_VOLTAGE_ERROR;
            elseif (errorPDB == PDBError.PDB_HIGH_TEMPERATURE_WARNING || errorPDB == PDBError.PDB_HIGH_TEMPERATURE_ERROR)
                errorMessage = ErrorMessage.PDB_TEMPERATURE_ERROR;
            elseif (errorPDB == PDBError.PDB_DISCONNECTED)
                errorMessage = ErrorMessage.DEVICE_DISCONNECTED_ERROR;
            else
                errorMessage = ErrorMessage.UNKNOWN_ERROR;
            end
            
            errorLocation = getErrorLocationFromErrors(deviceErrors);
            errorLocation(1:7) = '0'; %We ignore everything but the pdb, ie Somanet and GES
        else
            % no somanet error, check the other devices:
            % TODO: implement PowerElectronics error handling
            % GES disconnect is worse than inputDeviceDisconnect, since we
            % are not able to monitor joint temperatures
            gesErrors = deviceErrors.errorGES;
            if(any(gesErrors == GESError.GES_NO_CONNECTION)) % currently only possible error
                % finish and stop
                errorMessage = ErrorMessage.DEVICE_DISCONNECTED_ERROR;
            elseif any(gesErrors == GESError.GES_BUTTON_NOT_PRESENT) || any(gesErrors == GESError.GES_BUTTON_DISCONNECT)
                errorMessage = ErrorMessage.HIP_BUTTON_DISCONNECTED;
            elseif any(gesErrors == GESError.GES_IMU_NOT_PRESENT) || any(gesErrors == GESError.GES_IMU_DISCONNECT)
                errorMessage = ErrorMessage.IMU_DISCONNECTED;
            elseif any(gesErrors == GESError.GES_TEMP1SENSOR_NOT_PRESENT) || any(gesErrors == GESError.GES_TEMP1SENSOR_DISCONNECT)
                errorMessage = ErrorMessage.TEMPS1_DISCONNECTED;
            elseif any(gesErrors == GESError.GES_TEMP1SENSOR_NOT_PRESENT) || any(gesErrors == GESError.GES_TEMP2SENSOR_DISCONNECT)
                errorMessage = ErrorMessage.TEMPS2_DISCONNECTED;
            elseif deviceErrors.errorInputDevice ~= EthercatDeviceError.NOERROR
                % finish and stop
                errorMessage = ErrorMessage.GENERIC_DEVICE_ERROR;
            else
                % no errors detected, continue
                errorMessage = ErrorMessage.NO_ERROR;

            end
             errorLocation(1:4) = '0'; %We ignore the Somanet errors locations (there should not be any)
             errorLocation(8) = '0'; %We ignore the PDB errors (there shouldn be any)
        end
    % this is badly aligned because of switch cases
end
errorLocationOut = bin2dec(errorLocation);
end
