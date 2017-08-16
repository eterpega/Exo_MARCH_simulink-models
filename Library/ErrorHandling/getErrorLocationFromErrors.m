function errorLocation = getErrorLocationFromErrors(deviceErrors)
    errorLocation = ErrorLocation.LOCATION_UNKNOWN;
    for i=1:4
        if deviceErrors.errorSOMANETs(i) ~= SomanetError.NOERROR_SOMANET
            if errorLocation == ErrorLocation.LOCATION_UNKNOWN
                errorLocation = getMalfunctioningSOMANET(deviceErrors);
            else
                errorLocation  = ErrorLocation.LOCATION_MORE_THAN_ONE_JOINT;
                return;
            end
        end
    end

    for i=1:3
        if deviceErrors.errorGES(i) ~= GESError.GES_NO_ERROR
           if errorLocation == ErrorLocation.LOCATION_UNKNOWN 
                errorLocation = getMalfunctioningGes(deviceErrors);
            else
                errorLocation  = ErrorLocation.LOCATION_MORE_THAN_ONE_DEVICE;
                return;
            end
        end
    end

    if deviceErrors.errorPDB ~= PDBError.NO_ERROR_PDB
        if errorLocation ~= ErrorLocation.LOCATION_UNKNOWN
            errorLocation = ErrorLocation.LOCATION_PDB;
        else
            errorLocation  = ErrorLocation.LOCATION_MORE_THAN_ONE_DEVICE;
            return;
        end
    end

    if deviceErrors.errorInputDevice ~= InputDeviceError.INPUT_DEVICE_NO_ERROR
        if errorLocation ~= ErrorLocation.LOCATION_UNKNOWN
            errorLocation = ErrorLocation.LOCATION_INPUT_DEVICE;
        else
            errorLocation  = ErrorLocation.LOCATION_MORE_THAN_ONE_DEVICE;
            return;
        end
    end
end
function errorLocation = getMalfunctioningSOMANET(deviceErrors)
%% We check which joint has an error
    if deviceErrors.errorSOMANETs(1) ~= SomanetError.NOERROR_SOMANET
        errorLocation = ErrorLocation.LOCATION_LHFE;
    elseif deviceErrors.errorSOMANETs(2) ~= SomanetError.NOERROR_SOMANET
        errorLocation = ErrorLocation.LOCATION_LKFE;
    elseif deviceErrors.errorSOMANETs(3) ~= SomanetError.NOERROR_SOMANET
        errorLocation = ErrorLocation.LOCATION_RKFE;
    elseif deviceErrors.errorSOMANETs(4) ~= SomanetError.NOERROR_SOMANET
        errorLocation = ErrorLocation.LOCATION_RHFE;
    else
        errorLocation = ErrorLocation.LOCATION_UNKNOWN;
    end
end

function errorLocation = getMalfunctioningGes(deviceErrors)
%% We check which joint has an error
    if deviceErrors.errorGES(1) ~= GESError.GES_NO_ERROR
        errorLocation = ErrorLocation.LOCATION_LHFE;
    elseif deviceErrors.errorGES(2) ~= GESError.GES_NO_ERROR
        errorLocation = ErrorLocation.LOCATION_LKFE;
    elseif deviceErrors.errorGES(3) ~= GESError.GES_NO_ERROR
        errorLocation = ErrorLocation.LOCATION_BACKPACK;
    else
        errorLocation = ErrorLocation.LOCATION_UNKNOWN;
    end
end