clc
close all
clear all

%change pwd to parent dir of this script
[PATHSTR,~,~] = fileparts(mfilename('fullpath'))
cd(PATHSTR);

simOut = sim('stateMachineAndGaitPlayback','SimulationMode','normal','AbsTol','1e-5',...
            'SaveState','on','StateSaveName','xout',...
            'SaveOutput','on','OutputSaveName','yout',...
 'SaveFormat', 'Dataset');


%% Fetch data from model
desiredAngleLKFE = simOut.get('desiredAngleLKFE').data; %[rad]
desiredAngleLHFE = simOut.get('desiredAngleLHFE').data; %[rad]
desiredAngleRHFE = simOut.get('desiredAngleRHFE').data; %[rad]
desiredAngleRKFE = simOut.get('desiredAngleRKFE').data; %[rad]

actualAngleLHFE = simOut.get('actualAngleLHFE').data; %[rad]
actualAngleLKFE = simOut.get('actualAngleLKFE').data; %[rad]
actualAngleRHFE = simOut.get('actualAngleRHFE').data; %[rad]
actualAngleRKFE = simOut.get('actualAngleRKFE').data; %[rad]

desiredState = simOut.get('desiredState').data;
masterState = simOut.get('masterState').data;
stepType = simOut.get('stepType').data;

time = simOut.get('desiredAngleLKFE').time; %[s]

%% Fix actual angle
%Sometimes the actual joint angle is accidently set too zero, I am too lazy
%to fix it in the SL model, so I 'fix' it by setting these values to nan.
actualAngleLHFE(actualAngleLHFE == 0) = nan;
actualAngleLKFE(actualAngleLKFE == 0) = nan;
actualAngleRHFE(actualAngleRHFE == 0) = nan;
actualAngleRKFE(actualAngleRKFE == 0) = nan;

%% Analyze results
[actualVelocityLHFE, actualAccelerationLHFE]= check_joint(actualAngleLHFE, desiredAngleLHFE, masterState, desiredState, time, 'LHFE');
[actualVelocityLKFE, actualAccelerationLKFE]= check_joint(actualAngleLKFE, desiredAngleLKFE, masterState, desiredState, time, 'LKFE');
[actualVelocityRHFE, actualAccelerationRHFE]= check_joint(actualAngleRHFE, desiredAngleRHFE, masterState, desiredState, time, 'RHFE');
[actualVelocityRKFE, actualAccelerationRKFE]= check_joint(actualAngleRKFE, desiredAngleRKFE, masterState, desiredState, time, 'RKFE');

%% Plot joint angle
plot_joint(actualAngleLHFE, masterState, desiredState, stepType, time, 'LHFE Angle')
plot_joint(actualAngleLKFE, masterState, desiredState, stepType, time, 'LKFE Angle')
plot_joint(actualAngleRHFE, masterState, desiredState, stepType, time, 'RHFE Angle')
plot_joint(actualAngleRKFE, masterState, desiredState, stepType, time, 'RKFE Angle')

%% Plot joint angle
plot_joint(actualVelocityLHFE, masterState, desiredState, stepType, time, 'LHFE Velocity')
plot_joint(actualVelocityLKFE, masterState, desiredState, stepType, time, 'LKFE Velocity')
plot_joint(actualVelocityRHFE, masterState, desiredState, stepType, time, 'RHFE Velocity')
plot_joint(actualVelocityRKFE, masterState, desiredState, stepType, time, 'RKFE Velocity')

%% Plot Joint Acceleration
plot_joint(actualAccelerationLHFE, masterState, desiredState, stepType, time, 'LHFE Acceleration')
plot_joint(actualAccelerationLKFE, masterState, desiredState, stepType, time, 'LKFE Acceleration')
plot_joint(actualAccelerationRHFE, masterState, desiredState, stepType, time, 'RHFE Acceleration')
plot_joint(actualAccelerationRKFE, masterState, desiredState, stepType, time, 'RKFE Acceleration')