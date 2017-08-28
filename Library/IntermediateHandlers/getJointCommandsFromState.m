function [ jointCommands ] = getJointCommandsFromState( masterState, clearJointErrors, jointEnables )
%GETJOINTCOMMANDSFROMSTATE Determines the jointCommands from the
%masterState and wether joint errors should be cleared
persistent clearJointErrorDuration;
if(isempty(clearJointErrorDuration))
    clearJointErrorDuration = 0;
end
persistent lastMasterState;
if(isempty(lastMasterState))
    lastMasterState = ExoskeletonState.FULLMANUAL;
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
        case ExoskeletonState.STAIRSUP
            jointCommands = gaitCommands;
        case ExoskeletonState.STAIRSDOWN
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
            if(lastMasterState ~= ExoskeletonState.MANUAL || lastMasterState ~= ExoskeletonState.FULLMANUAL)
                %If severe error occurs when in not previously being in
                %manual or full manual, react
                jointCommands = [ JointCommand.DEACTIVATEMOTOR; JointCommand.DEACTIVATEMOTOR; JointCommand.DEACTIVATEMOTOR; JointCommand.DEACTIVATEMOTOR ];
            else
                %Remain in torque control if previously in manual or full manual.
                jointCommands = [ JointCommand.TORQUECONTROL; JointCommand.TORQUECONTROL; JointCommand.TORQUECONTROL; JointCommand.TORQUECONTROL ];
            end
        otherwise
            jointCommands = [ JointCommand.DEACTIVATEMOTOR; JointCommand.DEACTIVATEMOTOR; JointCommand.DEACTIVATEMOTOR; JointCommand.DEACTIVATEMOTOR ];
    end
end

if( (lastMasterState == ExoskeletonState.MANUAL || lastMasterState == ExoskeletonState.FULLMANUAL) && masterState == ExoskeletonState.SEVERE_ERROR)
    %Do not assign masterState to lastMasterState if this is the case
else
    lastMasterState = masterState;
end

end