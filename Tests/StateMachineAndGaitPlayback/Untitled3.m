clc
close all
clear all

simOut = sim('stateMachineAndGaitPlayback','SimulationMode','normal','AbsTol','1e-5',...
            'SaveState','on','StateSaveName','xout',...
            'SaveOutput','on','OutputSaveName','yout',...
 'SaveFormat', 'Dataset');

angleLKFE = simOut.get('angleLKFE');
plot(angleLKFE.data);