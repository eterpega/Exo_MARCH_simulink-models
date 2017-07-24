function [ surfaceI2t ] = getI2tSurface( phaseAmplitude, nominalCurrent, curTime )
%GETI2TSURFACE Calculates the I2t surface given phaseCurrentAmplitude and
%current time

% Initialize parameter
persistent surface
persistent prevTime;

% If the surface is still empty set it to 0
if isempty(surface) 
    surface = 0;
    prevTime = 0;
end

% The I2t value is integrated
timeStep = curTime - prevTime; % sampletime independent, #winning
surface = surface + timeStep * (phaseAmplitude^2-nominalCurrent^2);

% surface should never be lower than 0
if surface < 0
    surface = 0;
end

% update persistent variables
prevTime = curTime;

surfaceI2t = surface;
end