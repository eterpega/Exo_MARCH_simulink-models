function buzzerCommand = getBuzzerCommandFromState(masterState, waitTimeStandUp)
persistent masterStatePrevious
persistent lastBuzzerCommand
if isempty(masterStatePrevious)
    masterStatePrevious = ExoskeletonState.MANUAL;
    lastBuzzerCommand = uint8(BuzzerCommand.NOTHING);
end

switch masterStatePrevious %Buzzer command is derived from the previous and current masterState
    case ExoskeletonState.INITIALIZINGSTANDUP 
        if masterState == ExoskeletonState.WAITINGSTANDUP 
            %if we went from initializing standup to waiting standup
            buzzerCommand = waitTimeStandUp;
        else
            buzzerCommand = uint8(BuzzerCommand.NOTHING);
        end
    case ExoskeletonState.WAITINGSTANDUP
        if masterState == ExoskeletonState.HOLDSIT
            buzzerCommand = uint8(BuzzerCommand.STOPTIMER);      
        elseif masterState == ExoskeletonState.STANDINGUP
            buzzerCommand = uint8(BuzzerCommand.NOTHING); 
        else
            buzzerCommand = lastBuzzerCommand;
        end
    otherwise
        if masterStatePrevious ~= masterState
            buzzerCommand = uint8(BuzzerCommand.ONEBEEP);
        else
            buzzerCommand = uint8(BuzzerCommand.NOTHING);
        end
end
lastBuzzerCommand = buzzerCommand;
masterStatePrevious = masterState;
end