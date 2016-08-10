udp = dsp.UDPSender()
s = splineController();
r = robotics();
base = 1;
torso_delta = [0 0.1 0];

r.base = base;
r.torso_offset = [0 0.03 0];
%% Weight Shift
if(base == 1)
    torso_delta(2) = -abs(torso_delta(2));
else
    torso_delta(2) = abs(torso_delta(2));
end

torsoTrajectory = s.getWeightShift([0 r.torso(2) 0], [0 0 0]);

for i = 1:length(torsoTrajectory)
    r.weightShift(torsoTrajectory(i,:));
    r.inverseKinematics();
    
    q = r.q;
    step(udp,q);
    pause(1/2000);
end
r.refresh();
return
%% Step sequence
s.setStepHeight(0.1).setStepLength(0.3);

trajectory = s.method('circle').setVelocity(0.5).getHalfStep();
trajectory = r.transformSpline(trajectory);

% for j = 1:length(trajectory)
%     r.point = [trajectory(1,j) trajectory(2,j) trajectory(3,j)];
%     
% %     r.torso_offset = [0 0.0000*j 0 ];
%     
%     r.step();
%     r.inverseKinematics();
%     
%     q = r.q;
%     step(udp,q);
%     pause(1/2000);
% end

r.base = 1;
trajectory = s.method('circle').setVelocity(0.5).getFullStep();
trajectory = r.transformSpline(trajectory);

for j = 1:length(trajectory)
    r.point = [trajectory(1,j) trajectory(2,j) trajectory(3,j)];
    
    r.step();
    r.inverseKinematics();
    
    r.refresh();
    
    q = r.q;
    step(udp,q);
    pause(1/2000);
end


