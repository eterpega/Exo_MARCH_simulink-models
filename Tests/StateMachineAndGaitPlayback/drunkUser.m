function desiredState = drunkUser(time)
persistent desiredStatePersistent %[-]
persistent stateDuration %[s]
persistent implementedStateSitting
%persistent implementedStateStanding

if isempty(implementedStateSitting)
    implementedStateSitting = [1, 2, 3, 4, 5, 6];
end
if isempty(stateDuration)
    stateDuration = 0;
    desiredStatePersistent = 1;
end


if time > stateDuration
    desiredStatePersistent = -1; %state from 0-10
    while ~any(desiredStatePersistent == implementedStateSitting)
        desiredStatePersistent = round(rand*10);
    end
    stateDuration = rand+time; %[s]
end

if (stateDuration < 0.01)
    stateDuration = 0.01;
end

desiredState = desiredStatePersistent;