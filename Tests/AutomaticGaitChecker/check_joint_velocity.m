function [velocityWarning, actualVelocityJoint] = check_joint_velocity(actualAngleJoint, desiredAngleJoint, masterState, desiredState, time, jointName)

%% Set constants
% velocity maximum
velocityMaximum = 17; %[RPM]
velocityMaximum = velocityMaximum/60*2*pi; %[rad/s]

%% Find velocity and acceleration
actualVelocityJoint = gradient(actualAngleJoint,time); %[rad/s]
actualVelocityJoint(isnan(actualAngleJoint)) = 0; 

%% Return warnings
absoluteVelocityJoint = abs(actualVelocityJoint);

if any(absoluteVelocityJoint > velocityMaximum)
    maxVelStr=num2str(max(absoluteVelocityJoint*60/2/pi));
    curStateStr=[num2str(unique(masterState(max(absoluteVelocityJoint) == absoluteVelocityJoint)))];
    velocityWarning=warning([jointName, ' velocity too high: ',maxVelStr , ' [RPM] during state ', curStateStr])
else
    velocityWarning=warning(['none']);
end