% march angles: 
% left foot, left knee, left hip,
% center, in front of center, center
% right hip, right knee, right foot

% stances: 
% reg: regular
% FOB: front on belly
% 

marchRegX = [ 0     0     0    0 0.25 0  0    0     0];
marchRegY = [-0.25 -0.25 -0.25 0 0    0  0.25 0.25  0.25];
marchRegZ = [-1    -0.5   0    0 0    0  0   -0.5  -1];
marchReg = [marchRegX; marchRegY; marchRegZ];
plot3(marchRegX, marchRegY, marchRegZ);
axis([-1 1 -1 1 -1 1]);
title('March regular')

marchFOB = roty(90) * marchReg; % -90 because the rotation needed as seen from the positive x-axis is clockwise, and counterclockwise is negative
figure;
plot3(marchFOB(1,:),marchFOB(2,:),marchFOB(3,:));
axis([-1 1 -1 1 -1 1]);
title('March flat on belly')

imuAnglesMarchReg = roty(90);
corrRotation = roty(90);
mirror=diag([1 1 1]);
coordTransform = mirror*corrRotation;
figure;
plot3(marchRegX, marchRegY, marchRegZ);
hold on;
imuMarchReg = imuAnglesMarchReg\coordTransform*marchReg;
plot3(imuMarchReg(1,:), imuMarchReg(2,:), imuMarchReg(3,:));
hold off;
axis([-1 1 -1 1 -1 1]);

imuAnglesMarchFOB = eul2rotm([0 0 0]);
figure;
plot3(marchFOB(1,:),marchFOB(2,:),marchFOB(3,:));
hold on;
imuMarchFOB = imuAnglesMarchFOB\coordTransform*marchReg;
plot3(imuMarchFOB(1,:), imuMarchFOB(2,:), imuMarchFOB(3,:));
hold off;
axis([-1 1 -1 1 -1 1]);

