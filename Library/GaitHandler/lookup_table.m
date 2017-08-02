function [angle] = lookup_table(gaitVector, phase)
angle=666;
if phase <= 0 %Phase should never get negative
    %error('Phase is negative');
else
    if phase > length(gaitVector) 
        %error('Phase is out of bounds');
    elseif phase <= length(gaitVector)
        angle=gaitVector(phase);
    end
end
