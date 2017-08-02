function [ phaseIndex, phaseDone ] = getGaitPhases(stepType, stepLeg, curTime, gaitFrequency, lengthsLookup)
%GETGAITPHASES determines gaitPhase by detecting change 
persistent prevStepType;
persistent prevStepLeg;
persistent startTime;
persistent prevTime;
if isempty(startTime)
    prevStepType = StepType.NOSTEP;
    prevStepLeg = Leg.NONE;
    startTime = 0;
    prevTime = 0;
end
if(prevStepType ~= stepType || prevStepLeg ~= stepLeg)
    startTime = curTime;
end
sampleTime = curTime - prevTime;
passedTime = curTime - startTime;
modelFrequency = 1 / sampleTime;
multiplier = gaitFrequency / modelFrequency;
% if gait is made at 1000 Hz and model runs at 500 Hz, we need to go
% through the gait 2 indices at a time

samples = passedTime / sampleTime;
% matlab has 1-based indexing
phaseIndex = multiplier * samples;
if(phaseIndex >= (lengthsLookup(int32(stepType)) - 1))
    phaseIndex = lengthsLookup(int32(stepType)) - 1;
    phaseDone = 1;
else
    phaseDone = 0;
end

% update persistent variables
prevStepType = stepType;
prevStepLeg = stepLeg;
prevTime = curTime;
%phaseIndex = phaseIndex - 1;
end