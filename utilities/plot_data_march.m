function plot_data_march(struct,dataToPlotCell)
%HOW TO USE
%First save the raw data from the MARCH as structs with get_data_march,
%which saves joint structures with the data. Use that structure in this
%function. Then use this function to plot the parameters you want.
%Example:
%plot_data_march(dataMARCH.LHFE,'Angle') for plotting all the LHFE angles
%plot_data_march(dataMARCH.LHFE,'Torque') for plotting all the LHFE torques
%NOTE: the input for dataToPlotCell is sensitive to capital or non capital
%letters. Use the format as in dataLogHandler in HighLevelMARCH

clc;

%% Preparing the data
fieldNames = fieldnames(struct);
numberOfFieldsInStruct = length(fieldNames)-1;
dataToPlotCell = cellstr(dataToPlotCell); 
for t = 1:numberOfFieldsInStruct
   if(numel(struct.(char(fieldNames(t))))~=length(struct.time))
       numberOfFieldsInSubStruct = numel(fieldnames(struct.(char(fieldNames(t)))));
   else
       numberOfFieldsInSubStruct = 1;
   end
    for g = 1:numberOfFieldsInSubStruct
        if(isfield(struct.(char(fieldNames(t))),'signalNames'))
            allSignalsNames{t} = struct.(char(fieldNames(t))).signalNames;
        else
            allSignalsNames{t} = {};
        end  
    end
end
time = struct.time;
%% Finding the indices to plot
% Test: dataToPlot = {'Angle' 'LHFE'};
[numRows dump] = size(struct.time);
clear dump;

tempVal = zeros(numberOfFieldsInStruct,max(cellfun('length', allSignalsNames)));
for p = 1:length(dataToPlotCell)
    for u = 1:(length(allSignalsNames))
        if(~isempty(contains(allSignalsNames{u},char(dataToPlotCell(p)))))
            %tempVal(u,:) = contains(allSignalsNames{u},dataToPlotCell(p));
            tempVal = place_matrix_in_other(tempVal,contains(allSignalsNames{u},char(dataToPlotCell{p})),u,1);
            
            [fieldsToPlot indicesToPlot] = find(tempVal);
        end
        
    end
    
end



%% Finding the data
rangeData = zeros(numberOfFieldsInStruct,2);

for m = 1:numberOfFieldsInStruct
     if(isfield(struct.(char(fieldNames(m))),'signalNames'))
            rangeData(m,:) = [rangeData((max((m-1),1)),2),length(struct.(char(fieldNames(m))).signalNames)+rangeData((max((m-1),1)),2)];
     end
end

%% Plot the desired data

numOfPlots = length(indicesToPlot);
legendCell = cell(numOfPlots,1);



figure
title('Plot:')
for r = 1:numOfPlots
    plot(time,struct.(char(fieldNames(fieldsToPlot(r)))).data(:,indicesToPlot(r)));
    hold on
    legendCell(r) = (struct.(char(fieldNames(fieldsToPlot(r)))).signalNames(indicesToPlot(r)));
end
legend(legendCell);
xlabel('time [s]');

end
