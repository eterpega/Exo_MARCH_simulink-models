function buzzerCommand = getBuzzerCommandFromState(stepType, waitTimeStandUp, waitTimeSitDown, waitTimeStairsUp, waitTimeStairsDown, errorReaction)
%% Set up persistant variables
% We would like to remeber the previous step type and buzzer command
persistent stepTypePrevious
persistent lastBuzzerCommand

% Give the persistant variables a staring value
if isempty(stepTypePrevious)
    stepTypePrevious = StepType.NOSTEP;
    lastBuzzerCommand = uint8(BuzzerCommand.NOTHING);
end

% Initialize buzzer command, otherwise Simulink gets angry
buzzerCommand = uint8(BuzzerCommand.NOTHING);

%% Get buzzercommands from step type
% During some step type changes we would like to warn the pilot.
switch stepTypePrevious %Buzzer command is derived from the previous and current masterState

    %% StandUp Beep Handling   
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
            buzzerCommand = uint8(BuzzerCommand.ONEBEEP);
        end

     %% SitDown Beep Handling   
     case StepType.INITIALIZESITDOWN 
        if stepType == StepType.WAITSITDOWN
            % if the MARCH II starts wating for the standup warn the pilot
            buzzerCommand = waitTimeSitDown;
        else
            buzzerCommand = uint8(BuzzerCommand.NOTHING);
        end
    case StepType.WAITSITDOWN
        if stepType == StepType.HOMESTAND
            % If standing up is canceled stop the timer as well
            buzzerCommand = uint8(BuzzerCommand.STOPTIMER);      
        elseif stepType == StepType.SITDOWN
            buzzerCommand = uint8(BuzzerCommand.NOTHING); 
        else
            buzzerCommand = lastBuzzerCommand;
        end

    %% StairsUp beeper handling
    case StepType.INITIALIZESTAIRSUP 
        if stepType == StepType.WAITSTAIRSUP 
            % if the MARCH II starts wating for the standup warn the pilot
            buzzerCommand = waitTimeStairsUp;
        else
            buzzerCommand = uint8(BuzzerCommand.NOTHING);
        end
    case StepType.WAITSTAIRSUP
        if stepType == StepType.HOMESTAND
            % If standing up is canceled stop the timer as well
            buzzerCommand = uint8(BuzzerCommand.STOPTIMER);      
        elseif stepType == StepType.STAIRSUPSTEP
            buzzerCommand = uint8(BuzzerCommand.NOTHING); 
        else
            buzzerCommand = lastBuzzerCommand;
        end

     %% StairsDown Beep Handling   
     case StepType.INITIALIZESTAIRSDOWN 
        if stepType == StepType.WAITSTAIRSDOWN
            % if the MARCH II starts wating for the standup warn the pilot
            buzzerCommand = waitTimeStairsDown;
        else
            buzzerCommand = uint8(BuzzerCommand.NOTHING);
        end
    case StepType.WAITSTAIRSDOWN
        if stepType == StepType.HOMESTAND
            % If standing up is canceled stop the timer as well
            buzzerCommand = uint8(BuzzerCommand.STOPTIMER);      
        elseif stepType == StepType.STAIRSDOWNSTEP
            buzzerCommand = uint8(BuzzerCommand.NOTHING); 
        else
            buzzerCommand = lastBuzzerCommand;
        end

    otherwise
        buzzerCommand = uint8(BuzzerCommand.NOTHING);
end

%% Get buzzercomands from errorReaction
% these will override the buzzercommand by the steptype since it is more
% important.
switch errorReaction
    case ErrorReaction.QUITIMMEDIATELY
        buzzerCommand = uint8(BuzzerCommand.SEVERE_ERROR_BEEP);
    case ErrorReaction.FINISHCURRENTREACTION
        buzzerCommand = uint8(BuzzerCommand.ERROR_BEEP);
    case ErrorReaction.MOVETOPREVIOUSSTATE
        buzzerCommand = uint8(BuzzerCommand.ERROR_BEEP); 
end

%% Remember the set buzzer command and step type
lastBuzzerCommand = buzzerCommand;
stepTypePrevious = stepType;
end