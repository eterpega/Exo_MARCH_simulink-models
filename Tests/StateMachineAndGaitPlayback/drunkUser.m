function desiredState = drunkUser(time)
persistent desiredStatePersistent %[-]
persistent stateDuration %[s]
persistent implementedStateSitting
persistent implementedStateStanding
persistent sitting

if isempty(implementedStateSitting)
    implementedStateSitting = [1, 2, 3]; %HOLDSIT(1), MANUAL(2), STANDINGUP(3)
end

if isempty(implementedStateStanding)
    implementedStateStanding = [4, 5, 6]; %HOLDSTAND(4), SITTINGDOWN(5), CONTINUOUSGAIT(6)
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
        desiredStatePersistent = round(rand*10);
    end
    stateDuration = rand+time; %[s]
end

if desiredStatePersistent == 3
    sitting = 0;
elseif desiredStatePersistent == 5
    sitting = 1;
end

if (stateDuration < 0.01)
    stateDuration = 0.01;
end

desiredState = desiredStatePersistent;