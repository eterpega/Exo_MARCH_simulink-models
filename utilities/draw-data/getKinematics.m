function [ marchKinematics, marchKinematics2 ] = getKinematics( angleData, bodyConstants )
%GETBODYANGLES Computes kinematics from angleData and bodyconstants
% we start with IMU at zero position and not taking in IMU angles
% finally, we rotate everything by the IMU angles
% we start with:
% x is forward
% y is up
% z is sideways
marchKinematics = struct;
samples = length(angleData.time);
marchKinematics.imuPos = zeros(3,samples);
marchKinematics.leftHip = marchKinematics.imuPos + bodyConstants.imuOffset;
marchKinematics.rightHip = marchKinematics.leftHip - [0; bodyConstants.hipWidth; 0]; 
marchKinematics.leftKnee = marchKinematics.leftHip + [sin(-angleData.LHFE'); zeros(1,samples); -cos(-angleData.LHFE')]*bodyConstants.upperLegLength;
marchKinematics.rightKnee = marchKinematics.rightHip + [sin(-angleData.RHFE'); zeros(1,samples); -cos(-angleData.RHFE')]*bodyConstants.upperLegLength;
marchKinematics.leftAnkle = marchKinematics.leftKnee + [sin(-angleData.LHFE'+angleData.LKFE'); zeros(1,samples); -cos(-angleData.LHFE' + angleData.LKFE')]*bodyConstants.lowerLegLength;
marchKinematics.rightAnkle = marchKinematics.rightKnee + [sin(-angleData.RHFE'+angleData.RKFE'); zeros(1,samples); -cos(-angleData.RHFE' + angleData.RKFE')]*bodyConstants.lowerLegLength;

imuEulerAngles = fliplr(angleData.IMU);
imuTransform = eul2rotm(imuEulerAngles); % eul2rotm wants ZYX
marchKinematics2 = struct;
marchKinematics2.imuPos = zeros(3,samples);
marchKinematics2.leftHip = zeros(3,samples);
marchKinematics2.leftKnee = zeros(3,samples);
marchKinematics2.leftAnkle = zeros(3,samples);
marchKinematics2.rightHip = zeros(3,samples);
marchKinematics2.rightKnee = zeros(3,samples);
marchKinematics2.rightAnkle = zeros(3,samples);
% rowswap = [1];
coordTransform = eul2rotm([0 -pi/2 0]); %roty(90); %[-1 0 0; 0 1 0; 0 0 1];
% coordTransform(:,fliplr(rowswap)) = coordTransform(:,rowswap);
for i = 1:samples
    marchKinematics2.leftHip(:,i) = imuTransform(:,:,i)*coordTransform*marchKinematics.leftHip(:,i);
    marchKinematics2.leftKnee(:,i) = imuTransform(:,:,i)*coordTransform*marchKinematics.leftKnee(:,i);
    marchKinematics2.leftAnkle(:,i) = imuTransform(:,:,i)*coordTransform*marchKinematics.leftAnkle(:,i);
    marchKinematics2.rightHip(:,i) = imuTransform(:,:,i)*coordTransform*marchKinematics.rightHip(:,i);
    marchKinematics2.rightKnee(:,i) = imuTransform(:,:,i)*coordTransform*marchKinematics.rightKnee(:,i);
    marchKinematics2.rightAnkle(:,i) = imuTransform(:,:,i)*coordTransform*marchKinematics.rightAnkle(:,i);
end

marchKinematics.time = angleData.time;
marchKinematics2.time = angleData.time;
end