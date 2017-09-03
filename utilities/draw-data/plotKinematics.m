function plotKinematics( marchKinematics, startTime )
%PLOTKINEMATICS Plots given kinematics of marchII
if nargin < 2
    startTime = 1;
end
samples = length(marchKinematics.time);
sampleStep = 25;
waitTime = 0.01;
h = figure;

for i = startTime:sampleStep:samples
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
plot3(x,z,y);% we use y as height, matlab uses z
axis([-1 1 -1 1 -1 1]);
end