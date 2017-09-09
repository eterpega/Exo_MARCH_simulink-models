function plot_data_march(struct,dataToPlotCell,smoothSamples)
%HOW TO USE
%First save the raw data from the MARCH as structs with get_data_march,
%which saves joint structures with the data. Use that structure in this
%function. Then use this function to plot the parameters you want.
%Example:
%plot_data_march(dataMARCH.LHFE,'Angle',1) for plotting all the LHFE angles
%without smoothening
%plot_data_march(dataMARCH.LHFE,'Torque',40) for plotting all the LHFE
%torques with smoothening
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



%figure
title('Plot:')
for r = 1:numOfPlots
    plot(time,smooth(struct.(char(fieldNames(fieldsToPlot(r)))).data(:,indicesToPlot(r)),smoothSamples));
    hold on
    legendCell(r) = (struct.(char(fieldNames(fieldsToPlot(r)))).signalNames(indicesToPlot(r)));
end
legend(legendCell);
xlabel('time [s]');

if contains(dataToPlotCell,'masterState')
    yLabelsMasterStates ={'HOLDSIT(1)', 'MANUAL(2)', 'STANDINGUP(3)', 'HOLDSTAND(4)',...
        'SITTINGDOWN(5)', 'CONTINUOUSGAIT(6)', 'STAIRSUP(7)', 'SLOPEUP(8)',...
        'STONES(9)', 'STAIRSDOWN(10)','SLOPEDOWN(11)','HOLDSOFA(12)','SOFADOWN(13)','SOFAUP(14)','ROUGHTERRAIN(15)','SINGLE_STEP(16)','SEVERE_ERROR(666)','UNREACHABLE(999)','FULLMANUAL(1337)','SHUTTING_DOWN(9001)'};
    set(gca, 'Ytick',[1,2,3,4,5,6,7,8,9,10, 11, 12, 13, 14, 15, 16, 666, 999, 1337, 9001],'YTickLabel', yLabelsMasterStates);

end

end
