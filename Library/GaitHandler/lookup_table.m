function [angle] = lookup_table(gaitVector, phase)

if length(gaitVector)<phase
    error('Phase is out of bounds');
    return
elseif length(gaitVector)>=phase
    angle=gaitVector(phase,1);
end

