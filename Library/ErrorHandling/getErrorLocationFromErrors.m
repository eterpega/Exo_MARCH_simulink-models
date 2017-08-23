function errorLocation = getErrorLocationFromErrors(deviceErrors)
%We set a binary message
%0000 0000
%LHFE|LKFE|RHFE|RKFE LGES|RGES|BGES|PDB
errorLocation = '00000000';

for i=1:4
    errorLocation(i) = log2char(deviceErrors.errorSOMANETs(i)~=SomanetError.NOERROR_SOMANET);
end

for i=1:3
    errorLocation(4+i) = log2char(deviceErrors.errorGES(i) ~= GESError.GES_NO_ERROR);
end

errorLocation(8) = log2char(deviceErrors.errorPDB ~= PDBError.NO_ERROR_PDB);

end

