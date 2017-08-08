function printErrorToTerminal(detectedError, somanetErrors, inputDeviceError, gesErrors, pdbError)
%PRINTERRORTOTERMINAL prints errors to terminal when changed
persistent prevSystemError;
persistent prevSomanetErrors;
persistent prevInputDeviceError;
persistent prevGESErrors;
persistent prevPDBError;
if(isempty(prevSystemError))
    prevSystemError = ExoskeletonError.EXOSKELETON_NO_ERROR;
    prevSomanetErrors = [ SomanetError.NOERROR_SOMANET  SomanetError.NOERROR_SOMANET  SomanetError.NOERROR_SOMANET  SomanetError.NOERROR_SOMANET ];
    prevInputDeviceError = EthercatDeviceError.NOERROR;
    prevGESErrors = [ GESError.GES_NO_ERROR  GESError.GES_NO_ERROR  GESError.GES_NO_ERROR ];
    prevPDBError = PDBError.NO_ERROR_PDB;
end

if(prevSystemError ~= detectedError)
    switch(detectedError)
        case ExoskeletonError.EXOSKELETON_NO_ERROR
            printStringToTerminal('Master error cleared');
        case ExoskeletonError.EXOSKELETON_JOINT_NEAR_OVERHEAT
            printStringToTerminal('Master error: joints near overheat');
        case ExoskeletonError.EXOSKELETON_JOINT_OVERHEAT
            printStringToTerminal('Master error: joints overheated');
        case ExoskeletonError.EXOSKELETON_UNSTABLE_CONTROL
            printStringToTerminal('Master error: position difference too large');
        case ExoskeletonError.EXOSKELETON_HARDSTOP_REACHED
            printStringToTerminal('Master error: hardstop reached');
        otherwise
            printStringToTerminal('UNKNOWN MASTER ERROR, FIX YOUR CODE!');
    end
end

if(any(prevSomanetErrors ~= somanetErrors))
    somanetIndex = find(prevSomanetErrors ~= somanetErrors); %nonempty since any(.. ~= ..) was true
    somanetNames = {'LHFE'; 'LKFE'; 'RHFE'; 'RKFE'};
    for i = 1:length(somanetIndex)
        name = somanetNames{somanetIndex(i)};
        switch(somanetErrors(somanetIndex(i)))
            case SomanetError.NOERROR_SOMANET
                msg = 'Error cleared';
            case SomanetError.PHASE_OVERCURRENT_MASTER_DETECT
                msg = 'Master detected high phase current';
            case SomanetError.PHASE_I2T_ERROR
                msg = 'I2t threshold exceeded';
            case SomanetError.SOMANET_OVERHEAT
                msg = 'Device overheat';
            case SomanetError.SOMANET_DISCONNECTED
                msg = 'Device disconnected';
            case SomanetError.MAX_TORQUE_REACHED
                msg = 'Maximum torque exceeded';
            case SomanetError.SOMANET_NEAR_I2T_ERROR
                msg = 'Nearing I2t threshold';
            case SomanetError.SOMANET_NEAR_OVERHEAT
                msg = 'Near device overheat';
            case SomanetError.PHASE_OVERCURRENT
                msg = 'Phase overcurrent, fault state';
            case SomanetError.SOFTWARE_SOFTSTOP_REACHED
                msg = 'Softstop reached';
            case SomanetError.SOFTWARE_HARDSTOP_REACHED
                msg = 'Hardstop reached, fault state';
            case SomanetError.TARGET_POSITION_OUT_OF_BOUNDS
                msg = 'Target setpoint out of bounds';
            case SomanetError.SOMANET_SENSOR_ERROR
                msg = 'Sensor error, sensor fault mode';
            otherwise
                msg = 'Miscellaneous error';
        end
        printStringToTerminal(['Somanet ' name ': ' msg ]);
    end
end

if(prevInputDeviceError ~= inputDeviceError)
    switch(inputDeviceError)
        case EthercatDeviceError.NOERROR
            printStringToTerminal('Input device error cleared');
        case EthercatDeviceError.DISCONNECT
            printStringToTerminal('Input device disconnected');
        otherwise
            printStringToTerminal('Input device generic error encountered');
    end
end

if(any(prevGESErrors ~= gesErrors))
    gesIndex = find(prevGESErrors ~= gesErrors);
    gesNames = {'Left'; 'Right'; 'Back'};
    for i = 1:length(gesIndex)
        name = gesNames{gesIndex(i)};
        switch(gesErrors(gesIndex(i)))
            case GESError.GES_NO_ERROR
                msg = 'Error cleared';
            case GESError.GES_NO_CONNECTION
                msg = 'Device disconnected';
            case GESError.GES_BUTTON_NOT_PRESENT
                msg = 'Button not present';
            case GESError.GES_BUTTON_DISCONNECT
                msg = 'Button disconnected';
            case GESError.GES_IMU_NOT_PRESENT
                msg = 'IMU not present';
            case GESError.GES_IMU_DISCONNECT
                msg = 'IMU disconnected';
            case GESError.GES_TEMP1SENSOR_NOT_PRESENT
                msg = 'Temperature sensor 1 not present';
            case GESError.GES_TEMP1SENSOR_DISCONNECT
                msg = 'Temperature sensor 1 disconnected';
            case GESError.GES_TEMP2SENSOR_NOT_PRESENT
                msg = 'Temperature sensor 2 not present';
            case GESError.GES_TEMP2SENSOR_DISCONNECT
                msg = 'Temperature sensor 2 disconnected';
            otherwise 
                msg = 'UNKNOWN ERROR';
        end
        printStringToTerminal(['GES ' name ': ' msg]);
    end
end

if(prevPDBError ~= pdbError)
    switch(pdbError)
        case PDBError.NO_ERROR_PDB
            printStringToTerminal('PDB error cleared');
        case PDBError.PDB_DISCONNECTED
            printStringToTerminal('PDB disconnected');
        case PDBError.PDB_TEMP_SENSOR_ERROR
            printStringToTerminal('PDB temperature sensor error');
        case PDBError.PDB_HIGH_CURRENT_WARNING
            printStringToTerminal('PDB warning: high current');
        case PDBError.PDB_HIGH_CURRENT_ERROR
            printStringToTerminal('PDB error: too high current');
        case PDBError.PDB_LOW_VOLTAGE_WARNING
            printStringToTerminal('PDB warning: low voltage');
        case PDBError.PDB_LOW_VOLTAGE_ERROR
            printStringToTerminal('PDB error: too low voltage');
        case PDBError.PDB_HIGH_TEMPERATURE_WARNING
            printStringToTerminal('PDB warning: high temperature');
        case PDBError.PDB_HIGH_TEMPERATURE_ERROR
            printStringToTerminal('PDB error: too high temperature');
        otherwise
            printStringToTerminal('UNKNOWN PDB ERROR');
    end
end

prevSystemError = detectedError;
prevSomanetErrors = somanetErrors;
prevInputDeviceError = inputDeviceError;
prevGESErrors = gesErrors;
prevPDBError = pdbError;
end