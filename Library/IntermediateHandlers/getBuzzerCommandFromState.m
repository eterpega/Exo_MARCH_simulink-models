function buzzerCommand = getBuzzerCommandFromState(stepType, waitTimeStandUp, errorReaction)
%% Set up persistant variables
% We would like to remeber the previous step type and buzzer command
persistent stepTypePrevious
persistent lastBuzzerCommand

% Give the persistant variables a staring value
if isempty(stepTypePrevious)
    stepTypePrevious = StepType.NOSTEP;
    lastBuzzerCommand = uint8(BuzzerCommand.NOTHING);
end

%% Get buzzercommands from step type
% During some step type changes we would like to warn the pilot.
switch stepTypePrevious %Buzzer command is derived from the previous and current masterState
    case StepType.INITIALIZESTANDUP 
        if stepType == StepType.WAITSTANDUP 
            % if the MARCH II starts wating for the standup warn the pilot
            buzzerCommand = waitTimeStandUp;
        else
            buzzerCommand = uint8(BuzzerCommand.NOTHING);
        end
    case StepType.WAITSTANDUP
        if stepType == StepType.HOMESIT
            % If standing up is canceled stop the timer as well
            buzzerCommand = uint8(BuzzerCommand.STOPTIMER);      
        elseif stepType == StepType.STANDUP
            buzzerCommand = uint8(BuzzerCommand.NOTHING); 
        else
            buzzerCommand = lastBuzzerCommand;
        end
    case StepType.HOMESTAND
        if stepType == StepType.SITDOWN
            % If the MARCH II is gonna sit down warn the pilot
            BuzzerCommand.ONEBEEP
        end
    otherwise
        buzzerCommand = uint8(BuzzerCommand.NOTHING);
end

%% Get buzzercomands from errorReaction
% these will override the buzzercommand by the steptype since it is more
% important.
switch errorReaction
    case ErrorReaction.QUITIMMEDIATELY
        buzzerCommand = uint8(BuzzerCommand.ERROR);
    case ErrorReaction.FINISHCURRENTREACTION
        buzzerCommand = uint8(BuzzerCommand.ERROR);
    case ErrorReaction.MOVETOPREVIOUSSTATE
        buzzerCommand = uint8(BuzzerCommand.ERROR); 
    otherwise
        buzzerCommand = uint8(BuzzerCommand.NOTHING);
end

%% Remember the set buzzer command and step type
lastBuzzerCommand = buzzerCommand;
stepTypePrevious = stepType;
end