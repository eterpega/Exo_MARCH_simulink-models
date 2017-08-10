function buzzerCommand = getBuzzerCommandFromState(masterState, waitTimeStandUp)
persistent masterStatePrevious

if isempty(masterStatePrevious)
    masterStatePrevious = ExoskeletonState.MANUAL;
end

switch masterStatePrevious %Buzzer command is derived from the previous and current masterState
    case ExoskeletonState.INITIALIZINGSTANDUP 
        if masterState == ExoskeletonState.WAITINGSTANDUP 
            %if we went from initializing standup to waiting standup
            buzzerCommand = waitTimeStandUp;
        else
            buzzerCommand = BuzzerCommand.NOTHING;
        end
    case WAITINGSTANDUP
        if masterState == ExoskeletonState.HOLDSIT
            buzzerCommand = BuzzerCommand.STOPTIMER;      
        elseif masterState == ExoskeletonState.STANDINGUP
            buzzerCommand = BuzzerCommand.NOTHING; 
        else
            buzzerCommand = BuzzerCommand.NOTHING;
        end
    otherwise
        if masterStatePrevious ~= masterState
            buzzerCommand = BuzzerCommand.ONEBEEP;
        else
            buzzerCommand = BuzzerCommand.NOTHING;
        end
end





masterStatePrevious = masterState;
end