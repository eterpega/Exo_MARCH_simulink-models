% reusable variables
dt = 0.02;
time = 0:dt:20;
multiplier = 1;
distance = zeros(size(time));
close all;

%% Regular case
for i = 1:length(time)
    distance(i) = getSmoothTransitionTo(multiplier*10,multiplier*0,1,3,time(i));
end
discVelocity2 = zeros(size(time));
for i = 2:length(time)
    discVelocity2(i) = (distance(i) - distance(i-1))/dt;
end
regDistance = distance;
plot(time,distance);

%% Test case where start velocity is in the wrong direction
for i = 1:length(time)
    distance(i) = getSmoothTransitionTo(multiplier*10,multiplier*-5,1,3,time(i));
end
figure;
plot(time,distance);

%% Test case where we will overshoot
for i = 1:length(time)
    distance(i) = getSmoothTransitionTo(multiplier*10,multiplier*5,1,3,time(i));
end
figure;
plot(time,distance);

%% Test case where we slow down to max velocity and stay there
for i = 1:length(time)
    distance(i) = getSmoothTransitionTo(multiplier*50,multiplier*20,5,3,time(i));
end
figure;
plot(time,distance);

%% Test case where we have initial velocity
for i = 1:length(time)
    distance(i) = getSmoothTransitionTo(multiplier*20,multiplier*2,0.3,3,time(i));
end
figure;
plot(time,distance);

%% Do we need time?
time=0:dt:40;
distance = time*0;
prevVelocity = 0;
discVelocity = zeros(size(time));
for i = 2:length(time)
    distance(i)=distance(i-1) + getSmoothTransitionTo(10-distance(i-1),prevVelocity,1,3,dt);
    if(i > 1)
        prevVelocity = (distance(i) - distance(i-1))/dt;
        discVelocity(i) = prevVelocity;
    end
end
figure;
plot(time,distance);