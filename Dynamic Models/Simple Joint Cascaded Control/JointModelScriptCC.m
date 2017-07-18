%This script runs the SimpleJointModel.slx simulink model
%One can directly change the value of some important parameters

clc
close all
clear all

%define model and open
model='SimpleJointModelCC';
open_system(model);

%Define important parameters
initial_load        =   35; %in kg
initial_angle       =   0 ; %in degrees wrt horizontal
bone_dimensions     =   '[0.012, 0.5, 0.045]' ; %[W L H] originaly taken from the first test bone
bone_density        =   2700; %in kg/m^3
spring_stiffness    =   0.01;
damping_coef        =   0.001;

%Set important parameters
%use get_param to find the names of the parameters in a particular block
%get_param([model '/BlockNameHere'],'dialogparameters')
set_param([model '/initial_angle'],'RotationAngle',num2str(initial_angle));
set_param([model '/Inertia'],'Mass',num2str(initial_load));
set_param([model '/Solid'],'BrickDimensions',bone_dimensions);
set_param([model '/Solid'],'Density',num2str(bone_density));
set_param([model '/Revolute Joint'],'SpringStiffness',num2str(spring_stiffness));
set_param([model '/Revolute Joint'],'DampingCoefficient',num2str(damping_coef));

%Run model
simout = sim(model);

%Plot joint torque and angular acceleration
figure;
plot(joint_torque);
title('Joint Torque in N.m')
figure
plot(joint_acceleration);
title('Joint Acceleration in rad/s^2');