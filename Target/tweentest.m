clc
close all
clear all
s = splineController();

s.setStepHeight(0.05).setStepLength(0.6);
trajectory = s.method('circle').setVelocity(0.5).getFullStep();

x = linspace(0,length(trajectory(3,:)),s.samples);

% X axis
plot(x,trajectory(1,:))
hold on
curve = s.getEaseTimeCurve();
for i = 1:s.samples
   y(i) = s.easeTrajectory(trajectory(1,:),i,curve); 
end
plot(x,y);

hold off


