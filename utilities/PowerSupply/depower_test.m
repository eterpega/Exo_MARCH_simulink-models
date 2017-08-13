clear all
close all
clc

%get data from file
fid=fopen('Training_Ruben_1_standUp.txt');
fmt=['%{HH:mm:ss:SSS}D %8.4f %8.4f %8.2f'];
data=textscan(fid,fmt,'HeaderLines',1,'Delimiter','\t');
%data{5}=data{2}*.data{3};

%plot data
figure
subplot(4,1,1)
plot(data{1},data{2})
title('Current (A)')
%plot voltage
subplot(4,1,2)
plot(data{1},data{3})
title('Voltage (V)')
%plot power
subplot(4,1,3)
plot(data{1},data{4})
title('PS Power (W)')
%plot computed power
% subplot(4,1,4)
% plot(data{1},data{5})
% title('Computed Power (W)')