function desiredVelocity = check_joint(actualAngleJoint, desiredAngleJoint, masterState, desiredState, time)
velocityMaximum = 17; %[RPM]
velocityMaximum/60*2*pi;

desiredVelocity = diff(desiredAngleJoint)./diff(time);