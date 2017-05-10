%This script runs the SimpleJointModel.slx simulink model
%One can directly change the value of some important parameters

clc
close all
clear all

%define model and open
model='SimpleJointModel';
open_system(model);

%Define important parameters
initial_load        =   40; %in kg
initial_angle       =   45; %in degrees
bone_dimensions     =   '[0.012, 0.5, 0.045]' ; %[W L H] originaly taken from the first test bone
bone_density        =   0; %in kg/m^3
spring_stiffness    =   0.1;
damping_coef        =   0.001;
sine_frequency      =   0.5 %Hz

%Set important parameters
%use get param to find the names of the parameters in a particular block
%get_param([model '/BlockNameHere'],'dialogparameters')
set_param([model '/initial_angle'],'RotationAngle',num2str(initial_angle));
set_param([model '/Inertia'],'Mass',num2str(initial_load));
set_param([model '/Solid'],'BrickDimensions',bone_dimensions);
set_param([model '/Solid'],'Density',num2str(bone_density));
set_param([model '/Revolute Joint'],'SpringStiffness',num2str(spring_stiffness));
set_param([model '/Revolute Joint'],'DampingCoefficient',num2str(damping_coef));
set_param([model '/Sine Wave'],'Frequency',num2str(sine_frequency));

%Run model
simout =sim(model);

%Plot joint torque and angular acceleration
figure;
plot(joint_torque);
title('Joint Torque in N.m')
figure
plot(joint_acceleration);
title('Joint Acceleration in rad/s^2');