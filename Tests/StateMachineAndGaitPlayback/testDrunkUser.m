clear all
close all
clc

stateDuration = 0;
desiredStatePersistent = 1;
count = 0;

for time = 0:0.002:10
    count = count+1;
    implementedState = [1, 2, 3, 4, 5, 6];

    if time > stateDuration
        desiredStatePersistent = -1; %state from 0-10
        while any(desiredStatePersistent ~= implementedState)
            desiredStatePersistent = round(rand*10);
        end
        stateDuration = rand+time; %[s]
    end

    if (stateDuration < 0.01)
        stateDuration = 0.01;
    end

    desiredState(count) = desiredStatePersistent;
end

plot(desiredState)