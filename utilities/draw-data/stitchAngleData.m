function [ stitchedData ] = stitchAngleData(varargin)
stitchedData = struct;
stitchedData.LHFE = vertcat(stitchCellMembers(varargin, 'LHFE'));
stitchedData.LKFE = vertcat(stitchCellMembers(varargin, 'LKFE'));
stitchedData.RHFE = vertcat(stitchCellMembers(varargin, 'RHFE'));
stitchedData.RKFE = vertcat(stitchCellMembers(varargin, 'RKFE'));
stitchedData.IMU = vertcat(stitchCellMembers(varargin, 'IMU'));
stitchedData.time = vertcat(stitchCellMembers(varargin, 'time'));
end

function [stitchedMembers] = stitchCellMembers(cell, member)
cellOfMembers = cell(length(cell));
for i = 1:length(cell)
    cellOfMembers{i} = cell{i}.(member);
end
stitchedMembers = vertcat(cellOfMembers{:});
end