function [pdbError]  = getPDBErrorFromErrorCode(errorCode)
switch(errorCode)
    case hex2dec('02') | hex2dec('16')
        pdbError = PDBError.PDB_TEMP_SENSOR_ERROR;
    case hex2dec('10')
        pdbError = PDBError.PDB_HIGH_CURRENT_WARNING;
    case hex2dec('11')
        pdbError = PDBError.PDB_HIGH_CURRENT_ERROR;
    case hex2dec('12')
        pdbError = PDBError.PDB_LOW_VOLTAGE_WARNING;
    case hex2dec('13')
        pdbError = PDBError.PDB_LOW_VOLTAGE_ERROR;
    case hex2dec('14')
        pdbError = PDBError.PDB_HIGH_TEMPERATURE_WARNING;
    case hex2dec('15')
        pdbError = PDBError.PDB_HIGH_TEMPERATURE_ERROR;
    case 0 % then ethercat isnt working yet
        pdbError = PDBError.PDB_DISCONNECTED;
    case 72 % this means no error
        pdbError = PDBError.NO_ERROR_PDB;
    otherwise
        pdbError = PDBError.UNKNOWN_ERROR_PDB;

end