function get_data_march(name)
%HOW TO USE
%for one, script only works when usb stick is still in the target and pc is connected to
%target!
%add a target scope to the simlink model
%set the scope type to file and change the number of sampels to ~500.000
%set the name to "X.dat" to what you want it
%Then here add the code to open and plot the data.

% Attach to the target computer file system.
close all;clear;clc;
% f=SimulinkRealTime.fileSystem;
% 
% read = fopen(f,name);
% rawData = fread(f,read);
% f.fclose(read);


dataStruct = SimulinkRealTime.utils.getFileScopeData(rawData);
numSignal = dataStruct.numSignals;
sizeArray = size(dataStruct.data);
length = sizeArray(1);
nameSignal = cell(numSignal,1);
data = zeros(length,1);
for j = 1:numSignal
    nameSignal(j) = regexprep(reverse(strtok(reverse(dataStruct.signalNames(j)),'/')),' ','');
end
time = dataStruct.data(:,numSignal);

for i = 1:(numSignal-1)
    data = dataStruct.data(:,i);
    figure(i)
    plot(time,data);
    title(['Figure ',int2str(i)]);
    xlabel(nameSignal(numSignal))
    ylabel(nameSignal(i))
    save(char('Data_files/',strcat(strtok(name,'.'),nameSignal(i))),data)
end


end