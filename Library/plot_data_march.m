function plot_data_march(struct,dataToPlot)
%HOW TO USE
%First save the raw data from the MARCH as structs with get_data_march,
%which saves joint structures with the data. Use that structure in this
%function. Then use this function to plot the parameters you want.

% Attach to the target computer file system.
close all;clc;

%% Preparing the data

allSignalsNames = {struct.jointConfig.signalNames{:},struct.receivedFromSOMANET.signalNames{:},struct.sendToSOMANET.signalNames{:}};
time = struct.time;
%% Finding the indices to plot
% Test: dataToPlot = {'Angle' 'LHFE'};
[numRows dump] = size(struct.time);
clear dump;

oldTempVal = 0;
for p = 1:length(dataToPlot)
    tempVal = contains(allSignalsNames,dataToPlot(p));
    if(oldTempVal ==0)
        
        oldTempVal = tempVal;
        
    else
        oldTempVal = (oldTempVal & tempVal);
        
    end
end

indicesToPlot = find(oldTempVal);

%% Finding the data
rangeConfig = [0,length(struct.jointConfig.signalNames)];
rangeReceivedData = [rangeConfig(2)+1,rangeConfig(2)+length(struct.receivedFromSOMANET.signalNames)];
rangeSendData = [rangeReceivedData(2)+1,rangeReceivedData(2)+length(struct.sendToSOMANET.signalNames)];

jointConfigIndices = indicesToPlot( indicesToPlot >= rangeConfig(1) & indicesToPlot <= rangeConfig(2) );
receivedDataIndices = indicesToPlot( indicesToPlot >= rangeReceivedData(1) & indicesToPlot <= rangeReceivedData(2) ) - rangeConfig(2);
sendDataIndices = indicesToPlot( indicesToPlot >= rangeSendData(1) & indicesToPlot <= rangeSendData(2) )-rangeReceivedData(2);

%% Plot the desired data
dataToPlot = zeros(numRows,length(indicesToPlot));
numOfPlots = length(jointConfigIndices) + length(receivedDataIndices) + length(sendDataIndices) ;
legendCell = cell(numOfPlots,1);
legendIndex = 1;

figure
title('Plot:')
if (any(jointConfigIndices))
    for r = 1:length(jointConfigIndices)
        plot(time, struct.jointConfig.data(:,jointConfigIndices(r)));
        hold on
        legendCell(legendIndex) = (struct.jointConfig.signalNames(jointConfigIndices(r)));
        %legendIndex = legendIndex + 1;
    end
end
if (any(receivedDataIndices))
    for q = 1:length(receivedDataIndices)
        plot(time,struct.receivedFromSOMANET.data(:,receivedDataIndices(q)));
        hold on
        legendCell(q+length(jointConfigIndices)) = (struct.receivedFromSOMANET.signalNames(receivedDataIndices(q)));
        %legendIndex = legendIndex + 1;
    end  
end
if (any(sendDataIndices))
    for w = 1:length(sendDataIndices)
        plot(time,struct.sendToSOMANET.data(:,sendDataIndices(w)));
        hold on
        legendCell(w+length(jointConfigIndices)+length(receivedDataIndices)) = (struct.sendToSOMANET.signalNames(sendDataIndices(w)));
        %legendIndex = legendIndex + 1;
    end            
end
            
legend(legendCell);
xlabel('time [s]');

end