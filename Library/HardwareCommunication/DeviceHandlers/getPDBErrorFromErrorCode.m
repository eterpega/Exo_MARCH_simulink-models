function [pdbError]  = getPDBErrorFromErrorCode(errorCode)
% translates the error messages into a PDBError for the master
% protocol can be found on confluence.
% message looks like this:
% fttc cvvs ss-- ----
% 0000 0000 0000 0000
% f is a flag to signal if pdb booted correctly. 1 if booted correctly 0 otherwise
% each other field corresponds to a flag of the respective error
% t -> temp errors, c->current errors, v->voltage errors s-> state errors

if errorCode == 32768 %[binary: 1000 0000 0000 0000]
    pdbError = PDBError.NO_ERROR_PDB;
    return;
end

errorCodebin = dec2bin(errorCode);
f = errorCodebin(1);
t = errorCodebin(2:3); 
c = errorCodebin(4:5);
v = errorCodebin(6:7);
s = errorCodebin(8:10);

if strcmp(f,'0') %triggered when pdb is not booted correctedly which means it's disconnected
    pdbError = PDBError.PDB_DISCONNECTED;
elseif strcmp(c,'10')
%     pdbError = PDBError.PDB_HIGH_CURRENT_ERROR;
    pdbError = PDBError.NO_ERROR_PDB;
elseif strcmp(v,'10')
    pdbError = PDBError.PDB_LOW_VOLTAGE_ERROR;
elseif strcmp(t,'10')
    pdbError = PDBError.PDB_HIGH_TEMPERATURE_ERROR;
elseif strcmp(c,'01')
%     pdbError = PDBError.PDB_HIGH_CURRENT_WARNING;
    pdbError = PDBError.NO_ERROR_PDB;
elseif strcmp(v,'01')
    pdbError = PDBError.PDB_LOW_VOLTAGE_WARNING;
elseif strcmp(t,'01')
    pdbError = PDBError.PDB_HIGH_TEMPERATURE_WARNING;
elseif strcmp(s,'100') %triggered when unknown state on the pdb
    pdbError = PDBError.UNKNOWN_ERROR_PDB;
else
    pdbError = PDBError.UNKNOWN_ERROR_PDB;

end