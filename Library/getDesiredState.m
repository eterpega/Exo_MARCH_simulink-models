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

if(errorReaction == ErrorReaction.FINISHCURRENTREACTION)
    % finish one walk action, then goto hold stand OR
    % finish standing up or sitting down, and hold stand/hold sit 
    if(lastDesiredState == ExoskeletonState.HOLDSTAND)
        desiredState = lastDesiredState;
    elseif(lastDesiredState == ExoskeletonState.HOLDSIT)
        desiredState = lastDesiredState;
    else % then a walk action is happening, ie continuousgait, stones, stairs
        % this means the previous state is always holdStand, switch to it:
        desiredState = previousDesiredState;
    end
elseif(errorReaction == ErrorReaction.MOVETOPREVIOUSSTATE)
    % this is only different when standing up or sitting down
    if(lastDesiredState == ExoskeletonState.HOLDSTAND && previousDesiredState ~= ExoskeletonState.HOLDSIT)
        desiredState = lastDesiredState; % this means we were walking/stairs previously
    elseif(lastDesiredState == ExoskeletonState.HOLDSTAND && previousDesiredState == ExoskeletonState.HOLDSIT)
        %during standing up an error occurred, sit back down
        desiredState = previousDesiredState;
        % also, we need to make sure the output value wont oscillate:
        lastDesiredState = desiredState;
        % this assignment makes previousDesiredState not save the previous
        % value, so we won't switch back on the next run
    elseif(lastDesiredState == ExoskeletonState.HOLDSIT && previousDesiredState ~= ExoskeletonState.HOLDSTAND)
        desiredState = lastDesiredState; % we were sitting and in manual before
    elseif(lastDesiredState == ExoskeletonState.HOLDSIT && previousDesiredState == ExoskeletonState.HOLDSTAND)
        % we were sitting down and an error occurred, stand back up
        desiredState = previousDesiredState;
        % also, we need to make sure the output value wont oscillate:
        lastDesiredState = desiredState;
        % this assignment makes previousDesiredState not save the previous
        % value, so we won't switch back on the next run
    else % then a walk action is happening, ie continuousgait, stones, stairs
        % this means the previous state is always holdStand, switch to it:
        desiredState = previousDesiredState;
    end
else
    % no error reaction, state is determined by inputDevice, GES button and
    % PDB button
    if(shutdownDesired)
        desiredState = ExoskeletonState.SHUTTING_DOWN;
    else
        if(secondaryButton == 1 && (previousDesiredState == ExoskeletonState.STAIRSUP || previousDesiredState == ExoskeletonState.STAIRSDOWN || previousDesiredState == ExoskeletonState.SLOPE))
            % then retrigger that state
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