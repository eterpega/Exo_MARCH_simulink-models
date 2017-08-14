function [ plotFigure, data ] = plotPsuData(fileName)
%PLOTPSUDATA Fetches and plots the psuData contained in file
fid=fopen(fileName);
fmt='%{HH:mm:ss:SSS}D %8.4f %8.4f %8.2f';
data=textscan(fid,fmt,'HeaderLines',1,'Delimiter','\t');
time=data{1};
current=data{2};
voltage=data{3};
power=data{4};

%data{5}=data{2}*.data{3};

%plot data
plotFigure = figure;
subplot(3,1,1)
plot(time,current)
maxCurrent = max(current);
maxCurrentTime = time(find(current==maxCurrent,1));
hold on;
plot(maxCurrentTime, maxCurrent, 'ro');
hold off;
title('Current (A)')
%plot voltage
subplot(3,1,2)
plot(time,voltage)
minVoltage = min(voltage);
minVoltageTime = time(find(voltage==minVoltage,1));
hold on;
plot(minVoltageTime, minVoltage, 'ro');
hold off;
title('Voltage (V)')
%plot power
subplot(3,1,3)
compPower = current.*voltage;
plot(time,power, time, compPower)
maxPower = max(compPower);
maxPowerTime = time(find(compPower==maxPower, 1));
hold on;
plot(maxPowerTime, maxPower, 'ro');
hold off;
title('Power (W)')
legend('PS Power (W)','Computed Power (W)', 'Location', 'northwest');

end

