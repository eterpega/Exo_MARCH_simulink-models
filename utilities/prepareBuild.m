function prepareBuild( buildType )
%PREPAREBUILD Prepares the correct settings for building in buildType
if nargin == 0
    disp('No buildtype provided! Available buildtypes are:');
    disp(' - standalone');
    disp(' - graphical');
    return
end
if ~strcmpi(buildType,'standalone') && ~strcmpi(buildType,'graphical')
    disp('Invalid buildtype provided! Available buildtypes are:');
    disp(' - standalone');
    disp(' - graphical');
    return
end
if strcmpi(buildType,'standalone')
    % prepare for standalone build, we have to:
    % - disable graphics on the target settings
    % - set boot config to standalone
    % - comment out the scopehandler
    % - remove overrides in desiredstateselector, errorreaction and jointhandler
    
    % fixing target settings
    targetSettings = SimulinkRealTime.getTargetSettings;
    targetSettings.TargetScope = 'Disabled';
    targetSettings.TargetBoot = 'StandAlone';
    
    % commenting out the scopehandler and removing overrides
    % we need the highlevel model for this, load it if needed
    modelWasOpen = bdIsLoaded('HighLevelMARCH');
    if ~modelWasOpen
        warning('off','Simulink:Commands:LoadMdlParameterizedLink');
        load_system('HighLevelMARCH')
        warning('off','Simulink:Commands:LoadMdlParameterizedLink');
    end
    
    % temporarily disable this warning
    warningID = 'Simulink:Commands:SetParamLinkChangeWarn';
    warning('off',warningID);
    % actually commenting out scope handler and removing overrides
    set_param('HighLevelMARCH/DataLogger','LinkStatus','inactive');
    set_param('HighLevelMARCH/DataLogger/ScopeHandler','commented','on');
    set_param('HighLevelMARCH/SafetyModule/enableManualErrorReaction','Value','0');
    set_param('HighLevelMARCH/DesiredStateSelector/enableManualDesiredState','Value','0');
    set_param('HighLevelMARCH/PeripheralHandler/enableManualCommandPDB','Value','0');
    set_param('HighLevelMARCH/JointHandler/setPointSelection','Value','1');
    warning('on',warningID);
    
    % finishing up
    warning('off','Simulink:Engine:SaveWithDisabledLinks_Warning');
    warning('off','Simulink:Engine:SaveWithParameterizedLinks_Warning');
    save_system('HighLevelMARCH');
    warning('on','Simulink:Engine:SaveWithParameterizedLinks_Warning');
    warning('on','Simulink:Engine:SaveWithDisabledLinks_Warning');
    if ~modelWasOpen
        close_system('HighLevelMARCH');
    end    
elseif strcmpi(buildType,'graphical')
    % prepare for graphical build, we have to:
    % - enable graphics on the target settings
    % - set boot config to USB drive
    % - uncomment the scopehandler
    % - reenable overrides in desiredstateselector, errorreaction and jointhandler
    
     % fixing target settings
    targetSettings = SimulinkRealTime.getTargetSettings;
    targetSettings.TargetScope = 'Enabled';
    targetSettings.TargetBoot = 'BootFloppy';
    
    % uncommenting the scopehandler and removing overrides
    % we need the highlevel model for this, load it if needed
    modelWasOpen = bdIsLoaded('HighLevelMARCH');
    if ~modelWasOpen
        warning('off','Simulink:Commands:LoadMdlParameterizedLink');
        load_system('HighLevelMARCH')
        warning('off','Simulink:Commands:LoadMdlParameterizedLink');
    end
    
    % temporarily disable this warning
    warningID = 'Simulink:Commands:SetParamLinkChangeWarn';
    warning('off',warningID);
    % actually commenting out scope handler and removing overrides
    set_param('HighLevelMARCH/DataLogger','LinkStatus','inactive');
    set_param('HighLevelMARCH/DataLogger/ScopeHandler','commented','off');
    set_param('HighLevelMARCH/SafetyModule/enableManualErrorReaction','Value','1');
    set_param('HighLevelMARCH/DesiredStateSelector/enableManualDesiredState','Value','1');
    set_param('HighLevelMARCH/PeripheralHandler/enableManualCommandPDB','Value','1');
    set_param('HighLevelMARCH/JointHandler/setPointSelection','Value','3');
    warning('on',warningID);
    
    % finishing up
    warning('off','Simulink:Engine:SaveWithDisabledLinks_Warning');
    warning('off','Simulink:Engine:SaveWithParameterizedLinks_Warning');
    save_system('HighLevelMARCH');
    warning('on','Simulink:Engine:SaveWithParameterizedLinks_Warning');
    warning('on','Simulink:Engine:SaveWithDisabledLinks_Warning');
    if ~modelWasOpen
        close_system('HighLevelMARCH');
    end  
else
    disp('This should never happen! You broke the function, are you proud of yourself?');
end

end

