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
   prevErrorMessage = ErrorMessage.NO_ERROR;; 
end

if((triggeredTimestamp - curTimestamp) >= 10)
    prevReaction = ErrorReaction.NOREACTION;
end

[ triggeredErrorReaction, resetJointErrors ] = getErrorReactionFromErrors( detectedError, deviceErrors );

if(triggeredErrorReaction == ErrorReaction.QUITIMMEDIATELY)
   errorReaction = triggeredErrorReaction;
   triggeredTimestamp = curTimestamp;
elseif(triggeredErrorReaction ~= ErrorReaction.NOREACTION && prevReaction ~= ErrorReaction.QUITIMMEDIATELY)
   errorReaction = triggeredErrorReaction;
   triggeredTimestamp = curTimestamp;
else
    errorReaction = prevReaction;
end

if (prevReaction ~= errorReaction)
    prevReaction = errorReaction;
    errorMessage = getErrorMessageFromErrors(detectedError, deviceErrors);
    prevErrorMessage = errorMessage;
else
    errorMessage = prevErrorMessage;
end

end

