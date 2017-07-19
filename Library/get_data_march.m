function get_data_march(nameOnMaster,nameOfFileToSave)
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
f=SimulinkRealTime.fileSystem;
read = fopen(f,nameOnMaster);
rawData = fread(f,read);
f.fclose(read);

%For testing purposes
% nameOnMaster = 'Data_files/MARCH_05TEST.dat';
% read = fopen(nameOnMaster);
% rawData = fread(read);
% fclose(read);

%% Prepare saving directory
dateNow = datetime('now');
dateNow.Format = 'uuuu_MM_dd_HH:mm:ss';
dateNowShort = dateNow;
dateNowShort.Format = 'uuuu-MM-dd';
timeForSave = dateNow;
timeForSave.Format = 'HH.mm';
directoryForSave = strcat('Data_files/','Data_measurements/',char(dateNowShort),'/'); %Testing: strcat(strtok(name,'/'),'/Data_measurements/',strtok(reverse(strtok(reverse(name),'/')),'.'),'/');
mkdir(directoryForSave);

%% Process and save the raw data
dataStruct = SimulinkRealTime.utils.getFileScopeData(rawData);
numSignal = dataStruct.numSignals;
save(strcat(directoryForSave,char(timeForSave),'_',nameOfFileToSave,'_','AllResults'),'dataStruct');

%% Preparing signal names to be nice
nameSignal = regexprep(reverse(strtok(reverse(dataStruct.signalNames),'/')),' ','');
time = dataStruct.data(:,numSignal);

%% Create structs
jointNames = {'LHFE' 'LKFE' 'RHFE' 'RKFE'};
jointFields = {'receivedFromSOMANET' 'sendToSOMANET' 'jointConfig' 'temperature'};
 % make struct for each joint
for j = 1:length(jointNames)
    
    % make nested struct for each joint field
    for i = 1:length(jointFields)
        dataMARCH.(char(jointNames(j))).(char(jointFields(i))) = struct('data',[]);
        
        % Find out where what data is stored so the data can be put in the
        % appropriate field in the structure.
        findJointName = contains(nameSignal,jointNames(j));
        findJointField = contains(dataStruct.signalNames,jointFields(i));
        
        % Using dataMARCH struct to store the indices for where what data is
        dataMARCH.(char(jointNames(j))).(char(jointFields(i))).indices = find((findJointName & findJointField));
        
        % Store the signal names and the data in the structure
        for k = 1:length(dataMARCH.(char(jointNames(j))).(char(jointFields(i))).indices)
            
        dataMARCH.(char(jointNames(j))).(char(jointFields(i))).signalNames(k) = nameSignal(dataMARCH.(char(jointNames(j))).(char(jointFields(i))).indices(k));
        dataMARCH.(char(jointNames(j))).(char(jointFields(i))).data(:,k) = dataStruct.data(:,dataMARCH.(char(jointNames(j))).(char(jointFields(i))).indices(k));
        
        end
        
        % Remove the indices field again
        dataMARCH.(char(jointNames(j))).(char(jointFields(i))) = rmfield( dataMARCH.(char(jointNames(j))).(char(jointFields(i))),'indices');
    end
    dataMARCH.(char(jointNames(j))).time = time;
    nameSave = char(strcat(directoryForSave,'struct',jointNames(j)));
    jointStruct = dataMARCH.(char(jointNames(j)));
    save(nameSave,'jointStruct');
end

end