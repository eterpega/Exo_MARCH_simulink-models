function sys=trajectory_test_v_1ref
sys = [];
sys.child = [];
sys.NumDataTypes = 9; 
sys.DataTypes = [];
temp.EnumNames='';
temp.EnumValues = [];
temp.Name = '';
sys.DataTypes = repmat(temp,1,9);
sys.DataTypes(1).Name = 'real_T';
sys.DataTypes(2).Name = 'uint8_T';
sys.DataTypes(3).Name = 'uint32_T';
sys.DataTypes(4).Name = 'int32_T';
sys.DataTypes(5).Name = 'struct_ZpgCdW5JtuB5cVmaeyPorE';
sys.DataTypes(6).Name = 'struct_DZYtQxXItTyFEf1888hMRD';
sys.DataTypes(7).Name = 'struct_VzCJEo0KbLF486WGOYwgAD';
sys.DataTypes(8).Name = 'struct_OBtc9Z7kNaOBweUN8UV7FC';
sys.DataTypes(9).Name = 'struct_qp5kuiWII5n5rBhED3GonD';
