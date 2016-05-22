function pt=calibration_modelpt
pt = [];

  
pt(1).blockname = 'Discrete Derivative';
pt(1).paramname = 'ICPrevScaledInput';
pt(1).class     = 'scalar';
pt(1).nrows     = 1;
pt(1).ncols     = 1;
pt(1).subsource = 'SS_UINT32';
pt(1).ndims     = '2';
pt(1).size      = '[]';
pt(1).isStruct  =false;
pt(getlenPT) = pt(1);


  
pt(2).blockname = 'Magnitude';
pt(2).paramname = 'Value';
pt(2).class     = 'scalar';
pt(2).nrows     = 1;
pt(2).ncols     = 1;
pt(2).subsource = 'SS_UINT32';
pt(2).ndims     = '2';
pt(2).size      = '[]';
pt(2).isStruct  =false;


  
pt(3).blockname = 'Gain';
pt(3).paramname = 'Gain';
pt(3).class     = 'scalar';
pt(3).nrows     = 1;
pt(3).ncols     = 1;
pt(3).subsource = 'SS_DOUBLE';
pt(3).ndims     = '2';
pt(3).size      = '[]';
pt(3).isStruct  =false;


  
pt(4).blockname = 'Angle';
pt(4).paramname = 'P1';
pt(4).class     = 'vector';
pt(4).nrows     = 1;
pt(4).ncols     = 22;
pt(4).subsource = 'SS_DOUBLE';
pt(4).ndims     = '2';
pt(4).size      = '[]';
pt(4).isStruct  =false;


  
pt(5).blockname = 'Angle';
pt(5).paramname = 'P2';
pt(5).class     = 'scalar';
pt(5).nrows     = 1;
pt(5).ncols     = 1;
pt(5).subsource = 'SS_DOUBLE';
pt(5).ndims     = '2';
pt(5).size      = '[]';
pt(5).isStruct  =false;


  
pt(6).blockname = 'Angle';
pt(6).paramname = 'P3';
pt(6).class     = 'scalar';
pt(6).nrows     = 1;
pt(6).ncols     = 1;
pt(6).subsource = 'SS_DOUBLE';
pt(6).ndims     = '2';
pt(6).size      = '[]';
pt(6).isStruct  =false;


  
pt(7).blockname = 'Angle';
pt(7).paramname = 'P4';
pt(7).class     = 'scalar';
pt(7).nrows     = 1;
pt(7).ncols     = 1;
pt(7).subsource = 'SS_DOUBLE';
pt(7).ndims     = '2';
pt(7).size      = '[]';
pt(7).isStruct  =false;


  
pt(8).blockname = 'Angle';
pt(8).paramname = 'P5';
pt(8).class     = 'scalar';
pt(8).nrows     = 1;
pt(8).ncols     = 1;
pt(8).subsource = 'SS_DOUBLE';
pt(8).ndims     = '2';
pt(8).size      = '[]';
pt(8).isStruct  =false;


  
pt(9).blockname = 'Angle';
pt(9).paramname = 'P6';
pt(9).class     = 'scalar';
pt(9).nrows     = 1;
pt(9).ncols     = 1;
pt(9).subsource = 'SS_DOUBLE';
pt(9).ndims     = '2';
pt(9).size      = '[]';
pt(9).isStruct  =false;


  
pt(10).blockname = 'Angle';
pt(10).paramname = 'P7';
pt(10).class     = 'scalar';
pt(10).nrows     = 1;
pt(10).ncols     = 1;
pt(10).subsource = 'SS_DOUBLE';
pt(10).ndims     = '2';
pt(10).size      = '[]';
pt(10).isStruct  =false;


  
pt(11).blockname = 'EtherCAT PDO Transmit ';
pt(11).paramname = 'P1';
pt(11).class     = 'vector';
pt(11).nrows     = 1;
pt(11).ncols     = 29;
pt(11).subsource = 'SS_DOUBLE';
pt(11).ndims     = '2';
pt(11).size      = '[]';
pt(11).isStruct  =false;


  
pt(12).blockname = 'EtherCAT PDO Transmit ';
pt(12).paramname = 'P2';
pt(12).class     = 'scalar';
pt(12).nrows     = 1;
pt(12).ncols     = 1;
pt(12).subsource = 'SS_DOUBLE';
pt(12).ndims     = '2';
pt(12).size      = '[]';
pt(12).isStruct  =false;


  
pt(13).blockname = 'EtherCAT PDO Transmit ';
pt(13).paramname = 'P3';
pt(13).class     = 'scalar';
pt(13).nrows     = 1;
pt(13).ncols     = 1;
pt(13).subsource = 'SS_DOUBLE';
pt(13).ndims     = '2';
pt(13).size      = '[]';
pt(13).isStruct  =false;


  
pt(14).blockname = 'EtherCAT PDO Transmit ';
pt(14).paramname = 'P4';
pt(14).class     = 'scalar';
pt(14).nrows     = 1;
pt(14).ncols     = 1;
pt(14).subsource = 'SS_DOUBLE';
pt(14).ndims     = '2';
pt(14).size      = '[]';
pt(14).isStruct  =false;


  
pt(15).blockname = 'EtherCAT PDO Transmit ';
pt(15).paramname = 'P5';
pt(15).class     = 'scalar';
pt(15).nrows     = 1;
pt(15).ncols     = 1;
pt(15).subsource = 'SS_DOUBLE';
pt(15).ndims     = '2';
pt(15).size      = '[]';
pt(15).isStruct  =false;


  
pt(16).blockname = 'EtherCAT PDO Transmit ';
pt(16).paramname = 'P6';
pt(16).class     = 'scalar';
pt(16).nrows     = 1;
pt(16).ncols     = 1;
pt(16).subsource = 'SS_DOUBLE';
pt(16).ndims     = '2';
pt(16).size      = '[]';
pt(16).isStruct  =false;


  
pt(17).blockname = 'EtherCAT PDO Transmit ';
pt(17).paramname = 'P7';
pt(17).class     = 'scalar';
pt(17).nrows     = 1;
pt(17).ncols     = 1;
pt(17).subsource = 'SS_DOUBLE';
pt(17).ndims     = '2';
pt(17).size      = '[]';
pt(17).isStruct  =false;


  
pt(18).blockname = 'Motor Velcotiy SOES';
pt(18).paramname = 'P1';
pt(18).class     = 'vector';
pt(18).nrows     = 1;
pt(18).ncols     = 22;
pt(18).subsource = 'SS_DOUBLE';
pt(18).ndims     = '2';
pt(18).size      = '[]';
pt(18).isStruct  =false;


  
pt(19).blockname = 'Motor Velcotiy SOES';
pt(19).paramname = 'P2';
pt(19).class     = 'scalar';
pt(19).nrows     = 1;
pt(19).ncols     = 1;
pt(19).subsource = 'SS_DOUBLE';
pt(19).ndims     = '2';
pt(19).size      = '[]';
pt(19).isStruct  =false;


  
pt(20).blockname = 'Motor Velcotiy SOES';
pt(20).paramname = 'P3';
pt(20).class     = 'scalar';
pt(20).nrows     = 1;
pt(20).ncols     = 1;
pt(20).subsource = 'SS_DOUBLE';
pt(20).ndims     = '2';
pt(20).size      = '[]';
pt(20).isStruct  =false;


  
pt(21).blockname = 'Motor Velcotiy SOES';
pt(21).paramname = 'P4';
pt(21).class     = 'scalar';
pt(21).nrows     = 1;
pt(21).ncols     = 1;
pt(21).subsource = 'SS_DOUBLE';
pt(21).ndims     = '2';
pt(21).size      = '[]';
pt(21).isStruct  =false;


  
pt(22).blockname = 'Motor Velcotiy SOES';
pt(22).paramname = 'P5';
pt(22).class     = 'scalar';
pt(22).nrows     = 1;
pt(22).ncols     = 1;
pt(22).subsource = 'SS_DOUBLE';
pt(22).ndims     = '2';
pt(22).size      = '[]';
pt(22).isStruct  =false;


  
pt(23).blockname = 'Motor Velcotiy SOES';
pt(23).paramname = 'P6';
pt(23).class     = 'scalar';
pt(23).nrows     = 1;
pt(23).ncols     = 1;
pt(23).subsource = 'SS_DOUBLE';
pt(23).ndims     = '2';
pt(23).size      = '[]';
pt(23).isStruct  =false;


  
pt(24).blockname = 'Motor Velcotiy SOES';
pt(24).paramname = 'P7';
pt(24).class     = 'scalar';
pt(24).nrows     = 1;
pt(24).ncols     = 1;
pt(24).subsource = 'SS_DOUBLE';
pt(24).ndims     = '2';
pt(24).size      = '[]';
pt(24).isStruct  =false;


  
pt(25).blockname = 'Discrete Derivative/TSamp';
pt(25).paramname = 'WtEt';
pt(25).class     = 'scalar';
pt(25).nrows     = 1;
pt(25).ncols     = 1;
pt(25).subsource = 'SS_UINT32';
pt(25).ndims     = '2';
pt(25).size      = '[]';
pt(25).isStruct  =false;

function len = getlenPT
len = 25;

