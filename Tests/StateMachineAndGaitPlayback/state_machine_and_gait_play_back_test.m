clc
close all
clear all

simOut = sim('stateMachineAndGaitPlayback','SimulationMode','normal','AbsTol','1e-5',...
            'SaveState','on','StateSaveName','xout',...
            'SaveOutput','on','OutputSaveName','yout',...
 'SaveFormat', 'Dataset');


%% Fetch data from model
angleLKFE = simOut.get('desiredAngleLKFE');
angleLHFE = simOut.get('desiredAngleLHFE');
angleRHFE = simOut.get('desiredAngleRHFE');
angleRKFE = simOut.get('desiredAngleRKFE');

actualAngleLHFE = simOut.get('actualAngleLHFE');
actualAngleLKFE = simOut.get('actualAngleLKFE');
actualAngleRHFE = simOut.get('actualAngleRHFE');
actualAngleRKFE = simOut.get('actualAngleRKFE');

desiredState = simOut.get('desiredState');
masterState = simOut.get('masterState');
stepType = simOut.get('stepType');

%% Plot joint
plot_joint(actualAngleLHFE.data, angleLHFE.data, masterState.data, desiredState.data, stepType.data, angleLHFE.time, 'LHFE')
plot_joint(actualAngleLKFE.data, angleLKFE.data, masterState.data, desiredState.data, stepType.data, angleLKFE.time, 'LKFE')
plot_joint(actualAngleRHFE.data, angleRHFE.data, masterState.data, desiredState.data, stepType.data, angleRHFE.time, 'RHFE')
plot_joint(actualAngleRKFE.data, angleRKFE.data, masterState.data, desiredState.data, stepType.data, angleRKFE.time, 'RKFE')

%%
desiredVelocity = check_joint(actualAngleLHFE.data, angleLHFE.data, masterState.data, desiredState.data, angleLHFE.time);
figure
plot(desiredVelocity*60/(2*pi))