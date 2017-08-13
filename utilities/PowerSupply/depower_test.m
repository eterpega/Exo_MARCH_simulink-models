%get data from file
defaultFile='psuMeasurements.txt';
[plotFig, data] = plotPsuData(defaultFile);
% save figure to file
print(plotFig,'psuMeasurements','-dpng');
close all;
