classdef PDBError < Simulink.IntEnumType
    enumeration
        NO_ERROR_PDB(72)
        PDB_DISCONNECTED(4000)
        PDB_TEMP_SENSOR_ERROR(4001)
        PDB_HIGH_CURRENT_WARNING(4002)
        PDB_HIGH_CURRENT_ERROR(4003)
        PDB_LOW_VOLTAGE_WARNING(4004)
        PDB_LOW_VOLTAGE_ERROR(4005)
        PDB_HIGH_TEMPERATURE_WARNING(4006)
        PDB_HIGH_TEMPERATURE_ERROR(4007)
        UNKNOWN_ERROR(666)
       
       
       
    end
    
end

