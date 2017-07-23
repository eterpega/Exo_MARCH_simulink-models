function [ errorLKFE, errorRKFE, errorBack ] = getErrorFromGES( receivedFromGESs )
%GETERRORFROMGES From given ethercat data, determines the GES error
% this is done by comparing the temperatures to zero. A temperature of zero
% degrees celsius is highly unlikely, so this probably means no data is
% being received/sent
receivedFromLKFE = receivedFromGESs.receivedFromGESLKFE;
receivedFromRKFE = receivedFromGESs.receivedFromGESRKFE;
receivedFromBack = receivedFromGESs.receivedFromGESBack;
if(receivedFromLKFE.temperature ~= 0)
    errorLKFE = GESError.GES_NO_ERROR;
else
    errorLKFE = GESError.GES_NO_CONNECTION;
end

if(receivedFromRKFE.temperature ~= 0)
    errorRKFE = GESError.GES_NO_ERROR;
else
    errorRKFE = GESError.GES_NO_CONNECTION;
end

if(receivedFromBack.temperatureRHFE ~= 0 && receivedFromBack.temperatureLHFE ~= 0)
    errorBack = GESError.GES_NO_ERROR;
else
    errorBack = GESError.GES_NO_CONNECTION;
end
end