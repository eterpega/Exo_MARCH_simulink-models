function smoothTargetPosition = getSmoothTransitionTo(distance, startVelocity, maxAcceleration, maxVelocity, time)
%GETSMOOTHTRANSITIONTO Computes the smooth transition value at time when
%transitioning distance, taking in account startVelocity, maxAcceleration
%and maxVelocity

% Transition takes the following steps:
% 1. Slow down to velocity 0 if startVelocity is in the wrong direction
% 2. Slow down to maxVelocity if startVelocity is higher than maxVelocity
% 3. Slow down to velocity 0 if constant deceleration overshoots our target distance
%
% This first part is 'slowing down'. The remaining distance is then reached by:
% 4. If we have non zero startVelocity, fictively translating our distance
% and time in the negative direction, as if we would start from velocity zero.
% 5. Using that, accelerating to the maxVelocity or to the velocity needed
% to reach our updated distance the fasted
% 6. Proceeding at maxVelocity just long enough so when we 
% 7. Decelerate at maxAcceleration, we precisely reach our target

% The situation for positive and negative distance is symmetric, but it's
% annoying to keep track of signs. Therefore, we calculate the path for the
% positive case and multiply the result when we return
slowDownMultiplier = sign(distance);
posDistance = slowDownMultiplier * distance;
relStartVelocity = slowDownMultiplier * startVelocity;
% this time is only non-zero when the startVelocity is in the wrong direction
timeSlowDownWrongDirection = max(-1*relStartVelocity, 0)/maxAcceleration;
distanceSlowDownWrongDirection = -0.5*maxAcceleration * timeSlowDownWrongDirection^2;
% even though these two will never both happen, it is easier to regard them
% as happening after one another.
timeSlowDownToMaxVel = max(relStartVelocity - maxVelocity, 0)/maxAcceleration;
distanceSlowDownToMaxVel = maxVelocity*timeSlowDownToMaxVel + 0.5*maxAcceleration*timeSlowDownToMaxVel^2;
timeToStopASAP = max(min(relStartVelocity, maxVelocity), 0)/maxAcceleration;
distanceToStopASAP = 0.5*maxAcceleration*timeToStopASAP^2;
distanceAfterSlowDowns = posDistance - distanceSlowDownWrongDirection - distanceSlowDownToMaxVel;
if distanceToStopASAP > distanceAfterSlowDowns
    willOvershoot = 1;
else
    willOvershoot = 0;
end
% distance now might have swapped sign because of, for example, overshoot
distanceRemainingAtStartSmoothing = distanceAfterSlowDowns - willOvershoot*distanceToStopASAP;
startSmoothingMultiplier = sign(distanceRemainingAtStartSmoothing);
smoothingDistance = startSmoothingMultiplier * distanceRemainingAtStartSmoothing;
velocityAtStartSmoothing = max(min(relStartVelocity, maxVelocity)*(1-willOvershoot), 0);
% now if we still have velocity, we calculate how long and how far it would
% have been if we had started at velocity zero
timeToReachStartVelocity = velocityAtStartSmoothing/maxAcceleration;
distanceToReachStartVelocity = 0.5 * maxAcceleration * timeToReachStartVelocity^2;
fakeDistanceWithStartVelocity = smoothingDistance + distanceToReachStartVelocity;
timeToReachDistanceWithMaxAcc = sqrt(abs(fakeDistanceWithStartVelocity)/maxAcceleration);
timeNeededToReachMaxNeededVelocity = min(timeToReachDistanceWithMaxAcc, maxVelocity/maxAcceleration);
distanceAtConstantVelocity = fakeDistanceWithStartVelocity - 2*0.5*maxAcceleration*timeNeededToReachMaxNeededVelocity^2;
timeAtConstantVelocity = distanceAtConstantVelocity/maxVelocity;

timeParts = [...
    timeSlowDownWrongDirection; ...
    timeSlowDownToMaxVel; ...
    timeToStopASAP*willOvershoot; ...
    -timeToReachStartVelocity; ...
    timeNeededToReachMaxNeededVelocity; ...
    timeAtConstantVelocity; ...
    timeNeededToReachMaxNeededVelocity];
accParts = [ ... % at what rate to ac-/decelerate in timePart
    slowDownMultiplier * 1; ... % we 'accelerate' when decelerating in the wrong direction
    slowDownMultiplier * -1; ...
    slowDownMultiplier * -1; ...
    slowDownMultiplier * startSmoothingMultiplier * 1; ...
    slowDownMultiplier * startSmoothingMultiplier * 1; ...
    0; ...
    slowDownMultiplier * startSmoothingMultiplier * -1] * maxAcceleration;
velStartParts = zeros(size(accParts));
velStartParts(1) = startVelocity;
for i = 2:length(accParts)
    velStartParts(i) = velStartParts(i-1)+accParts(i-1)*timeParts(i-1);
end
usedTimeParts = zeros(size(timeParts));
timeLeft = time;
for i = 1:length(usedTimeParts)
    usedTimeParts(i) = min(timeParts(i), timeLeft);
    timeLeft = timeLeft - usedTimeParts(i);
end
distanceParts = velStartParts.*usedTimeParts + 0.5*accParts.*usedTimeParts.^2;
smoothTargetPosition = sum(distanceParts);
end