function desiredState = drunk_user(time, masterState)
persistent desiredStatePersistent %[-]
persistent stateDuration %[s]
persistent implementedStateSitting
persistent implementedStateStanding
persistent sitting

if isempty(implementedStateSitting)
    implementedStateSitting = [ExoskeletonState.HOLDSIT, ExoskeletonState.HOLDSTAND, ExoskeletonState.MANUAL]; %HOLDSIT(1), MANUAL(2), STANDINGUP(3)
end

if isempty(implementedStateStanding)
    implementedStateStanding = [ExoskeletonState.HOLDSIT, ExoskeletonState.HOLDSTAND, ExoskeletonState.CONTINUOUSGAIT, ExoskeletonState.STAIRSUP, ExoskeletonState.STAIRSUP]; %HOLDSTAND(4), SITTINGDOWN(5), CONTINUOUSGAIT(6)
%     rng('shuffle'); % makes rand a new sequence of numbers
end

if isempty(stateDuration)
    stateDuration = 0;
    desiredStatePersistent = 1;
end

if isempty(sitting)
    sitting = 1;
end

if sitting
    implementedState = implementedStateSitting;
else
    implementedState = implementedStateStanding;
end


if time > stateDuration
    desiredStatePersistent = -1; %reset the state     
    while ~any(desiredStatePersistent == implementedState)
        naiveDesiredState = round(rand*10);
        if(masterState == ExoskeletonState.FULLMANUAL && naiveDesiredState == 4) % so we can't go from manual to holdstand
            desiredStatePersistent = -1;
        else
            desiredStatePersistent = naiveDesiredState;
        end
    end
    stateDuration = rand*5+time; %[s]
end

if masterState == ExoskeletonState.HOLDSTAND
    sitting = 0;
elseif masterState == ExoskeletonState.HOLDSIT
    sitting = 1;
end

if (stateDuration < 0.01)
    stateDuration = 0.01;
end

desiredState = desiredStatePersistent;