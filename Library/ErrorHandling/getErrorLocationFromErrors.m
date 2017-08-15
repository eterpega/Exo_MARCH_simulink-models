function errorLocation = getErrorLocationFromErrors(detectedError,deviceErrors)

%% Error Counting
% Right now we can't handle more than one device error. So we count errors and if there is more than one
% we only that it is more than one.
numberOfErrors = 0;
for i=1:4
    if deviceErrors.errorSomanets(i) ~= SomanetError.NOERROR_SOMANET
        numberOfErrors = numberOfErrors +1;
        if numberOfErrors < 2 
            errorLocation = getMalfunctioningJoint(deviceError);
        else
            errorLocation  = ErrorLocation.MORE_THAN_ONE_JOINT;
            return;
        end
    end
end

if numberOfErrors > 1
    errorLocation  = ErrorLocation.MORE_THAN_ONE_JOINT;
    return;
end

for i=1:3
    if deviceErrors.errorGES(i) ~= GESError.NO_ERROR
        numberOfErrors = numberOfErrors +1;
        if numberOfErrors < 2 
            errorLocation = getMalfunctioningJoint(deviceError);
        else
            errorLocation  = ErrorLocation.MORE_THAN_ONE_JOINT;
            return;
        end
    end
end

if deviceErrors.errorPDB ~= PDBError.NO_ERROR
    numberOfErrors = numberOfErrors +1;
end

if numberOfErrors > 1
    errorLocation  = ErrorLocation.MORE_THAN_ONE_DEVICE;
    return;
end



end

function errorLocation = getMalfunctioningJoint(deviceError)
%% We check which joint has an error
    if deviceErrors(0) ~= DeviceError.NO_ERROR
        errorLocation = ErrorLocation.LHFE;
    elseif deviceErrors(1) ~= DeviceError.NO_ERROR
        errorLocation = ErrorLocation.LKFE;
    elseif deviceErrors(2) ~= DeviceError.NO_ERROR
        errorLocation = ErrorLocation.RKFE;
    elseif deviceErrors(3) ~= DeviceError.NO_ERROR
        errorLocation = ErrorLocation.RHFE;
    end
end