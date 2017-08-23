function [errorReaction, resetJointErrors, errorMessage, errorLocation] = rememberErrorReaction(detectedError, deviceErrors, curTimestamp) 
% This function gets error from getErrorReactionFromErrors and remembers
% errors for 10 seconds and holds them.
persistent prevReaction;
persistent triggeredTimestamp;
persistent prevErrorMessage;
persistent prevErrorLocation;

if(isempty(prevReaction))
   prevReaction = ErrorReaction.NOREACTION;
end
if(isempty(triggeredTimestamp))
   triggeredTimestamp = 0; 
end
if(isempty(prevErrorMessage))
   prevErrorMessage = ErrorMessage.NO_ERROR;
   prevErrorLocation = ErrorLocation.LOCATION_UNKNOWN;
end

[ triggeredErrorReaction, resetJointErrors ] = getErrorReactionFromErrors( detectedError, deviceErrors );

if(triggeredErrorReaction ~= ErrorReaction.NOREACTION)
    if(prevReaction ~= ErrorReaction.QUITIMMEDIATELY || prevReaction == ErrorReaction.NOREACTION)
        errorReaction = triggeredErrorReaction;
        triggeredTimestamp = curTimestamp;
    else
        errorReaction = prevReaction;
    end
else
    errorReaction = prevReaction;
end

if((curTimestamp - triggeredTimestamp) >= 10)
    errorReaction = ErrorReaction.NOREACTION;
end

if (prevReaction ~= errorReaction)
    errorMessage = getErrorMessageFromErrors(detectedError, deviceErrors);
    errorLocation = getErrorLocationFromErrors(deviceErrors);
else
    errorMessage = prevErrorMessage;
    errorLocation = prevErrorLocation;
end

if((errorMessage == ErrorMessage.DEVICE_DISCONNECTED_ERROR || errorMessage == ErrorMessage.CONTROL_ERROR) && curTimestamp < 1) 
    % somanets seem to connect after 382 samples consistently
    % this is to ignore boot errors for the first second
    % control_error is triggered by target setpoints out of bounds on the SOMANETs
    errorMessage = ErrorMessage.NO_ERROR;
    errorReaction = ErrorReaction.NOREACTION;
end

prevErrorLocation = errorLocation;
prevReaction = errorReaction;
prevErrorMessage = errorMessage;
end
