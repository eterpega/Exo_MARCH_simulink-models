clc
close all
clear all

y_labels ={'HOLDSIT(1)', 'MANUAL(2)', 'STANDINGUP(3)', 'HOLDSTAND(4)',...
        'SITTINGDOWN(5)', 'CONTINUOUSGAIT(6)', 'STAIRS(7)', 'SLOPE(8)',...
        'STONES(9)', 'SEVERE_ERROR(666)'};

simOut = sim('stateMachineAndGaitPlayback','SimulationMode','normal','AbsTol','1e-5',...
            'SaveState','on','StateSaveName','xout',...
            'SaveOutput','on','OutputSaveName','yout',...
 'SaveFormat', 'Dataset');


%% Fetch data from model
angleLKFE = simOut.get('angleLKFE');
angleLHFE = simOut.get('angleLHFE');
angleRHKFE = simOut.get('angleRHFE');
angleRKFE = simOut.get('angleRKFE');
desiredState = simOut.get('desiredState');
masterState = simOut.get('masterState');
actualAngleLKFE = simOut.get('actualDynamics');

%% Plot joint
plot_joint(actualAngleLKFE.data, angleLKFE.data, masterState.data, desiredState.data, angleLKFE.time, 'LKFE')