function [ tuningCommand, commandValue ] = selectTuningCommand( jointCommand, configSyncCommand, configSyncValue, offsetTuneCommand, offsetTuneValue )
%SELECTTUNINGCOMMAND Picks tuning command and value from given jointCommand
if(jointCommand == JointCommand.SYNCCONFIGS)
    tuningCommand = configSyncCommand;
    commandValue = configSyncValue;
elseif(jointCommand == JointCommand.TUNECOMMUTATIONOFFSET)
    tuningCommand = offsetTuneCommand;
    commandValue = offsetTuneValue;
else
    tuningCommand = (0);
    commandValue = (0);
end
end