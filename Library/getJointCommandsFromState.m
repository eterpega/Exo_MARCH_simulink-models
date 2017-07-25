function [ jointCommands ] = getJointCommandsFromState( masterState, clearJointErrors )
%GETJOINTCOMMANDSFROMSTATE Determines the jointCommands from the
%masterState and wether joint errors should be cleared
persistent clearJointErrorDuration;
if(isempty(clearJointErrorDuration))
    clearJointErrorDuration = 0;
end

if(clearJointErrors)
    clearJointErrorDuration = 50;
end

if(clearJointErrorDuration > 0)
    jointCommands = [ JointCommand.RESOLVEERROR; JointCommand.RESOLVEERROR; JointCommand.RESOLVEERROR; JointCommand.RESOLVEERROR ];
    clearJointErrorDuration = clearJointErrorDuration - 1;
else
    allPosition = [ JointCommand.POSITIONCONTROL; JointCommand.POSITIONCONTROL; JointCommand.POSITIONCONTROL; JointCommand.POSITIONCONTROL];
    switch(masterState)
        case ExoskeletonState.HOLDSTAND
            jointCommands = allPosition;
        case ExoskeletonState.HOLDSIT
            jointCommands = allPosition;
        case ExoskeletonState.STANDINGUP
            jointCommands = allPosition;
        case ExoskeletonState.SITTINGDOWN
            jointCommands = allPosition;
        case ExoskeletonState.CONTINUOUSGAIT
            jointCommands = allPosition;
        case ExoskeletonState.STAIRS
            jointCommands = allPosition;
        case ExoskeletonState.SLOPE
            jointCommands = allPosition;
        case ExoskeletonState.STONES
            jointCommands = allPosition;
        case ExoskeletonState.MANUAL % what were these for again..
            jointCommands = [ JointCommand.TORQUECONTROL; JointCommand.TORQUECONTROL; JointCommand.TORQUECONTROL; JointCommand.TORQUECONTROL ];
        case ExoskeletonState.FULLMANUAL
            jointCommands = [ JointCommand.TORQUECONTROL; JointCommand.TORQUECONTROL; JointCommand.TORQUECONTROL; JointCommand.TORQUECONTROL ];
        case ExoskeletonState.SEVERE_ERROR
            jointCommands = [ JointCommand.DEACTIVATEMOTOR; JointCommand.DEACTIVATEMOTOR; JointCommand.DEACTIVATEMOTOR; JointCommand.DEACTIVATEMOTOR ];
        otherwise
            jointCommands = [ JointCommand.DEACTIVATEMOTOR; JointCommand.DEACTIVATEMOTOR; JointCommand.DEACTIVATEMOTOR; JointCommand.DEACTIVATEMOTOR ];
    end
end
end