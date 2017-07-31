function [ jointCommands ] = getJointCommandsFromState( masterState, clearJointErrors, jointEnables )
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
    gaitCommands = [ JointCommand.POSITIONCONTROL; JointCommand.POSITIONCONTROL; JointCommand.POSITIONCONTROL; JointCommand.POSITIONCONTROL];
    for i=1:4
        if(jointEnables(i) == 0)
            gaitCommands(i) = JointCommand.DEACTIVATEMOTOR;
        end
    end
    switch(masterState)
        case ExoskeletonState.HOLDSTAND
            jointCommands = gaitCommands;
        case ExoskeletonState.HOLDSIT
            jointCommands = gaitCommands;
        case ExoskeletonState.STANDINGUP
            jointCommands = gaitCommands;
        case ExoskeletonState.SITTINGDOWN
            jointCommands = gaitCommands;
        case ExoskeletonState.CONTINUOUSGAIT
            jointCommands = gaitCommands;
        case ExoskeletonState.STAIRS
            jointCommands = gaitCommands;
        case ExoskeletonState.SLOPE
            jointCommands = gaitCommands;
        case ExoskeletonState.STONES
            jointCommands = gaitCommands;
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