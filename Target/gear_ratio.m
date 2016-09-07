close all
clear
clc
rd = 44.8/1000;
L0 = 75.98/1000;
rp = 105.658/1000;
angle = deg2rad(linspace(-1.5,121,1000));

offsetAngle = pi - acos((L0^2 - rp^2 - rd^2)/(-2*rp*rd));

angleCorrected = angle - offsetAngle;

l = sqrt(rp^2 + rd^2 + 2*rp*rd*cos(angleCorrected));
d = rp*rd*sin(-angleCorrected)./l;

N = rd./d;

plot(rad2deg(angle),N)