function plotKinematics( marchKinematics, startTime, endTime)
%PLOTKINEMATICS Plots given kinematics of marchII
if nargin < 3
    endTime = length(marchKinematics.time);
    if nargin < 2
        startTime = 1;
    end
end
sampleStep = 25;
waitTime = 0.01;
for i = startTime:sampleStep:endTime
    drawFrame(marchKinematics, i);
    drawnow
    pause(waitTime);
end

end

function drawFrame(kinematics, timeIndex)
i = timeIndex;
x = [kinematics.leftAnkle(1,i) kinematics.leftKnee(1,i) kinematics.leftHip(1,i) ...
    kinematics.rightHip(1,i) kinematics.rightKnee(1,i) kinematics.rightAnkle(1,i)];
y = [kinematics.leftAnkle(2,i) kinematics.leftKnee(2,i) kinematics.leftHip(2,i) ... 
    kinematics.rightHip(2,i) kinematics.rightKnee(2,i) kinematics.rightAnkle(2,i)];
z = [kinematics.leftAnkle(3,i) kinematics.leftKnee(3,i) kinematics.leftHip(3,i) ...
    kinematics.rightHip(3,i) kinematics.rightKnee(3,i) kinematics.rightAnkle(3,i)];
allPos = [x; y; z];
subplot(2,2,1);
plot3(x,y,z);
axis([-0.6 0.6 -0.6 0.6 -1 0.4]);
view([37.5 30]);
title(['t = ' num2str(kinematics.time(i))]);

zUp = [0;0;1];

subplot(2,2,2);
% plot3(x,y,z);
% axis([-0.6 0.6 -0.6 0.6 -1 0.4]);
% view(kinematics.leftHip(:,i));
rotatedHip = rotz(90)*kinematics.leftHip(:,i)/norm(rotz(90)*kinematics.leftHip(:,i));
rotatedHipXY = rotatedHip-(rotatedHip'*zUp)*zUp;
leftProjector = [rotatedHipXY zUp]';
left = leftProjector * allPos;
plot(left(1,:),left(2,:));
axis([-0.6 0.6 -1 0.2]);
title('Left view');

subplot(2,2,3);
% plot3(x,y,z);
% axis([-0.6 0.6 -0.6 0.6 -1 0.4]);
% view(rotz(90)*kinematics.leftHip(:,i));
rightHip = kinematics.rightHip(:,i)/norm(kinematics.rightHip(:,i));
rightHipXY = rightHip-(rightHip'*zUp)*zUp;
backProjector = [rightHipXY zUp]';
back = backProjector * allPos;
plot(back(1,:), back(2,:));
axis([-0.6 0.6 -1 0.2]);
title('Back view');

subplot(2,2,4);
topProjector = [1 0 0; 0 1 0];
top = topProjector * allPos;
plot(top(1,:), top(2,:));
axis([-1 1 -1 1]);
title('Top view');
end