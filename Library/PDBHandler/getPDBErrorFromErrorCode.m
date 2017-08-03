function [pdbError]  = getPDBErrorFromErrorCode(errorCode)
    case hex2dec('')
        pdbError = PDBError.PDB_TEMP_SENSOR_ERROR;
    case 0 % then ethercat isnt working yet
        pdbError = PDBError.PDB_DISCONNECTED;
    case 72 % this means no error
        pdbError = PDBError.NO_ERROR_PDB;
    otherwise
        pdbError = PDBError.UNKNOWN_ERROR;

end