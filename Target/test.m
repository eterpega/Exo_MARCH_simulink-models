% Initialize
clear all
close all
clc
udp = dsp.UDPSender();
s = splineController();
r = robotics();
base = 1;
q = [0 -1.92 1.8 0 -1.92 1.8];


r.q = q;
% Calculate Trajectories
samples = 5000;
q_hfe = linspace(q(2),0,4000);
q_kfe = linspace(q(3),0,samples);

q_t = zeros(samples,6);

% Visualize
wait = samples-length(q_hfe);
for i = 1:samples
    
    q(3) = q_kfe(i);
    q(6) = q_kfe(i);
    if(i > wait)
        q(2) = q_hfe(i-wait);
        q(5) = q_hfe(i-wait);
    end
    
    step(udp,q);
    pause(1/500);
end


