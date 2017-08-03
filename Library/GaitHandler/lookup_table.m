function [angle] = lookup_table(gaitVector, phase)
angle=666;
if phase <= 0 %Phase should never get negative
     %error(phase);
else
    if phase > length(gaitVector) 
         %error(phase);
    elseif phase <= length(gaitVector)
        angle=gaitVector(phase);
    end
end
