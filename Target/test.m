clc;clear;close all;

rp = 105.658/1000; %[mm]
rd = 44.80/1000; %[mm]
lead = 4/1000;
springAngle = 0:0.01:133/180*pi;

l = sqrt(rp^2 + rd^2 + 2*rp*rd*cos(springAngle));
% l = fliplr(l);
d = rp*rd*sin(springAngle)./l;

N = d.*2*pi/lead;


% plot(springAngle,d)
plot(springAngle,N)
figure
plot(springAngle,d)
