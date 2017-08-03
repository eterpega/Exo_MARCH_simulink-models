function get_data_march(nameOnMaster,nameOfFileToSave)
%HOW TO USE
%for one, script only works when usb stick is still in the target and pc is connected to
%target!
%add a target scope to the simlink model
%set the scope type to file 
%set the name to "X.dat" to what you want it
%When model has run on the target and you want to fetch the data, make sure
%that you know what the name is of the file. If you use this function, do
%it like this:
%get_data_march('name_of_the_file_on_the_target.dat','Name_of_how_you_want_to_call_the
%_saved_file)
%Example:
%get_data_march('MARCH01.dat','AirGaitTest')

% Attach to the target computer file system.
clc;

%IMPORTANT If you want to test, set testFunction to 1;
testFunction = 0;
%% Reading datalog file from target

if(~testFunction)
    f=SimulinkRealTime.fileSystem;
    read = fopen(f,nameOnMaster);
    rawData = fread(f,read);
    f.fclose(read);
else
    %For testing purposes
%     nameOnMaster = 'Data_files/MARCH04.dat';
%     nameOfFileToSave = 'AirGaitFriday4';
    read = fopen(nameOnMaster);
    rawData = fread(read);
    fclose(read);
end

%% Prepare saving directory
dateNowShort = datetime('now');
dateNowShort.Format = 'uuuu-MM-dd';
timeForSave = datetime('now');
timeForSave.Format = 'HH.mm';
directoryForSave = strcat('Data_files/','Data_measurements/',char(dateNowShort),'/'); 
mkdir(directoryForSave);

%% Process and save the raw data
data = SimulinkRealTime.utils.getFileScopeData(rawData);
numSignal = data.numSignals;
%Not necessary
%save(strcat(directoryForSave,char(timeForSave),'_',nameOfFileToSave,'_','AllResults.mat'),'data');

%% Preparing signal names to be nice
nameSignal = regexprep(reverse(strtok(reverse(data.signalNames),'/')),' ','');
time = data.data(:,numSignal);

%% Create structs
structNames = {'LHFE' 'LKFE' 'RHFE' 'RKFE' 'GES' 'InputDevice' 'PDB' 'master'};
jointStructFields = {'receivedFromSOMANET' 'sendToSOMANET' 'jointConfig' 'miscDataSOMANET' 'temperature' 'error' };
inputDeviceStructFields = {'receivedFromInputDevice' 'sendToInputDevice' 'error'};
gesStructFields = {'receivedFromGES' 'sendToGES' 'error'};
pdbStructFields = {'receivedFromPDB' 'sendToPDB' 'error'};
masterInfoFields = {'masterInfo'};
structFields = {jointStructFields; jointStructFields; jointStructFields; jointStructFields; gesStructFields; inputDeviceStructFields; pdbStructFields; masterInfoFields};
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
    dataStruct = dataMARCH.(char(structNames(j)));
    
    % This is only useful if you want to save all the structs seperately
%     nameSave = char(strcat(directoryForSave,char(timeForSave),'_struct',structNames(j),'.mat'));
%     save(nameSave,'dataStruct');
end
nameSave = char(strcat(directoryForSave,char(timeForSave),'_',(nameOfFileToSave),'_dataMARCH','.mat'));
save(nameSave,'dataMARCH');
end