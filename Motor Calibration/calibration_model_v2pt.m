function pt=calibration_model_v2pt
pt = [];

  
pt(1).blockname = 'C_LAG';
pt(1).paramname = 'Value';
pt(1).class     = 'scalar';
pt(1).nrows     = 1;
pt(1).ncols     = 1;
pt(1).subsource = 'SS_UINT32';
pt(1).ndims     = '2';
pt(1).size      = '[]';
pt(1).isStruct  =false;
pt(getlenPT) = pt(1);


  
pt(2).blockname = 'C_TORQUE';
pt(2).paramname = 'Value';
pt(2).class     = 'scalar';
pt(2).nrows     = 1;
pt(2).ncols     = 1;
pt(2).subsource = 'SS_UINT32';
pt(2).ndims     = '2';
pt(2).size      = '[]';
pt(2).isStruct  =false;


  
pt(3).blockname = 'C_VELOCITY';
pt(3).paramname = 'Value';
pt(3).class     = 'scalar';
pt(3).nrows     = 1;
pt(3).ncols     = 1;
pt(3).subsource = 'SS_UINT32';
pt(3).ndims     = '2';
pt(3).size      = '[]';
pt(3).isStruct  =false;


  
pt(4).blockname = 'Phaseoffset';
pt(4).paramname = 'Value';
pt(4).class     = 'scalar';
pt(4).nrows     = 1;
pt(4).ncols     = 1;
pt(4).subsource = 'SS_UINT32';
pt(4).ndims     = '2';
pt(4).size      = '[]';
pt(4).isStruct  =false;


  
pt(5).blockname = 'velocity setpoint';
pt(5).paramname = 'Value';
pt(5).class     = 'scalar';
pt(5).nrows     = 1;
pt(5).ncols     = 1;
pt(5).subsource = 'SS_UINT32';
pt(5).ndims     = '2';
pt(5).size      = '[]';
pt(5).isStruct  =false;


  
pt(6).blockname = 'EtherCAT PDO Receive';
pt(6).paramname = 'P1';
pt(6).class     = 'vector';
pt(6).nrows     = 1;
pt(6).ncols     = 45;
pt(6).subsource = 'SS_DOUBLE';
pt(6).ndims     = '2';
pt(6).size      = '[]';
pt(6).isStruct  =false;


  
pt(7).blockname = 'EtherCAT PDO Receive';
pt(7).paramname = 'P2';
pt(7).class     = 'scalar';
pt(7).nrows     = 1;
pt(7).ncols     = 1;
pt(7).subsource = 'SS_DOUBLE';
pt(7).ndims     = '2';
pt(7).size      = '[]';
pt(7).isStruct  =false;


  
pt(8).blockname = 'EtherCAT PDO Receive';
pt(8).paramname = 'P3';
pt(8).class     = 'scalar';
pt(8).nrows     = 1;
pt(8).ncols     = 1;
pt(8).subsource = 'SS_DOUBLE';
pt(8).ndims     = '2';
pt(8).size      = '[]';
pt(8).isStruct  =false;


  
pt(9).blockname = 'EtherCAT PDO Receive';
pt(9).paramname = 'P4';
pt(9).class     = 'scalar';
pt(9).nrows     = 1;
pt(9).ncols     = 1;
pt(9).subsource = 'SS_DOUBLE';
pt(9).ndims     = '2';
pt(9).size      = '[]';
pt(9).isStruct  =false;


  
pt(10).blockname = 'EtherCAT PDO Receive';
pt(10).paramname = 'P5';
pt(10).class     = 'scalar';
pt(10).nrows     = 1;
pt(10).ncols     = 1;
pt(10).subsource = 'SS_DOUBLE';
pt(10).ndims     = '2';
pt(10).size      = '[]';
pt(10).isStruct  =false;


  
pt(11).blockname = 'EtherCAT PDO Receive';
pt(11).paramname = 'P6';
pt(11).class     = 'scalar';
pt(11).nrows     = 1;
pt(11).ncols     = 1;
pt(11).subsource = 'SS_DOUBLE';
pt(11).ndims     = '2';
pt(11).size      = '[]';
pt(11).isStruct  =false;


  
pt(12).blockname = 'EtherCAT PDO Receive';
pt(12).paramname = 'P7';
pt(12).class     = 'scalar';
pt(12).nrows     = 1;
pt(12).ncols     = 1;
pt(12).subsource = 'SS_DOUBLE';
pt(12).ndims     = '2';
pt(12).size      = '[]';
pt(12).isStruct  =false;


  
pt(13).blockname = 'EtherCAT PDO Receive1';
pt(13).paramname = 'P1';
pt(13).class     = 'vector';
pt(13).nrows     = 1;
pt(13).ncols     = 42;
pt(13).subsource = 'SS_DOUBLE';
pt(13).ndims     = '2';
pt(13).size      = '[]';
pt(13).isStruct  =false;


  
pt(14).blockname = 'EtherCAT PDO Receive1';
pt(14).paramname = 'P2';
pt(14).class     = 'scalar';
pt(14).nrows     = 1;
pt(14).ncols     = 1;
pt(14).subsource = 'SS_DOUBLE';
pt(14).ndims     = '2';
pt(14).size      = '[]';
pt(14).isStruct  =false;


  
pt(15).blockname = 'EtherCAT PDO Receive1';
pt(15).paramname = 'P3';
pt(15).class     = 'scalar';
pt(15).nrows     = 1;
pt(15).ncols     = 1;
pt(15).subsource = 'SS_DOUBLE';
pt(15).ndims     = '2';
pt(15).size      = '[]';
pt(15).isStruct  =false;


  
pt(16).blockname = 'EtherCAT PDO Receive1';
pt(16).paramname = 'P4';
pt(16).class     = 'scalar';
pt(16).nrows     = 1;
pt(16).ncols     = 1;
pt(16).subsource = 'SS_DOUBLE';
pt(16).ndims     = '2';
pt(16).size      = '[]';
pt(16).isStruct  =false;


  
pt(17).blockname = 'EtherCAT PDO Receive1';
pt(17).paramname = 'P5';
pt(17).class     = 'scalar';
pt(17).nrows     = 1;
pt(17).ncols     = 1;
pt(17).subsource = 'SS_DOUBLE';
pt(17).ndims     = '2';
pt(17).size      = '[]';
pt(17).isStruct  =false;


  
pt(18).blockname = 'EtherCAT PDO Receive1';
pt(18).paramname = 'P6';
pt(18).class     = 'scalar';
pt(18).nrows     = 1;
pt(18).ncols     = 1;
pt(18).subsource = 'SS_DOUBLE';
pt(18).ndims     = '2';
pt(18).size      = '[]';
pt(18).isStruct  =false;


  
pt(19).blockname = 'EtherCAT PDO Receive1';
pt(19).paramname = 'P7';
pt(19).class     = 'scalar';
pt(19).nrows     = 1;
pt(19).ncols     = 1;
pt(19).subsource = 'SS_DOUBLE';
pt(19).ndims     = '2';
pt(19).size      = '[]';
pt(19).isStruct  =false;


  
pt(20).blockname = 'EtherCAT PDO Transmit ';
pt(20).paramname = 'P1';
pt(20).class     = 'vector';
pt(20).nrows     = 1;
pt(20).ncols     = 46;
pt(20).subsource = 'SS_DOUBLE';
pt(20).ndims     = '2';
pt(20).size      = '[]';
pt(20).isStruct  =false;


  
pt(21).blockname = 'EtherCAT PDO Transmit ';
pt(21).paramname = 'P2';
pt(21).class     = 'scalar';
pt(21).nrows     = 1;
pt(21).ncols     = 1;
pt(21).subsource = 'SS_DOUBLE';
pt(21).ndims     = '2';
pt(21).size      = '[]';
pt(21).isStruct  =false;


  
pt(22).blockname = 'EtherCAT PDO Transmit ';
pt(22).paramname = 'P3';
pt(22).class     = 'scalar';
pt(22).nrows     = 1;
pt(22).ncols     = 1;
pt(22).subsource = 'SS_DOUBLE';
pt(22).ndims     = '2';
pt(22).size      = '[]';
pt(22).isStruct  =false;


  
pt(23).blockname = 'EtherCAT PDO Transmit ';
pt(23).paramname = 'P4';
pt(23).class     = 'scalar';
pt(23).nrows     = 1;
pt(23).ncols     = 1;
pt(23).subsource = 'SS_DOUBLE';
pt(23).ndims     = '2';
pt(23).size      = '[]';
pt(23).isStruct  =false;


  
pt(24).blockname = 'EtherCAT PDO Transmit ';
pt(24).paramname = 'P5';
pt(24).class     = 'scalar';
pt(24).nrows     = 1;
pt(24).ncols     = 1;
pt(24).subsource = 'SS_DOUBLE';
pt(24).ndims     = '2';
pt(24).size      = '[]';
pt(24).isStruct  =false;


  
pt(25).blockname = 'EtherCAT PDO Transmit ';
pt(25).paramname = 'P6';
pt(25).class     = 'scalar';
pt(25).nrows     = 1;
pt(25).ncols     = 1;
pt(25).subsource = 'SS_DOUBLE';
pt(25).ndims     = '2';
pt(25).size      = '[]';
pt(25).isStruct  =false;


  
pt(26).blockname = 'EtherCAT PDO Transmit ';
pt(26).paramname = 'P7';
pt(26).class     = 'scalar';
pt(26).nrows     = 1;
pt(26).ncols     = 1;
pt(26).subsource = 'SS_DOUBLE';
pt(26).ndims     = '2';
pt(26).size      = '[]';
pt(26).isStruct  =false;


  
pt(27).blockname = 'EtherCAT PDO Transmit 1';
pt(27).paramname = 'P1';
pt(27).class     = 'vector';
pt(27).nrows     = 1;
pt(27).ncols     = 38;
pt(27).subsource = 'SS_DOUBLE';
pt(27).ndims     = '2';
pt(27).size      = '[]';
pt(27).isStruct  =false;


  
pt(28).blockname = 'EtherCAT PDO Transmit 1';
pt(28).paramname = 'P2';
pt(28).class     = 'scalar';
pt(28).nrows     = 1;
pt(28).ncols     = 1;
pt(28).subsource = 'SS_DOUBLE';
pt(28).ndims     = '2';
pt(28).size      = '[]';
pt(28).isStruct  =false;


  
pt(29).blockname = 'EtherCAT PDO Transmit 1';
pt(29).paramname = 'P3';
pt(29).class     = 'scalar';
pt(29).nrows     = 1;
pt(29).ncols     = 1;
pt(29).subsource = 'SS_DOUBLE';
pt(29).ndims     = '2';
pt(29).size      = '[]';
pt(29).isStruct  =false;


  
pt(30).blockname = 'EtherCAT PDO Transmit 1';
pt(30).paramname = 'P4';
pt(30).class     = 'scalar';
pt(30).nrows     = 1;
pt(30).ncols     = 1;
pt(30).subsource = 'SS_DOUBLE';
pt(30).ndims     = '2';
pt(30).size      = '[]';
pt(30).isStruct  =false;


  
pt(31).blockname = 'EtherCAT PDO Transmit 1';
pt(31).paramname = 'P5';
pt(31).class     = 'scalar';
pt(31).nrows     = 1;
pt(31).ncols     = 1;
pt(31).subsource = 'SS_DOUBLE';
pt(31).ndims     = '2';
pt(31).size      = '[]';
pt(31).isStruct  =false;


  
pt(32).blockname = 'EtherCAT PDO Transmit 1';
pt(32).paramname = 'P6';
pt(32).class     = 'scalar';
pt(32).nrows     = 1;
pt(32).ncols     = 1;
pt(32).subsource = 'SS_DOUBLE';
pt(32).ndims     = '2';
pt(32).size      = '[]';
pt(32).isStruct  =false;


  
pt(33).blockname = 'EtherCAT PDO Transmit 1';
pt(33).paramname = 'P7';
pt(33).class     = 'scalar';
pt(33).nrows     = 1;
pt(33).ncols     = 1;
pt(33).subsource = 'SS_DOUBLE';
pt(33).ndims     = '2';
pt(33).size      = '[]';
pt(33).isStruct  =false;


  
pt(34).blockname = 'EtherCAT PDO Transmit 2';
pt(34).paramname = 'P1';
pt(34).class     = 'vector';
pt(34).nrows     = 1;
pt(34).ncols     = 38;
pt(34).subsource = 'SS_DOUBLE';
pt(34).ndims     = '2';
pt(34).size      = '[]';
pt(34).isStruct  =false;


  
pt(35).blockname = 'EtherCAT PDO Transmit 2';
pt(35).paramname = 'P2';
pt(35).class     = 'scalar';
pt(35).nrows     = 1;
pt(35).ncols     = 1;
pt(35).subsource = 'SS_DOUBLE';
pt(35).ndims     = '2';
pt(35).size      = '[]';
pt(35).isStruct  =false;


  
pt(36).blockname = 'EtherCAT PDO Transmit 2';
pt(36).paramname = 'P3';
pt(36).class     = 'scalar';
pt(36).nrows     = 1;
pt(36).ncols     = 1;
pt(36).subsource = 'SS_DOUBLE';
pt(36).ndims     = '2';
pt(36).size      = '[]';
pt(36).isStruct  =false;


  
pt(37).blockname = 'EtherCAT PDO Transmit 2';
pt(37).paramname = 'P4';
pt(37).class     = 'scalar';
pt(37).nrows     = 1;
pt(37).ncols     = 1;
pt(37).subsource = 'SS_DOUBLE';
pt(37).ndims     = '2';
pt(37).size      = '[]';
pt(37).isStruct  =false;


  
pt(38).blockname = 'EtherCAT PDO Transmit 2';
pt(38).paramname = 'P5';
pt(38).class     = 'scalar';
pt(38).nrows     = 1;
pt(38).ncols     = 1;
pt(38).subsource = 'SS_DOUBLE';
pt(38).ndims     = '2';
pt(38).size      = '[]';
pt(38).isStruct  =false;


  
pt(39).blockname = 'EtherCAT PDO Transmit 2';
pt(39).paramname = 'P6';
pt(39).class     = 'scalar';
pt(39).nrows     = 1;
pt(39).ncols     = 1;
pt(39).subsource = 'SS_DOUBLE';
pt(39).ndims     = '2';
pt(39).size      = '[]';
pt(39).isStruct  =false;


  
pt(40).blockname = 'EtherCAT PDO Transmit 2';
pt(40).paramname = 'P7';
pt(40).class     = 'scalar';
pt(40).nrows     = 1;
pt(40).ncols     = 1;
pt(40).subsource = 'SS_DOUBLE';
pt(40).ndims     = '2';
pt(40).size      = '[]';
pt(40).isStruct  =false;


  
pt(41).blockname = 'EtherCAT PDO Transmit 3';
pt(41).paramname = 'P1';
pt(41).class     = 'vector';
pt(41).nrows     = 1;
pt(41).ncols     = 38;
pt(41).subsource = 'SS_DOUBLE';
pt(41).ndims     = '2';
pt(41).size      = '[]';
pt(41).isStruct  =false;


  
pt(42).blockname = 'EtherCAT PDO Transmit 3';
pt(42).paramname = 'P2';
pt(42).class     = 'scalar';
pt(42).nrows     = 1;
pt(42).ncols     = 1;
pt(42).subsource = 'SS_DOUBLE';
pt(42).ndims     = '2';
pt(42).size      = '[]';
pt(42).isStruct  =false;


  
pt(43).blockname = 'EtherCAT PDO Transmit 3';
pt(43).paramname = 'P3';
pt(43).class     = 'scalar';
pt(43).nrows     = 1;
pt(43).ncols     = 1;
pt(43).subsource = 'SS_DOUBLE';
pt(43).ndims     = '2';
pt(43).size      = '[]';
pt(43).isStruct  =false;


  
pt(44).blockname = 'EtherCAT PDO Transmit 3';
pt(44).paramname = 'P4';
pt(44).class     = 'scalar';
pt(44).nrows     = 1;
pt(44).ncols     = 1;
pt(44).subsource = 'SS_DOUBLE';
pt(44).ndims     = '2';
pt(44).size      = '[]';
pt(44).isStruct  =false;


  
pt(45).blockname = 'EtherCAT PDO Transmit 3';
pt(45).paramname = 'P5';
pt(45).class     = 'scalar';
pt(45).nrows     = 1;
pt(45).ncols     = 1;
pt(45).subsource = 'SS_DOUBLE';
pt(45).ndims     = '2';
pt(45).size      = '[]';
pt(45).isStruct  =false;


  
pt(46).blockname = 'EtherCAT PDO Transmit 3';
pt(46).paramname = 'P6';
pt(46).class     = 'scalar';
pt(46).nrows     = 1;
pt(46).ncols     = 1;
pt(46).subsource = 'SS_DOUBLE';
pt(46).ndims     = '2';
pt(46).size      = '[]';
pt(46).isStruct  =false;


  
pt(47).blockname = 'EtherCAT PDO Transmit 3';
pt(47).paramname = 'P7';
pt(47).class     = 'scalar';
pt(47).nrows     = 1;
pt(47).ncols     = 1;
pt(47).subsource = 'SS_DOUBLE';
pt(47).ndims     = '2';
pt(47).size      = '[]';
pt(47).isStruct  =false;


  
pt(48).blockname = 'EtherCAT PDO Transmit 4';
pt(48).paramname = 'P1';
pt(48).class     = 'vector';
pt(48).nrows     = 1;
pt(48).ncols     = 38;
pt(48).subsource = 'SS_DOUBLE';
pt(48).ndims     = '2';
pt(48).size      = '[]';
pt(48).isStruct  =false;


  
pt(49).blockname = 'EtherCAT PDO Transmit 4';
pt(49).paramname = 'P2';
pt(49).class     = 'scalar';
pt(49).nrows     = 1;
pt(49).ncols     = 1;
pt(49).subsource = 'SS_DOUBLE';
pt(49).ndims     = '2';
pt(49).size      = '[]';
pt(49).isStruct  =false;


  
pt(50).blockname = 'EtherCAT PDO Transmit 4';
pt(50).paramname = 'P3';
pt(50).class     = 'scalar';
pt(50).nrows     = 1;
pt(50).ncols     = 1;
pt(50).subsource = 'SS_DOUBLE';
pt(50).ndims     = '2';
pt(50).size      = '[]';
pt(50).isStruct  =false;


  
pt(51).blockname = 'EtherCAT PDO Transmit 4';
pt(51).paramname = 'P4';
pt(51).class     = 'scalar';
pt(51).nrows     = 1;
pt(51).ncols     = 1;
pt(51).subsource = 'SS_DOUBLE';
pt(51).ndims     = '2';
pt(51).size      = '[]';
pt(51).isStruct  =false;


  
pt(52).blockname = 'EtherCAT PDO Transmit 4';
pt(52).paramname = 'P5';
pt(52).class     = 'scalar';
pt(52).nrows     = 1;
pt(52).ncols     = 1;
pt(52).subsource = 'SS_DOUBLE';
pt(52).ndims     = '2';
pt(52).size      = '[]';
pt(52).isStruct  =false;


  
pt(53).blockname = 'EtherCAT PDO Transmit 4';
pt(53).paramname = 'P6';
pt(53).class     = 'scalar';
pt(53).nrows     = 1;
pt(53).ncols     = 1;
pt(53).subsource = 'SS_DOUBLE';
pt(53).ndims     = '2';
pt(53).size      = '[]';
pt(53).isStruct  =false;


  
pt(54).blockname = 'EtherCAT PDO Transmit 4';
pt(54).paramname = 'P7';
pt(54).class     = 'scalar';
pt(54).nrows     = 1;
pt(54).ncols     = 1;
pt(54).subsource = 'SS_DOUBLE';
pt(54).ndims     = '2';
pt(54).size      = '[]';
pt(54).isStruct  =false;


  
pt(55).blockname = 'PWM Angle';
pt(55).paramname = 'P1';
pt(55).class     = 'vector';
pt(55).nrows     = 1;
pt(55).ncols     = 42;
pt(55).subsource = 'SS_DOUBLE';
pt(55).ndims     = '2';
pt(55).size      = '[]';
pt(55).isStruct  =false;


  
pt(56).blockname = 'PWM Angle';
pt(56).paramname = 'P2';
pt(56).class     = 'scalar';
pt(56).nrows     = 1;
pt(56).ncols     = 1;
pt(56).subsource = 'SS_DOUBLE';
pt(56).ndims     = '2';
pt(56).size      = '[]';
pt(56).isStruct  =false;


  
pt(57).blockname = 'PWM Angle';
pt(57).paramname = 'P3';
pt(57).class     = 'scalar';
pt(57).nrows     = 1;
pt(57).ncols     = 1;
pt(57).subsource = 'SS_DOUBLE';
pt(57).ndims     = '2';
pt(57).size      = '[]';
pt(57).isStruct  =false;


  
pt(58).blockname = 'PWM Angle';
pt(58).paramname = 'P4';
pt(58).class     = 'scalar';
pt(58).nrows     = 1;
pt(58).ncols     = 1;
pt(58).subsource = 'SS_DOUBLE';
pt(58).ndims     = '2';
pt(58).size      = '[]';
pt(58).isStruct  =false;


  
pt(59).blockname = 'PWM Angle';
pt(59).paramname = 'P5';
pt(59).class     = 'scalar';
pt(59).nrows     = 1;
pt(59).ncols     = 1;
pt(59).subsource = 'SS_DOUBLE';
pt(59).ndims     = '2';
pt(59).size      = '[]';
pt(59).isStruct  =false;


  
pt(60).blockname = 'PWM Angle';
pt(60).paramname = 'P6';
pt(60).class     = 'scalar';
pt(60).nrows     = 1;
pt(60).ncols     = 1;
pt(60).subsource = 'SS_DOUBLE';
pt(60).ndims     = '2';
pt(60).size      = '[]';
pt(60).isStruct  =false;


  
pt(61).blockname = 'PWM Angle';
pt(61).paramname = 'P7';
pt(61).class     = 'scalar';
pt(61).nrows     = 1;
pt(61).ncols     = 1;
pt(61).subsource = 'SS_DOUBLE';
pt(61).ndims     = '2';
pt(61).size      = '[]';
pt(61).isStruct  =false;

function len = getlenPT
len = 61;

