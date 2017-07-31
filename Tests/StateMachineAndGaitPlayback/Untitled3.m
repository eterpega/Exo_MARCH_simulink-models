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

angleLKFE = simOut.get('angleLKFE');
desiredState = simOut.get('desiredState');


figure
plot(desiredState.data)
set(gca, 'Ytick',[1,2,3,4,5,6,7,8,9],'YTickLabel', y_labels);
ylabel('angle [rad]')
hold on
yyaxis right
plot(angleLKFE.data);
ylabel('angle [rad]')
xlabel('time [ms]')

title('State and joitn angle')
grid on