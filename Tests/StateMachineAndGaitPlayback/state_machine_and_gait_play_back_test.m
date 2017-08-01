clc
close all
clear all

simOut = sim('stateMachineAndGaitPlayback','SimulationMode','normal','AbsTol','1e-5',...
            'SaveState','on','StateSaveName','xout',...
            'SaveOutput','on','OutputSaveName','yout',...
 'SaveFormat', 'Dataset');


%% Fetch data from model
angleLKFE = simOut.get('angleLKFE');
angleLHFE = simOut.get('angleLHFE');
angleRHFE = simOut.get('angleRHFE');
angleRKFE = simOut.get('angleRKFE');

actualAngleLHFE = simOut.get('actualAngleLHFE');
actualAngleLKFE = simOut.get('actualAngleLKFE');
actualAngleRHFE = simOut.get('actualAngleRHFE');
actualAngleRKFE = simOut.get('actualAngleRKFE');

desiredState = simOut.get('desiredState');
masterState = simOut.get('masterState');

%% Plot joint
plot_joint(actualAngleLHFE.data, angleLHFE.data, masterState.data, desiredState.data, angleLHFE.time, 'LHFE')
plot_joint(actualAngleLKFE.data, angleLKFE.data, masterState.data, desiredState.data, angleLKFE.time, 'LKFE')
plot_joint(actualAngleRHFE.data, angleRHFE.data, masterState.data, desiredState.data, angleRHFE.time, 'RHFE')
plot_joint(actualAngleRKFE.data, angleRKFE.data, masterState.data, desiredState.data, angleRKFE.time, 'RKFE')
