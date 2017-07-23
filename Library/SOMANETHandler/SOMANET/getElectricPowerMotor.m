function [ electricPower ] = getElectricPowerMotor( phaseAmplitude, motorVelocity, resistanceMotor, backEMFConstant)
%GETPOWERSUPPLYCURRENT Calculates the electric power being drawn from the
%motor, using the phase current amplitude, motor resistance and backEMF
% See https://confluence.projectmarch.nl:8443/display/05TECH/Instantaneous+phase+current+to+power+supply+current
% for details on this calculation (scroll all the way down)
backEMF = motorVelocity/backEMFConstant;
motorVoltage = phaseAmplitude*resistanceMotor + backEMF;
electricPower = motorVoltage*phaseAmplitude;
end

