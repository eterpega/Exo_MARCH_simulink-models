function sys=calibration_model_feedforwardref
sys = [];
sys.child = [];
sys.NumDataTypes = 6; 
sys.DataTypes = [];
temp.EnumNames='';
temp.EnumValues = [];
temp.Name = '';
sys.DataTypes = repmat(temp,1,6);
sys.DataTypes(1).Name = 'uint16_T';
sys.DataTypes(2).Name = 'uint8_T';
sys.DataTypes(3).Name = 'int32_T';
sys.DataTypes(4).Name = 'int16_T';
sys.DataTypes(5).Name = 'uint32_T';
sys.DataTypes(6).Name = 'real_T';
