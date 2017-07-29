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
nameOnMaster = 'Data_files/MARCH01.dat';
nameOfFileToSave = 'TestLog';
read = fopen(nameOnMaster);
rawData = fread(read);
fclose(read);

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
data = SimulinkRealTime.utils.getFileScopeData(rawData);
numSignal = data.numSignals;
save(strcat(directoryForSave,char(timeForSave),'_',nameOfFileToSave,'_','AllResults.mat'),'data');

%% Preparing signal names to be nice
nameSignal = regexprep(reverse(strtok(reverse(data.signalNames),'/')),' ','');
time = data.data(:,numSignal);

%% Create structs
structNames = {'LHFE' 'LKFE' 'RHFE' 'RKFE' 'GES' 'InputDevice' 'PDB' 'BMS' 'masterState'};
jointStructFields = {'receivedFromSOMANET' 'sendToSOMANET' 'jointConfig' 'temperature' 'error'};
inputDeviceStructFields = {'receivedFromInputDevice' 'sendToInputDevice' 'error'};
gesStructFields = {'receivedFromGES' 'sendToGES' 'error'};
pdbStructFields = {'receivedFromPDB' 'sendToPDB' 'error'};
bmsStructFields = {'receivedFromBMS' 'sendToBMS' 'error'};
masterStateFields = {};
structFields = {jointStructFields; jointStructFields; jointStructFields; jointStructFields; gesStructFields; inputDeviceStructFields; pdbStructFields; bmsStructFields; masterStateFields};
 % make struct for each joint
for j = 1:length(structNames)
    
    % make nested struct for each joint field
    for i = 1:length(structFields{j})
        dataMARCH.(char(structNames(j))).(char(structFields{j}(i))) = struct('data',[]);
        
        % Find out where what data is stored so the data can be put in the
        % appropriate field in the structure.
        if(~strcmp(structNames(j),'miscDataExoskeleton'))
            findJointName = contains(nameSignal,structNames(j));
        end
        findJointField = contains(data.signalNames,structFields{j}(i));
        
        % Using dataMARCH struct to store the indices for where what data is
        dataMARCH.(char(structNames(j))).(char(structFields{j}(i))).indices = find((findJointName & findJointField));
        
        % Store the signal names and the data in the structure
        for k = 1:length(dataMARCH.(char(structNames(j))).(char(structFields{j}(i))).indices)
            
        dataMARCH.(char(structNames(j))).(char(structFields{j}(i))).signalNames(k) = nameSignal(dataMARCH.(char(structNames(j))).(char(structFields{j}(i))).indices(k));
        dataMARCH.(char(structNames(j))).(char(structFields{j}(i))).data(:,k) = data.data(:,dataMARCH.(char(structNames(j))).(char(structFields{j}(i))).indices(k));
        
        end
        
        % Remove the indices field again
        dataMARCH.(char(structNames(j))).(char(structFields{j}(i))) = rmfield( dataMARCH.(char(structNames(j))).(char(structFields{j}(i))),'indices');
    end
    
    dataMARCH.(char(structNames(j))).time = time;
    nameSave = char(strcat(directoryForSave,char(timeForSave),'_struct',structNames(j),'.mat'));
    dataStruct = dataMARCH.(char(structNames(j)));
    save(nameSave,'dataStruct');
end
nameSave = char(strcat(directoryForSave,char(timeForSave),'_dataMARCH','.mat'));
save(nameSave,'dataMARCH');
end