function [angle] = lookup_table(gaitVector, phase)
angle=666;
if phase < 0 %Phase should never get negative
    error('Phase is negative');
else
    if length(gaitVector) < phase
        error('Phase is out of bounds');
    elseif length(gaitVector) >= phase
        angle=gaitVector(phase);
    end
end
