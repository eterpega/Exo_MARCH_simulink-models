function [ startVals ] = getStartValues( actualValues, targetsIn, oldTargetsOut , strategy)
persistent oldStart;
if isempty(oldStart)
    oldStart = [0,0,0];
end
closeEnough = 0.5;
hasReached = abs(targetsIn - oldTargetsOut) < closeEnough;
types = [ ControlStrategy.position ControlStrategy.velocity ControlStrategy.position ];
% The start value of the transition should be the actualValue of the 
% targetstrategy when changing strategies. When the targetOut has reached
% this targetIn, the actualValue should again be the startValue. For the
% types which arent the target strategy, always use actualValue as
% startValue
oldStart = (types ~= strategy || hasReached).*actualValues + ...
    (types == strategy && not(hasReached)).* oldStart;
startVals = oldStart;
end