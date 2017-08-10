function plot_joint(actualAngleJoint, masterState, desiredState, stepType, time, plotTitle)
%MasterStates
yLabelsMasterStates ={'HOLDSIT(1)', 'MANUAL(2)', 'STANDINGUP(3)', 'HOLDSTAND(4)',...
        'SITTINGDOWN(5)', 'CONTINUOUSGAIT(6)', 'STAIRS(7)', 'SLOPE(8)',...
        'STONES(9)', 'STAIRSDOWN(10)','INITIALIZINGSTANDUP(11)',...
        'WAITINGSTANDUP(12)','SEVERE_ERROR(666)'};
    
    
%Step types
yLabelsStepTypes ={'FULLSTEP(1)', 'HALFSTEPSTART(2)', 'HALFSTEPSTOP(3)', ...
'STAIRSUP(4)','STANDUP(5)','SITDOWN(6)','HOMESTAND(7)','HOMESIT(8)',...
'NOSTEP(9)', 'STAIRSDOWN(10)','INITIALIZESTANDUP(11)','WAITSTANDUP(12)'};
scrsz = get(groot,'ScreenSize');

if ~exist('figures', 'dir')
  mkdir('figures');
end

%% Angles
figure('Visible','On','Position',[1 scrsz(4)/2 scrsz(3)/2 scrsz(4)/2])
subplot(2,1,1)
title(plotTitle)
plot(time, actualAngleJoint);
legend('Actual angle')
title(plotTitle)
xlabel('time [ms]')
ylabel('angle [rad]')
grid on

%% States
subplot(2,1,2)
plot(time, masterState);
hold on
plot(time, desiredState);
set(gca, 'Ytick',[1,2,3,4,5,6,7,8,9,10, 11, 12],'YTickLabel', yLabelsMasterStates);
axis([0 length(desiredState)/500 1 12]);
xlabel('time [ms]')
ylabel('state')
legend('masterState','desiredState')
grid on
saveas(gcf,['figures/',plotTitle, ' And States'],'fig')
close all

%% Angles
figure('Visible','On','Position',[1 scrsz(4)/2 scrsz(3)/2 scrsz(4)/2])
subplot(2,1,1)
title(plotTitle)
plot(time, actualAngleJoint);
legend('Actual angle')
title(plotTitle)
xlabel('time [ms]')
ylabel('angle [rad]')
grid on

%% Step Types
subplot(2,1,2)
plot(time, stepType);
set(gca, 'Ytick',[1,2,3,4,5,6,7,8,9, 10, 11, 12],'YTickLabel', yLabelsStepTypes);
axis([0 length(desiredState)/500 1 12]);
xlabel('time [ms]')
ylabel('step type')
grid on
saveas(gcf,['figures/', plotTitle, ' And Step Types'],'fig')
close all