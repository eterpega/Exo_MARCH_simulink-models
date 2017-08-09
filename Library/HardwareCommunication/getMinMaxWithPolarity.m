function [ minPos, maxPos ] = getMinMaxWithPolarity( minPosIn, maxPosIn, polarity )
%GETMINMAXWITHPOLARITY swaps min and max position if the polarity is
%negative
if(polarity == 1)
    minPos = minPosIn;
    maxPos = maxPosIn;
else
    minPos = maxPosIn;
    maxPos = minPosIn;
end
end