function buzzerCommand = getBuzzerCommandFromState(stepType, waitTimeStandUp)
persistent stepTypePrevious
persistent lastBuzzerCommand
if isempty(stepTypePrevious)
    stepTypePrevious = StepType.NOSTEP;
    lastBuzzerCommand = uint8(BuzzerCommand.NOTHING);
end

switch stepTypePrevious %Buzzer command is derived from the previous and current masterState
    case StepType.INITIALIZESTANDUP 
        if stepType == StepType.WAITSTANDUP 
            %if we went from initializing standup to waiting standup
            buzzerCommand = waitTimeStandUp;
        else
            buzzerCommand = uint8(BuzzerCommand.NOTHING);
        end
    case StepType.WAITSTANDUP
        if stepType == StepType.HOMESIT
            buzzerCommand = uint8(BuzzerCommand.STOPTIMER);      
        elseif stepType == StepType.STANDUP
            buzzerCommand = uint8(BuzzerCommand.NOTHING); 
        else
            buzzerCommand = lastBuzzerCommand;
        end
    otherwise
        buzzerCommand = uint8(BuzzerCommand.NOTHING);

end
lastBuzzerCommand = buzzerCommand;
stepTypePrevious = stepType;
end