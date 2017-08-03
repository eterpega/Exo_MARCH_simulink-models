clc
close all
clear all

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

%% Plot joint
plot_joint(actualAngleLHFE, desiredAngleLHFE, masterState, desiredState, stepType, time, 'LHFE')
plot_joint(actualAngleLKFE, desiredAngleLKFE, masterState, desiredState, stepType, time, 'LKFE')
plot_joint(actualAngleRHFE, desiredAngleRHFE, masterState, desiredState, stepType, time, 'RHFE')
plot_joint(actualAngleRKFE, desiredAngleRKFE, masterState, desiredState, stepType, time, 'RKFE')

%% Analyze results
[actualVelocity, actualAcceleration]= check_joint(actualAngleLHFE, desiredAngleLHFE, masterState, desiredState, time, 'LHFE');

figure
plot(time, actualVelocity*60/(2*pi))
title('Velocity')
xlabel('time [s]')
ylabel('velocity [RPM]')

figure
plot(time, actualAcceleration, 'o')
title('Acceleration')
xlabel('time [s]')
ylabel('acceleration [rad/s^2]')