function plot_joint(actualAngleJoint, desiredAngleJoint, masterState, desiredState, time, plotTitle)
y_labels ={'HOLDSIT(1)', 'MANUAL(2)', 'STANDINGUP(3)', 'HOLDSTAND(4)',...
        'SITTINGDOWN(5)', 'CONTINUOUSGAIT(6)', 'STAIRS(7)', 'SLOPE(8)',...
        'STONES(9)', 'SEVERE_ERROR(666)'};

figure
plot(time, desiredAngleJoint);
hold on
plot(time, actualAngleJoint);
legend('Desired angle','Actual angle')
title(plotTitle)
xlabel('time [ms]')
ylabel('angle [rad]')
grid on

figure
plot(time, masterState);
hold on
plot(time, desiredState);
set(gca, 'Ytick',[1,2,3,4,5,6,7,8,9],'YTickLabel', y_labels);
axis([0 length(desiredState) 1 9]);
title(plotTitle)
xlabel('time [ms]')
ylabel('state')
legend('masterState','desiredState')
grid on

figure
plot(time, desiredState);
set(gca, 'Ytick',[1,2,3,4,5,6,7,8,9],'YTickLabel', y_labels);
ylabel('angle [rad]')
hold on
yyaxis right
plot(time, desiredAngleJoint);
ylabel('angle [rad]')
xlabel('time [ms]')
title(plotTitle)
grid on