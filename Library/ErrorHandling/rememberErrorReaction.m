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

prevReaction = errorReaction;
prevErrorMessage = errorMessage;
end
