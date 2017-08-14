[PATHSTR,~,~] = fileparts(mfilename('fullpath'));
cd(PATHSTR);

dictionaryPath='Library'; %set datadictionary parent directory path
dictionaryName='ModelDictionary.sldd'; %set datadictionary name
fullDictionaryPath=[dictionaryPath filesep dictionaryName]; %construct full path name for data dictionary
myDictionaryObj = Simulink.data.dictionary.open(fullDictionaryPath); %get datadictionary object
sectionObj = getSection(myDictionaryObj,'Design Data'); %get datadictionary section object

[importedVars,existingVars] = importFromBaseWorkspace(myDictionaryObj,...
    'clearWorkspaceVars',false,'existingVarsAction','overwrite'...
    ,'varList',{'halfStepStandStartHip','halfStepStandStartKnee'...
    ,'halfStepStopFromStandHip','halfStepStopFromStandKnee'...
    ,'halfStepStopFromSwingHip','halfStepStopFromSwingKnee'...
    ,'halfStepSwingStartHip','halfStepSwingStartKnee'...
    ,'sitDownHip','sitDownKnee'...
    ,'standUpHip','standUpKnee'...
    ,'stepStandLegHip','stepStandLegKnee'...
    ,'stepSwingLegHip','stepSwingLegKnee'});

saveChanges(myDictionaryObj);