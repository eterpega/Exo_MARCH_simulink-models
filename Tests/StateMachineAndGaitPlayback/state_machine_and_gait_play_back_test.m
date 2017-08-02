clc
close all
clear all

simOut = sim('stateMachineAndGaitPlayback','SimulationMode','normal','AbsTol','1e-5',...
            'SaveState','on','StateSaveName','xout',...
            'SaveOutput','on','OutputSaveName','yout',...
 'SaveFormat', 'Dataset');


%% Fetch data from model
desiredAngleLKFE = simOut.get('desiredAngleLKFE');
desiredAngleLHFE = simOut.get('desiredAngleLHFE');
desiredAngleRHFE = simOut.get('desiredAngleRHFE');
desiredAngleRKFE = simOut.get('desiredAngleRKFE');

actualAngleLHFE = simOut.get('actualAngleLHFE');
actualAngleLKFE = simOut.get('actualAngleLKFE');
actualAngleRHFE = simOut.get('actualAngleRHFE');
actualAngleRKFE = simOut.get('actualAngleRKFE');

desiredState = simOut.get('desiredState');
masterState = simOut.get('masterState');
stepType = simOut.get('stepType');

LHFEInputLookUpTable = simOut.get('LHFEInput').data;
LHFEInputLookUpTable = LHFEInputLookUpTable(1,:);
LHFEOutputLookUpTable = simOut.get('LHFEOutput').data;

time = simOut.get('LHFEOutput').time;
%% Plot joint
plot_joint(actualAngleLHFE.data, desiredAngleLHFE.data, masterState.data, desiredState.data, stepType.data, desiredAngleLHFE.time, 'LHFE')
plot_joint(actualAngleLKFE.data, desiredAngleLKFE.data, masterState.data, desiredState.data, stepType.data, desiredAngleLKFE.time, 'LKFE')
plot_joint(actualAngleRHFE.data, desiredAngleRHFE.data, masterState.data, desiredState.data, stepType.data, desiredAngleRHFE.time, 'RHFE')
plot_joint(actualAngleRKFE.data, desiredAngleRKFE.data, masterState.data, desiredState.data, stepType.data, desiredAngleRKFE.time, 'RKFE')

%% Analyze weird lookup
figure
plot(time(1:length(LHFEInputLookUpTable)), LHFEInputLookUpTable, 'o')
hold on
plot(time, LHFEOutputLookUpTable, 'o')
title('Look up table issue')
xlabel('Time [ms]')
ylabel('Angle [degree]')
legend('Input look up table','Output look up table')
grid on
%% Analyze results
desiredVelocity = check_joint(actualAngleLHFE.data, desiredAngleLHFE.data, masterState.data, desiredState.data, desiredAngleLHFE.time);
figure
plot(desiredAngleLHFE.time(1:(end-1)), desiredVelocity*60/(2*pi))
axis([0 , desiredAngleLHFE.time((end-1)),-20, 20 ])
figure
plot(actualAngleLHFE.time, actualAngleLHFE.data, 'o')

time = desiredAngleLHFE.time;