function finalMatrix = place_matrix_in_other(matrixToPlaceIn,matrixPlacedInBigger,rowToPlaceIn,columnToPlaceIn)
% Create sample data:


% Get sizes
[rowsBig, columnsBig] = size(matrixToPlaceIn);
[rowsSmall, columnsSmall] = size(matrixPlacedInBigger);
% Specify upper left row, column of where
% we'd like to paste the small matrix.

% Determine lower right location.
row2 = rowToPlaceIn + rowsSmall - 1;
column2 = columnToPlaceIn + columnsSmall - 1;
% See if it will fit.
if row2 <= rowsBig
	% It will fit, so paste it.
	matrixToPlaceIn(rowToPlaceIn:row2, columnToPlaceIn:column2) = matrixPlacedInBigger;
else
	% It won't fit
	warningMessage = sprintf('That will not fit.\nThe lower right coordinate would be at row %d, column %d.',...
		row2, column2);
	uiwait(warndlg(warningMessage));
end
finalMatrix = matrixToPlaceIn;

end