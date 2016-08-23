clc
clear all
s = splineController();
r = robotics();

curve = s.getCustomEaseTimeCurve(0.3,1);
r.refresh();
r.inverseKinematics();
q_f = r.q;

q_i = [0 -2.15 1.8 0 -2.15 1.8];

q_t = s.getStandupJointTrajectory(q_i,q_f);

for i = 1:length(q_t)
   q(i) = s.easeTrajectory(q_t(:,2),i,curve); 
end

plot(q_t(:,2))
hold on
plot(q);
