function get_data_march(name)
%HOW TO USE
%for one, script only works when usb stick is still in the target and pc is connected to
%target!
%add a target scope to the simlink model
%set the scope type to file and change the number of sampels to ~500.000
%set the name to "X.dat" to what you want it
%Then here add the code to open and plot the data.

% Attach to the target computer file system.
close all;clc;

%% Reading datalog file from target
% f=SimulinkRealTime.fileSystem;
% 
% read = fopen(f,name);
% rawData = fread(f,read);
% f.fclose(read);

%For testing purposes
read = fopen(name);
rawData = fread(read);
fclose(read);

%% Prepare saving directory
directoryForSave = strcat(strtok(name,'/'),'/Data_measurements/',strtok(reverse(strtok(reverse(name),'/')),'.'),'/');
mkdir(directoryForSave);

%% Process and save the raw data
dataStruct = SimulinkRealTime.utils.getFileScopeData(rawData);
numSignal = dataStruct.numSignals;
save(strcat(directoryForSave,'AllResults','.mat'),'dataStruct');

%% Preparing signal names to be nice
nameSignal = regexprep(reverse(strtok(reverse(dataStruct.signalNames),'/')),' ','');
time = dataStruct.data(:,numSignal);

%% Finding number of rows
totalSize = size(dataStruct.data);
numRows = totalSize(1);

%% Plotting and saving the statuswords
indexStatuswords = find(contains(nameSignal,'statusword'));
dataStatuswords = zeros(numRows,length(indexStatuswords));
for i = 1:length(indexStatuswords)
     dataStatuswords(:,i) = dataStruct.data(:,indexStatuswords(i));
end
save(strcat(directoryForSave,'statuswords'),'dataStatuswords');
 
%% Plotting and saving the angles
indexAngles = find(contains(nameSignal,'Angle'));
dataAngles = zeros(numRows,length(indexAngles));
legendCell = cell(length(indexAngles),1);
figure(1)
title('Angles MARCH')
for j = 1:length(indexAngles)
     dataAngles(:,j) = dataStruct.data(:,indexAngles(j));
     plot(time,dataAngles(:,j));
     hold on
     legendCell(j) = nameSignal(indexAngles(j));
end
legend(legendCell);
xlabel('time [s]')
ylabel('angle [deg]')
save(strcat(directoryForSave,'angles'),'dataAngles');
 
%% Plotting and saving the velocities
indexVelocities = find(contains(nameSignal,'Velocity'));
dataVelocities = zeros(numRows,length(indexVelocities));
for k = 1:length(indexVelocities)
     dataVelocities(:,k) = dataStruct.data(:,indexVelocities(k));
end
save(strcat(directoryForSave,'velocities'),'dataVelocities');

%% Plotting and saving the torques
indexTorques = find(contains(nameSignal,'Torque'));
dataTorques = zeros(numRows,length(indexTorques));
for l = 1:length(indexTorques)
     dataTorques(:,l) = dataStruct.data(:,indexTorques(l));
end
save(strcat(directoryForSave,'torques'),'dataTorques');

%% Plotting and saving the MISOs
indexMISOs = find(contains(nameSignal,'MISO'));
dataMISOs = zeros(numRows,length(indexMISOs));
for m = 1:length(indexMISOs)
     dataMISOs(:,m) = dataStruct.data(:,indexMISOs(m));
end
save(strcat(directoryForSave,'MISOs'),'dataMISOs');

%% Plotting and saving the 
indexTuningStatuses = find(contains(nameSignal,'tuningStatus'));
data = zeros(numRows,length(index));
 for i = 1:length(index)
     data(:,i) = dataStruct.data(:,index(i));
 end
 save(strcat(directoryForSave,''),'');

%% Plotting and saving the 
indexCurrents = find(contains(nameSignal,'Current'));
data = zeros(numRows,length(index));
 for i = 1:length(index)
     data(:,i) = dataStruct.data(:,index(i));
 end
 save(strcat(directoryForSave,''),'');

%% Plotting and saving the 
indexOpMode = find(contains(nameSignal,'opMode'));
data = zeros(numRows,length(index));
 for i = 1:length(index)
     data(:,i) = dataStruct.data(:,index(i));
 end
 save(strcat(directoryForSave,''),'');

%% Plotting and saving the 
indexTimestamps = find(contains(nameSignal,{'timestamp','Timestamp'}));
data = zeros(numRows,length(index));
 for i = 1:length(index)
     data(:,i) = dataStruct.data(:,index(i));
 end
 save(strcat(directoryForSave,''),'');

%% Plotting and saving the 
indexTemperatures = find(contains(nameSignal,{'Temperature','temperature'}));
data = zeros(numRows,length(index));
 for i = 1:length(index)
     data(:,i) = dataStruct.data(:,index(i));
 end
 save(strcat(directoryForSave,''),'');

%% Plotting and saving the 
indexErrors = find(contains(nameSignal,{'error','Error'}));
data = zeros(numRows,length(index));
 for i = 1:length(index)
     data(:,i) = dataStruct.data(:,index(i));
 end
 save(strcat(directoryForSave,''),'');

%% Plotting and saving the 
data = zeros(numRows,length(index));
 for i = 1:length(index)
     data(:,i) = dataStruct.data(:,index(i));
 end
 save(strcat(directoryForSave,''),'');

%% Plotting and saving the 
data = zeros(numRows,length(index));
 for i = 1:length(index)
     data(:,i) = dataStruct.data(:,index(i));
 end
 save(strcat(directoryForSave,''),'');

%% Plotting and saving the 
data = zeros(numRows,length(index));
 for i = 1:length(index)
     data(:,i) = dataStruct.data(:,index(i));
 end
 save(strcat(directoryForSave,''),'');

%% Plotting and saving the 
data = zeros(numRows,length(index));
 for i = 1:length(index)
     data(:,i) = dataStruct.data(:,index(i));
 end
 save(strcat(directoryForSave,''),'');

%% Plotting and saving the 
data = zeros(numRows,length(index));
 for i = 1:length(index)
     data(:,i) = dataStruct.data(:,index(i));
 end
 save(strcat(directoryForSave,''),'');

%% Plotting and saving the 
data = zeros(numRows,length(index));
 for i = 1:length(index)
     data(:,i) = dataStruct.data(:,index(i));
 end
 save(strcat(directoryForSave,''),'');



% for i = 1:(numSignal-1)
%     data = dataStruct.data(:,i);
%     figure(i)
%     plot(time,data);
%     title(['Figure ',int2str(i)]);
%     xlabel(nameSignal(numSignal))
%     ylabel(nameSignal(i))
%     
%     
% end


end