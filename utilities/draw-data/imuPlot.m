roll = dataMARCH.IMU.receivedFromIMU.data(:,1)-pi;
pitch = dataMARCH.IMU.receivedFromIMU.data(:,2)-pi;
yaw = dataMARCH.IMU.receivedFromIMU.data(:,3)-pi;
figure;
waitTime = 0.0005;
inputX = [-1; 0; 0];
inputY = [0; 1; 0];
inputZ = [0; 0; 1];
input = [inputX inputY inputZ];
startTime = 74000;
endTime = 85000;
for i = startTime:endTime
    rotMatrix = eul2rotm([roll(i) pitch(i) yaw(i)]);
    output = rotMatrix * input;
    plot3([0; output(1,1)], [0; output(1,2)], [0; output(1,3)],'r');
    hold on;
    plot3([0; output(2,1)], [0; output(2,2)], [0; output(2,3)],'g');
    plot3([0; output(3,1)], [0; output(3,2)], [0; output(3,3)],'b');
    hold off;
    axis([-1 1 -1 1 -1 1]);
    %pause(waitTime);
    drawnow;
end