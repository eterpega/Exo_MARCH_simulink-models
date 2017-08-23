%automatic_gait_tester
%Automatically tests different gaits using the stateMachineAndGaitPlayback
%model. The resulting plots are stored in .fig format in folders named after the
%respective input file. 

%BUG: warning stored in gaitVector.LHFE/RHFE... are not displayed in the
%right colomn. Also, general warning message about the manual switch
%somehow gets stored in the gaitVector struct.
%% INITIALIZE
clc
close all
clear all

%change pwd to parent dir of this script
[PATHSTR,~,~] = fileparts(mfilename('fullpath'));
cd(PATHSTR);

%SET datadictionary parent directory path
dictionaryPath=strcat('..',filesep,'..',filesep,'..',filesep,...
    'simulink-models',filesep,'Library');
%set datadictionary name
dictionaryName='ModelDictionary.sldd'; 
%construct full path name for data dictionary
fullDictionaryPath=[dictionaryPath filesep dictionaryName]; 
%get datadictionary object
myDictionaryObj = Simulink.data.dictionary.open(fullDictionaryPath);
%get datadictionary section object
sectionObj = getSection(myDictionaryObj,'Design Data'); 


%% GET ALL DIFFERENT GAIT VECTORS TO TEST
dataPath=['..',filesep,'..',filesep,'..',filesep,'simulink-gait-generation'...
    ,filesep,'gait-data',filesep,'GaitVectors'];
cd(dataPath);
folderContent=dir('*Gaits*');
[h, w] = size(folderContent);
for n=1:h
    gaitVector(n).name=folderContent(n).name;
    gaitVector(n).data=load(folderContent(n).name);
end
cd(PATHSTR);

%% GET ENTRY OBJECTS FROM MODEL DICTIONARY
%Define variable names for half steps
varNameStartStandHalfStepHip    = 'halfStepStandStartHip';
varNameStartStandHalfStepKnee   = 'halfStepStandStartKnee';
varNameStartSwingHalfStepHip    = 'halfStepSwingStartHip';
varNameStartSwingHalfStepKnee   = 'halfStepSwingStartKnee';
varNameStopStepFromSwingKnee    = 'halfStepStopFromSwingKnee';
varNameStopStepFromSwingHip     = 'halfStepStopFromSwingHip';
varNameStopStepFromStandKnee    = 'halfStepStopFromStandKnee';
varNameStopStepFromStandHip     = 'halfStepStopFromStandHip';

for n=1:h
    %% SET VARIABLES FROM STRUCT
    %Step
    stepSwingLegHip=gaitVector(n).data.stepSwingLegHip;     
    stepSwingLegKnee=gaitVector(n).data.stepSwingLegKnee;   
    stepStandLegHip=gaitVector(n).data.stepStandLegHip; 
    stepStandLegKnee=gaitVector(n).data.stepStandLegKnee;
    %Stand Up
    standUpKnee=gaitVector(n).data.standUpKnee;
    standUpHip=gaitVector(n).data.standUpHip;
    %Sit Down
    sitDownKnee=gaitVector(n).data.sitDownKnee;
    sitDownHip=gaitVector(n).data.sitDownHip; 
    %Half step start
    startStandHalfStepHip=gaitVector(n).data.halfStepStandStartHip;
    startStandHalfStepKnee=gaitVector(n).data.halfStepStandStartKnee;
    startSwingHalfStepHip=gaitVector(n).data.halfStepSwingStartHip;
    startSwingHalfStepKnee=gaitVector(n).data.halfStepSwingStartKnee;
    %half step stop
    stopHalfStepFromSwingKnee=gaitVector(n).data.halfStepStopFromSwingKnee;
    stopHalfStepFromSwingHip=gaitVector(n).data.halfStepStopFromSwingHip;
    stopHalfStepFromStandKnee=gaitVector(n).data.halfStepStopFromStandKnee;
    stopHalfStepFromStandHip=gaitVector(n).data.halfStepStopFromStandHip;

    %Get entry object from data dictionary 
    startStandHalfStepHipEntryObj   = getEntry(sectionObj,varNameStartStandHalfStepHip);
    startStandHalfStepKneeEntryObj  = getEntry(sectionObj,varNameStartStandHalfStepKnee);
    startSwingHalfStepHipEntryObj   = getEntry(sectionObj,varNameStartSwingHalfStepHip);
    startSwingHalfStepKneeEntryObj  = getEntry(sectionObj,varNameStartSwingHalfStepKnee);
    stopStepFromSwingKneeEntryObj   = getEntry(sectionObj,varNameStopStepFromSwingKnee);
    stopStepFromSwingHipEntryObj    = getEntry(sectionObj,varNameStopStepFromSwingHip);
    stopStepFromStandKneeEntryObj   = getEntry(sectionObj,varNameStopStepFromStandKnee);
    stopStepFromStandHipEntryObj    = getEntry(sectionObj,varNameStopStepFromStandHip);
    kneeSwingEntryObj   = getEntry(sectionObj,'stepSwingLegKnee'); %get entryObj for knee walk
    hipSwingEntryObj    = getEntry(sectionObj,'stepSwingLegHip');   %get entryObj for hip walk
    kneeStandEntryObj   = getEntry(sectionObj,'stepStandLegKnee'); %get entryObj for knee walk
    hipStandEntryObj    = getEntry(sectionObj,'stepStandLegHip');   %get entryObj for hip walk
    kneeStandUpEntryObj = getEntry(sectionObj,'standUpKnee');    %get entryObj for knee stand up
    hipStandUpEntryObj  = getEntry(sectionObj,'standUpHip');      %get entryObj for hip stand up
    kneeSitDownEntryObj = getEntry(sectionObj,'sitDownKnee');    %get entryObj for knee sit down
    hipSitDownEntryObj  = getEntry(sectionObj,'sitDownHip');      %get entryObj for hip sit down

         %give error if entryObjs are empty   
         if isempty(kneeSwingEntryObj) || isempty(hipSwingEntryObj)...
                 || isempty(kneeStandEntryObj) || isempty(hipStandEntryObj)...
                 || isempty(kneeSitDownEntryObj) || isempty(hipSitDownEntryObj)...
                 || isempty(kneeSitDownEntryObj) || isempty(hipSitDownEntryObj)...
                 || isempty(kneeSitDownEntryObj) || isempty(hipSitDownEntryObj)...
                 || isempty(kneeSitDownEntryObj) || isempty(hipSitDownEntryObj)...
                 || isempty(kneeSitDownEntryObj) || isempty(hipSitDownEntryObj)...
            msgbox('ERROR: entries found in Model Dictionary are not valid','Error: Model Dictionary entries','error')
            return
         end

    %% GET VALUES FROM MODEL DICTIONARY
    %Step
    setValue(hipSwingEntryObj, stepSwingLegHip);     
    setValue(kneeSwingEntryObj, stepSwingLegKnee);   
    setValue(hipStandEntryObj, stepStandLegHip); 
    setValue(kneeStandEntryObj, stepStandLegKnee);
    %Stand Up
    setValue(kneeStandUpEntryObj, standUpKnee);
    setValue(hipStandUpEntryObj, standUpHip);
    %Sit Down
    setValue(kneeSitDownEntryObj, sitDownKnee);
    setValue(hipSitDownEntryObj, sitDownHip); 
    %Half step start
    setValue(startStandHalfStepHipEntryObj, startStandHalfStepHip);
    setValue(startStandHalfStepKneeEntryObj, startStandHalfStepKnee);
    setValue(startSwingHalfStepHipEntryObj, startSwingHalfStepHip);
    setValue(startSwingHalfStepKneeEntryObj, startSwingHalfStepKnee);
    %half step stop
    setValue(stopStepFromSwingKneeEntryObj ,stopHalfStepFromSwingKnee);
    setValue(stopStepFromSwingHipEntryObj  ,stopHalfStepFromSwingHip);
    setValue(stopStepFromStandKneeEntryObj ,stopHalfStepFromStandKnee);
    setValue(stopStepFromStandHipEntryObj  ,stopHalfStepFromStandHip);

    %Save changes to model dictionary
    saveChanges(myDictionaryObj);

    %% RUN SIMULATION 

    simOut = sim('stateMachineAndGaitPlayback','SimulationMode','normal','AbsTol','1e-5',...
                'SaveState','on','StateSaveName','xout',...
                'SaveOutput','on','OutputSaveName','yout',...
     'SaveFormat', 'Dataset');

    %% Fetch data from model
    desiredAngleLKFE = simOut.get('desiredAngleLKFE').data; %[rad]
    desiredAngleLHFE = simOut.get('desiredAngleLHFE').data; %[rad]
    desiredAngleRHFE = simOut.get('desiredAngleRHFE').data; %[rad]
    desiredAngleRKFE = simOut.get('desiredAngleRKFE').data; %[rad]

    actualAngleLHFE = simOut.get('actualAngleLHFE').data; %[rad]
    actualAngleLKFE = simOut.get('actualAngleLKFE').data; %[rad]
    actualAngleRHFE = simOut.get('actualAngleRHFE').data; %[rad]
    actualAngleRKFE = simOut.get('actualAngleRKFE').data; %[rad]

    desiredState = simOut.get('desiredState').data;
    masterState = simOut.get('masterState').data;
    stepType = simOut.get('stepType').data;

    time = simOut.get('desiredAngleLKFE').time; %[s]

    %% Fix actual angle
    %Sometimes the actual joint angle is accidently set too zero, I am too lazy
    %to fix it in the SL model, so I 'fix' it by setting these values to nan.
    actualAngleLHFE(actualAngleLHFE == 0) = nan;
    actualAngleLKFE(actualAngleLKFE == 0) = nan;
    actualAngleRHFE(actualAngleRHFE == 0) = nan;
    actualAngleRKFE(actualAngleRKFE == 0) = nan;

    %% Analyze results
    [velocityWarning_LHFE, actualVelocityLHFE]= check_joint_velocity(actualAngleLHFE,...
    desiredAngleLHFE, masterState, desiredState, time, 'LHFE');
    [velocityWarning_LKFE, actualVelocityLKFE]= check_joint_velocity(actualAngleLKFE,...
        desiredAngleLKFE, masterState, desiredState, time, 'LKFE');
    [velocityWarning_RHFE, actualVelocityRHFE]= check_joint_velocity(actualAngleRHFE,...
        desiredAngleRHFE, masterState, desiredState, time, 'RHFE');
    [velocityWarning_RKFE, actualVelocityRKFE]= check_joint_velocity(actualAngleRKFE,...
        desiredAngleRKFE, masterState, desiredState, time, 'RKFE');

    gaitVector(n).LHFE=velocityWarning_LHFE;
    gaitVector(n).LKFE=velocityWarning_LKFE;
    gaitVector(n).RHFE=velocityWarning_RHFE;
    gaitVector(n).RKFE=velocityWarning_RKFE;
    %% Plot joint angle
    joint_velocity_plotter(actualAngleLHFE, masterState, desiredState,...
        stepType, time, 'LHFE Angle',gaitVector(n).name)
    joint_velocity_plotter(actualAngleLKFE, masterState, desiredState,...
        stepType, time, 'LKFE Angle',gaitVector(n).name)
    joint_velocity_plotter(actualAngleRHFE, masterState, desiredState,...
        stepType, time, 'RHFE Angle',gaitVector(n).name)
    joint_velocity_plotter(actualAngleRKFE, masterState, desiredState,...
        stepType, time, 'RKFE Angle',gaitVector(n).name)

    %% Plot joint Velocity
    joint_velocity_plotter(actualVelocityLHFE, masterState, desiredState,...
        stepType, time, 'LHFE Velocity',gaitVector(n).name)
    joint_velocity_plotter(actualVelocityLKFE, masterState, desiredState,...
        stepType, time, 'LKFE Velocity',gaitVector(n).name)
    joint_velocity_plotter(actualVelocityRHFE, masterState, desiredState,...
        stepType, time, 'RHFE Velocity',gaitVector(n).name)
    joint_velocity_plotter(actualVelocityRKFE, masterState, desiredState,...
        stepType, time, 'RKFE Velocity',gaitVector(n).name)
end