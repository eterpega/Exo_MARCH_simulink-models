function [ phaseAmplitude ] = getPhaseAmplitude( phaseB, phaseC )
%GETPHASEAMPLITUDE computes phase amplitude given two phases
%   For details of the used formula, see https://confluence.projectmarch.nl:8443/display/05TECH/Instantaneous+phase+current+to+power+supply+current
phaseAmplitude = 2/3*sqrt(3)*sqrt(phaseB^2+phaseB*phaseC + phaseC^2);
end