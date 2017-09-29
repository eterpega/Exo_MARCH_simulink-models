function [ angleData ] = getAngleData( dataArg )
%GETANGLEDATA Extracts all relevant angle data of provided dataMARCH
if(ischar(dataArg))
    % then load the provided file
    S = load(dataArg);
    marchData = S.dataMARCH;
elseif isstruct(dataArg)
    marchData = dataArg;
else
    disp('Invalid argument provided!');
    disp('Usage: getAngleData(fileName) or getAngleData(marchDataStruct)');
    return;
end

angleData = struct;
angleData.LHFE = getJointAngles(marchData.LHFE);
angleData.LKFE = getJointAngles(marchData.LKFE);
angleData.RHFE = getJointAngles(marchData.RHFE);
angleData.RKFE = getJointAngles(marchData.RKFE);

angleData.IMU = [marchData.IMU.receivedFromIMU.data(:,1) - pi ... % roll
    (marchData.IMU.receivedFromIMU.data(:,2) - pi) ... % pitch
    marchData.IMU.receivedFromIMU.data(:,3) - pi]; % yaw
angleData.time = marchData.IMU.time;
end

function [jointAngles] = getJointAngles(jointStruct)
receiveStruct = jointStruct.receivedFromSOMANET;
angleIndex = find(contains(receiveStruct.signalNames,'actualAngle'),1);
jointAngles = receiveStruct.data(:,angleIndex)/180*pi; %these are angles; convert to radians
end