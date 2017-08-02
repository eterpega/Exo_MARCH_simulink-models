function [errorReaction, resetJointErrors, errorMessage] = rememberErrorReaction(detectedError, deviceErrors, curTimestamp) 
% This function gets error from getErrorReactionFromErrors and remembers
% errors for 10 seconds and holds them.
persistent prevReaction;
persistent triggeredTimestamp;
persistent prevErrorMessage;

if(isempty(prevReaction))
   prevReaction = ErrorReaction.NOREACTION;
end
if(isempty(triggeredTimestamp))
   triggeredTimestamp = 0; 
end
if(isempty(prevErrorMessage))
   prevErrorMessage = ErrorMessage.NO_ERROR; 
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
else
    errorMessage = prevErrorMessage;
end

if(errorMessage == ErrorMessage.DEVICE_DISCONNECTED_ERROR && curTimestamp < 400 * 0.002) % somanets seem to connect after 382 samples consistently
    errorMessage = ErrorMessage.NO_ERROR;
    errorReaction = ErrorReaction.NOREACTION;
end

prevReaction = errorReaction;
prevErrorMessage = errorMessage;
end
