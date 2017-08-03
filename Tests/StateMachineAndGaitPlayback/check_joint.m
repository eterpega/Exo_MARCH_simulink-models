function [actualVelocityJoint, actualAccelerationJoint] = check_joint(actualAngleJoint, desiredAngleJoint, masterState, desiredState, time, jointName)

%% Set constants
% velocity maximum
velocityMaximum = 17; %[RPM]
velocityMaximum = velocityMaximum/60*2*pi; %[rad/s]

% acceleration maximum
inertiaLeg = 10; %[kg*m^2]
inertiaLowerLeg = 1.5; %[kg*m^2]
torqueJoint = 200; %[Nm]
accelerationMaximumHip = torqueJoint/inertiaLeg; %[rad/s^2]
accelerationMaximumKnee = torqueJoint/inertiaLowerLeg; %[rad/s^2]

if all(jointName == 'RHFE') || all(jointName == 'LHFE')
    accelerationMaximum = accelerationMaximumHip; %[rad/s^2]
elseif all(jointName == 'RKFE') || all(jointName == 'LKFE')
    accelerationMaximum = accelerationMaximumKnee; %[rad/s^2]
end

%% Find velocity and acceleration
actualVelocityJoint = gradient(actualAngleJoint,time); %[rad/s]
actualVelocityJoint(isnan(actualAngleJoint)) = 0; 

actualAccelerationJoint = gradient(actualVelocityJoint,time); %[rad/s^2]
actualAccelerationJoint(isnan(actualAngleJoint)) = 0; 

%% Return warnings
if any(abs(actualVelocityJoint) > velocityMaximum)
    warning([jointName, 'velocity too high:', num2str(max(abs(actualVelocityJoint*60/2/pi))), ' [RPM]'])
end

if any(abs(actualAccelerationJoint) > accelerationMaximum)
    warning([jointName, 'Acceleration too high:', num2str(max(abs(actualAccelerationJoint))), ' [rad/s^2]'])
end