function plot_joint(actualAngleJoint, desiredAngleJoint, masterState, desiredState, stepType, time, plotTitle)

yLabelsStates ={'HOLDSIT(1)', 'MANUAL(2)', 'STANDINGUP(3)', 'HOLDSTAND(4)',...
        'SITTINGDOWN(5)', 'CONTINUOUSGAIT(6)', 'STAIRS(7)', 'SLOPE(8)',...
        'STONES(9)', 'SEVERE_ERROR(666)'};
yLabelsStepTypes ={'FULLSTEP(1)', 'HALFSTEPSTART(2)', 'HALFSTEPSTOP(3)', ...
'STAIRSTEP(4)','STANDUP(5)','SITDOWN(6)','HOMESTAND(7)','HOMESIT(8)',...
'NOSTEP(9)'};
scrsz = get(groot,'ScreenSize');

%% Angles
figure('Visible','On','Position',[1 scrsz(4)/2 scrsz(3)/2 scrsz(4)/2])
plot(time, desiredAngleJoint);
hold on
plot(time, actualAngleJoint);
legend('Desired angle','Actual angle')
title(plotTitle)
xlabel('time [ms]')
ylabel('angle [rad]')
grid on
saveas(gcf,[plotTitle, 'Angles'],'fig')
close all

%% States
figure('Visible','On','Position',[1 scrsz(4)/2 scrsz(3)/2 scrsz(4)/2])
plot(time, masterState);
hold on
plot(time, desiredState);
set(gca, 'Ytick',[1,2,3,4,5,6,7,8,9],'YTickLabel', yLabelsStates);
axis([0 length(desiredState)/500 1 9]);
title(plotTitle)
xlabel('time [ms]')
ylabel('state')
legend('masterState','desiredState')
grid on
saveas(gcf,[plotTitle, 'States'],'fig')
close all

%% Step Types
figure('Visible','On','Position',[1 scrsz(4)/2 scrsz(3)/2 scrsz(4)/2])
plot(time, stepType);
set(gca, 'Ytick',[1,2,3,4,5,6,7,8,9],'YTickLabel', yLabelsStepTypes);
axis([0 length(desiredState)/500 1 9]);
title(plotTitle)
xlabel('time [ms]')
ylabel('step type')
grid on
saveas(gcf,[plotTitle, 'StepType'],'fig')
close all

%%StatesandAngles
figure('Visible','On','Position',[1 scrsz(4)/2 scrsz(3)/2 scrsz(4)/2])
plot(time, desiredState);
set(gca, 'Ytick',[1,2,3,4,5,6,7,8,9],'YTickLabel', yLabelsStates);
ylabel('angle [rad]')
hold on
yyaxis right
plot(time, desiredAngleJoint);
ylabel('angle [rad]')
xlabel('time [ms]')
title(plotTitle)
grid on
saveas(gcf,[plotTitle, 'StatesAndAngles'],'fig')
close all