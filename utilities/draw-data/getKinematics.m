function [ kinematics, imuKinematics ] = getKinematics( angleData, bodyConstants )
%GETBODYANGLES Computes kinematics from angleData and bodyconstants
% we start with IMU at zero position and not taking in IMU angles
% finally, we rotate everything by the IMU angles
if nargin < 2
    generateBodyConstants;
end
if ~isfield(angleData,'LHFE')
    kinematics = 0;
    imuKinematics = 0;
    disp('Provided angleData is missing needed fields!');
    return;
else
    if(isstruct(angleData.LHFE))
        % then angleData is actually dataMARCH, so get corresponding
        % angleData from it
        angleData = getAngleData(angleData);
    end
end        

kinematics = struct;
samples = length(angleData.time);
kinematics.imuPos = zeros(3,samples);
kinematics.leftHip = kinematics.imuPos - bodyConstants.imuOffset;
kinematics.rightHip = kinematics.leftHip + [0; bodyConstants.hipWidth; 0]; 
kinematics.leftKnee = kinematics.leftHip + [sin(-angleData.LHFE'); zeros(1,samples); -cos(-angleData.LHFE')]*bodyConstants.upperLegLength;
kinematics.rightKnee = kinematics.rightHip + [sin(-angleData.RHFE'); zeros(1,samples); -cos(-angleData.RHFE')]*bodyConstants.upperLegLength;
kinematics.leftAnkle = kinematics.leftKnee + [sin(-angleData.LHFE'+angleData.LKFE'); zeros(1,samples); -cos(-angleData.LHFE' + angleData.LKFE')]*bodyConstants.lowerLegLength;
kinematics.rightAnkle = kinematics.rightKnee + [sin(-angleData.RHFE'+angleData.RKFE'); zeros(1,samples); -cos(-angleData.RHFE' + angleData.RKFE')]*bodyConstants.lowerLegLength;

imuEulerAngles = fliplr(angleData.IMU);
imuTransform = eul2rotm(imuEulerAngles); % eul2rotm wants ZYX
imuKinematics = struct;
imuKinematics.imuPos = zeros(3,samples);
imuKinematics.leftHip = zeros(3,samples);
imuKinematics.leftKnee = zeros(3,samples);
imuKinematics.leftAnkle = zeros(3,samples);
imuKinematics.rightHip = zeros(3,samples);
imuKinematics.rightKnee = zeros(3,samples);
imuKinematics.rightAnkle = zeros(3,samples);
% rowswap = [1];
coordTransform = eul2rotm([0 -pi/2 0]); %roty(90); %[-1 0 0; 0 1 0; 0 0 1];
% coordTransform(:,fliplr(rowswap)) = coordTransform(:,rowswap);
for i = 1:samples
    imuKinematics.leftHip(:,i) = imuTransform(:,:,i)*coordTransform*kinematics.leftHip(:,i);
    imuKinematics.leftKnee(:,i) = imuTransform(:,:,i)*coordTransform*kinematics.leftKnee(:,i);
    imuKinematics.leftAnkle(:,i) = imuTransform(:,:,i)*coordTransform*kinematics.leftAnkle(:,i);
    imuKinematics.rightHip(:,i) = imuTransform(:,:,i)*coordTransform*kinematics.rightHip(:,i);
    imuKinematics.rightKnee(:,i) = imuTransform(:,:,i)*coordTransform*kinematics.rightKnee(:,i);
    imuKinematics.rightAnkle(:,i) = imuTransform(:,:,i)*coordTransform*kinematics.rightAnkle(:,i);
end

kinematics.time = angleData.time;
imuKinematics.time = angleData.time;
end