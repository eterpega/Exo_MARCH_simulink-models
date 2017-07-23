function [tuningCommand,commandValue] = genConfigSyncCommand( desiredConfig, currentConfig )
%GENCONFIGSYNCCOMMAND Generates tuning commands to sync the config of the
%somanet to the desiredConfig
persistent lookup;
persistent commandTimeout;

if (isempty(lookup)) % see: module_ethercat_drive/include/tuning.h
    lookup = [hex2dec('A0'),... % offset
    hex2dec('B0'),... % pole pairs
    hex2dec('CC'),... % min pos
    hex2dec('CB'),... % max pos
    hex2dec('CA'),... % max speed
    hex2dec('E0'),... % max torque
    hex2dec('C0') + 0,hex2dec('C0') + 1,hex2dec('C0') + 2,hex2dec('C0') + 3,... % kp p, i, d, i_lim
    hex2dec('C6') + 0,hex2dec('C6') + 1,hex2dec('C6') + 2,hex2dec('C6') + 3,... % kv p, i, d, i_lim
    hex2dec('CD')]; % brake_release_strategy
    commandTimeout = 0;
end

if commandTimeout > 0
    tuningCommand = (0);
    commandValue = (0);
    commandTimeout = commandTimeout -1;
else
    % We assign a value first. If a mismatch is found, these are overwritten
    tuningCommand = (0);
    commandValue = (0);
    for i=1:size(currentConfig,1)
        difference = abs(int32(currentConfig(i) - desiredConfig(i))); 
        if difference > 1 % we use this to make sure rounding errors don't cause trouble
            tuningCommand = (lookup(i));
            commandValue = double(desiredConfig(i));
            commandTimeout = 10; % wait 10 loops before sending a new command
            break;
        end
    end
end
end