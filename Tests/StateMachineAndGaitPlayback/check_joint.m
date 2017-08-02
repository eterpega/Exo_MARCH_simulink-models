function actualVelocityJoint = check_joint(actualAngleJoint, desiredAngleJoint, masterState, desiredState, time)
velocityMaximum = 17; %[RPM]
velocityMaximum/60*2*pi;

actualVelocityJoint = smooth(diff(actualAngleJoint)./diff(time),1);