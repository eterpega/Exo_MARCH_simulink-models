function [errorReaction, resetJointErrors, errorMessage, errorLocation] = rememberErrorReaction(detectedError, deviceErrors, curTimestamp,errorLocationHighLevel) 
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
   prevErrorLocation = bin2dec('00000000');
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

if((curTimestamp - triggeredTimestamp) >= 4)
    errorReaction = ErrorReaction.NOREACTION;
end

if (prevReaction ~= errorReaction)
    [errorMessage,errorLocation] = getErrorMessageFromErrors(detectedError, deviceErrors,errorLocationHighLevel);     
else
    errorMessage = prevErrorMessage;
    errorLocation = prevErrorLocation;
end

if((errorMessage == ErrorMessage.DEVICE_DISCONNECTED_ERROR || errorMessage == ErrorMessage.CONTROL_ERROR) && curTimestamp < 3) 
    % somanets seem to connect after 382 samples consistently
    % this is to ignore boot errors for the first 3 seconds
    % control_error is triggered by target setpoints out of bounds on the SOMANETs
    errorMessage = ErrorMessage.NO_ERROR;
    errorReaction = ErrorReaction.NOREACTION;
end

prevErrorLocation = errorLocation;
prevReaction = errorReaction;
prevErrorMessage = errorMessage;
end
