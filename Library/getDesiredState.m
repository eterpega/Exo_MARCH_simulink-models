function [ desiredState ] = getDesiredState( errorReaction, shutdownDesired, secondaryButton, inputDeviceState )
%GETDESIREDSTATE Determines the desired ExoskeletonState from the desired
%errorReaction, from the secondaryButton on the GES, from the
%inputDeviceState and from the power button on the PDB
persistent lastDesiredState; % inputState from when this function was last ran
persistent previousDesiredState; % inputState before last change
if(isempty(lastDesiredState))
    lastDesiredState = ExoskeletonState.FULLMANUAL;
    previousDesiredState = ExoskeletonState.FULLMANUAL;
end
if (errorReaction == ErrorReaction.QUITIMMEDIATELY)
    if(shutdownDesired)
        desiredState = ExoskeletonState.SHUTTING_DOWN;
    else
        desiredState = ExoskeletonState.FULLMANUAL;
    end
    lastDesiredState = ExoskeletonState.FULLMANUAL;
    previousDesiredState = ExoskeletonState.FULLMANUAL;
elseif(errorReaction == ErrorReaction.FINISHCURRENTREACTION)
    % finish one walk action, then goto hold stand OR
    % finish standing up or sitting down, and hold stand/hold sit 
    if(lastDesiredState == ExoskeletonState.HOLDSTAND)
        desiredState = lastDesiredState;
    elseif(lastDesiredState == ExoskeletonState.HOLDSIT || lastDesiredState == ExoskeletonState.HOLDSOFA)
        if(shutdownDesired)
            desiredState = ExoskeletonState.SHUTTING_DOWN;
        else
            desiredState = lastDesiredState;
        end
    else % then a walk action is happening, ie continuousgait, stones, stairs
        % this means the previous state is always holdStand, switch to it:
        desiredState = previousDesiredState;
    end
elseif(errorReaction == ErrorReaction.MOVETOPREVIOUSSTATE)
    % this is only different when standing up or sitting down
    if( (lastDesiredState == ExoskeletonState.HOLDSTAND) && (previousDesiredState ~= ExoskeletonState.HOLDSIT) && (previousDesiredState ~= ExoskeletonState.HOLDSOFA) )
        desiredState = lastDesiredState; % this means we were walking/stairs previously
    elseif(lastDesiredState == ExoskeletonState.HOLDSTAND && (previousDesiredState == ExoskeletonState.HOLDSIT || previousDesiredState == ExoskeletonState.HOLDSOFA) )
        %during standing up an error occurred, sit back down
        desiredState = lastDesiredState;%This was previousDesiredState;
        % also, we need to make sure the output value wont oscillate:
        %lastDesiredState = desiredState;
        % this assignment makes previousDesiredState not save the previous
        % value, so we won't switch back on the next run
    elseif( (previousDesiredState == ExoskeletonState.HOLDSIT || previousDesiredState == ExoskeletonState.HOLDSOFA) && previousDesiredState ~= ExoskeletonState.HOLDSTAND)
        desiredState = lastDesiredState; % we were sitting and in manual before
    elseif( (previousDesiredState == ExoskeletonState.HOLDSIT || previousDesiredState == ExoskeletonState.HOLDSOFA) && previousDesiredState == ExoskeletonState.HOLDSTAND)
        % we were sitting down and an error occurred, stand back up
        desiredState = lastDesiredState;%This was previousDesiredState;
        % also, we need to make sure the output value wont oscillate:
        %lastDesiredState = desiredState;
        % this assignment makes previousDesiredState not save the previous
        % value, so we won't switch back on the next run
    else % then a walk action is happening, ie continuousgait, stones, stairs
        % this means the previous state is always holdStand, switch to it:
        desiredState = previousDesiredState;
    end
    if( (desiredState == ExoskeletonState.HOLDSIT || desiredState == ExoskeletonState.HOLDSOFA) && shutdownDesired)
        desiredState = ExoskeletonState.SHUTTING_DOWN;
    end
else
    % no error reaction, state is determined by inputDevice, GES button and
    % PDB button
    if(shutdownDesired)
        desiredState = ExoskeletonState.SHUTTING_DOWN;
    elseif (inputDeviceState == ExoskeletonState.UNREACHABLE)
        desiredState = lastDesiredState;
    else
        if(secondaryButton == 1 && (previousDesiredState == ExoskeletonState.STAIRSUP || previousDesiredState == ExoskeletonState.STAIRSDOWN))
            % then retrigger that state
            desiredState = previousDesiredState;
        elseif(secondaryButton == 1 && (lastDesiredState == ExoskeletonState.SLOPEUP || lastDesiredState == ExoskeletonState.SLOPEDOWN))
            %If in slope up or slope down, which is "continuous" you can go
            %back to hold stand by either pulling the trigger on the input
            %device, or pushing the button on the left upper leg
            desiredState = previousDesiredState;
        else
            desiredState = inputDeviceState;
        end
    end
end
if(lastDesiredState ~= desiredState) % at transition
    previousDesiredState = lastDesiredState; % remember the previous
end
lastDesiredState = desiredState;
end