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
marchKinematics.rightHip = marchKinematics.leftHip - [0;0; bodyConstants.hipWidth]; 
marchKinematics.leftKnee = marchKinematics.leftHip + [sin(angleData.LHFE'); -cos(angleData.LHFE'); zeros(1,samples)]*bodyConstants.upperLegLength;
marchKinematics.rightKnee = marchKinematics.rightHip + [sin(angleData.RHFE'); -cos(angleData.RHFE'); zeros(1,samples)]*bodyConstants.upperLegLength;
marchKinematics.leftAnkle = marchKinematics.leftKnee + [sin(angleData.LHFE'-angleData.LKFE'); -cos(angleData.LHFE' - angleData.LKFE'); zeros(1,samples)]*bodyConstants.lowerLegLength;
marchKinematics.rightAnkle = marchKinematics.rightKnee + [sin(angleData.RHFE'-angleData.RKFE'); -cos(angleData.RHFE' - angleData.RKFE'); zeros(1,samples)]*bodyConstants.lowerLegLength;

imuTransform = eul2rotm(angleData.IMU(:,[2 3 1])); % we use y as height, matlab uses z
marchKinematics2 = struct;
marchKinematics2.imuPos = zeros(3,samples);
marchKinematics2.leftHip = zeros(3,samples);
marchKinematics2.leftKnee = zeros(3,samples);
marchKinematics2.leftAnkle = zeros(3,samples);
marchKinematics2.rightHip = zeros(3,samples);
marchKinematics2.rightKnee = zeros(3,samples);
marchKinematics2.rightAnkle = zeros(3,samples);
for i = 1:samples
    marchKinematics2.leftHip(:,i) = imuTransform(:,:,i) * marchKinematics.leftHip(:,i);
    marchKinematics2.leftKnee(:,i) = imuTransform(:,:,i) * marchKinematics.leftKnee(:,i);
    marchKinematics2.leftAnkle(:,i) = imuTransform(:,:,i) * marchKinematics.leftAnkle(:,i);
    marchKinematics2.rightHip(:,i) = imuTransform(:,:,i) * marchKinematics.rightHip(:,i);
    marchKinematics2.rightKnee(:,i) = imuTransform(:,:,i) * marchKinematics.rightKnee(:,i);
    marchKinematics2.rightAnkle(:,i) = imuTransform(:,:,i) * marchKinematics.rightAnkle(:,i);
end

marchKinematics.time = angleData.time;
marchKinematics2.time = angleData.time;
end