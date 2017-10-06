function [ kinem, kinemIMU ] = getKinematicsDirect( varargin )
%GETKINEMATICSDIRECT Gets kinematics directly from different dataMARCHes
angleDatas = cell(1,length(varargin));
for i = 1:length(varargin)
    angleDatas{i} = getAngleData(varargin{i});
end
stitchedAngleData = stitchAngleData(angleDatas{:});
generateBodyConstants;
[kinem, kinemIMU] = getKinematics(stitchedAngleData, bodyConstants);
end