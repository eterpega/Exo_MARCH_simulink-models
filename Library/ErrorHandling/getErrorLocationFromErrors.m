function errorLocation = getErrorLocationFromErrors(deviceErrors)
errorLocation = ErrorLocation.UNKNOWN;
for i=1:4
    if deviceErrors.errorSOMANETs(i) ~= SOMANETError.NOERROR_SOMANET
        if errorLocation == ErrorLocation.UNKNOWN
            errorLocation = getMalfunctioningSOMANET(deviceErrors);
        else
            errorLocation  = ErrorLocation.MORE_THAN_ONE_JOINT;
            return;
        end
    end
end

for i=1:3
    if deviceErrors.errorGES(i) ~= GESError.NO_ERROR
       if errorLocation == ErrorLocation.UNKNOWN 
            errorLocation = getMalfunctioningGes(deviceErrors);
        else
            errorLocation  = ErrorLocation.MORE_THAN_ONE_DEVICE;
            return;
        end
    end
end

if deviceErrors.errorPDB == PDBError.NO_ERROR
    if errorLocation ~= ErrorLocation.UNKNOWN
        errorLocation = ErrorLocation.PDB;
    else
        errorLocation  = ErrorLocation.MORE_THAN_ONE_DEVICE;
        return;
    end
end

end

function errorLocation = getMalfunctioningSOMANET(deviceErrors)
%% We check which joint has an error
    if deviceErrors.errorSOMANETs(0) ~= SOMANET_ERROR.NO_ERROR
        errorLocation = ErrorLocation.LHFE;
    elseif deviceErrors.errorSOMANETs(1) ~= SOMANET_ERROR.NO_ERROR
        errorLocation = ErrorLocation.LKFE;
    elseif deviceErrors.errorSOMANETs(2) ~= SOMANET_ERROR.NO_ERROR
        errorLocation = ErrorLocation.RKFE;
    elseif deviceErrors.errorSOMANETs(3) ~= SOMANET_ERROR.NO_ERROR
        errorLocation = ErrorLocation.RHFE;
    end
end

function errorLocation = getMalfunctioningGes(deviceErrors)
%% We check which joint has an error
    if deviceErrors.errorGES(0) ~= GES_ERROR.NO_ERROR
        errorLocation = ErrorLocation.LHFE;
    elseif deviceErrors.errorGES(1) ~= GES_ERROR.NO_ERROR
        errorLocation = ErrorLocation.LKFE;
    elseif deviceErrors.errorGES(2) ~= GES_ERROR.NO_ERROR
        errorLocation = ErrorLocation.BACKPACK;
    end
end