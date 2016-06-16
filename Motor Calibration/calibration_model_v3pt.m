function pt=calibration_model_v3pt
pt = [];

  
pt(1).blockname = 'Constant';
pt(1).paramname = 'Value';
pt(1).class     = 'scalar';
pt(1).nrows     = 1;
pt(1).ncols     = 1;
pt(1).subsource = 'SS_DOUBLE';
pt(1).ndims     = '2';
pt(1).size      = '[]';
pt(1).isStruct  =false;
pt(getlenPT) = pt(1);


  
pt(2).blockname = 'D';
pt(2).paramname = 'Value';
pt(2).class     = 'scalar';
pt(2).nrows     = 1;
pt(2).ncols     = 1;
pt(2).subsource = 'SS_SINGLE';
pt(2).ndims     = '2';
pt(2).size      = '[]';
pt(2).isStruct  =false;


  
pt(3).blockname = 'I';
pt(3).paramname = 'Value';
pt(3).class     = 'scalar';
pt(3).nrows     = 1;
pt(3).ncols     = 1;
pt(3).subsource = 'SS_SINGLE';
pt(3).ndims     = '2';
pt(3).size      = '[]';
pt(3).isStruct  =false;


  
pt(4).blockname = 'P';
pt(4).paramname = 'Value';
pt(4).class     = 'scalar';
pt(4).nrows     = 1;
pt(4).ncols     = 1;
pt(4).subsource = 'SS_SINGLE';
pt(4).ndims     = '2';
pt(4).size      = '[]';
pt(4).isStruct  =false;


  
pt(5).blockname = 'Phaseoffset';
pt(5).paramname = 'Value';
pt(5).class     = 'scalar';
pt(5).nrows     = 1;
pt(5).ncols     = 1;
pt(5).subsource = 'SS_UINT32';
pt(5).ndims     = '2';
pt(5).size      = '[]';
pt(5).isStruct  =false;


  
pt(6).blockname = 'man mode';
pt(6).paramname = 'Value';
pt(6).class     = 'scalar';
pt(6).nrows     = 1;
pt(6).ncols     = 1;
pt(6).subsource = 'SS_UINT32';
pt(6).ndims     = '2';
pt(6).size      = '[]';
pt(6).isStruct  =false;


  
pt(7).blockname = 'velocity setpoint';
pt(7).paramname = 'Value';
pt(7).class     = 'scalar';
pt(7).nrows     = 1;
pt(7).ncols     = 1;
pt(7).subsource = 'SS_INT16';
pt(7).ndims     = '2';
pt(7).size      = '[]';
pt(7).isStruct  =false;


  
pt(8).blockname = 'Gain';
pt(8).paramname = 'Gain';
pt(8).class     = 'scalar';
pt(8).nrows     = 1;
pt(8).ncols     = 1;
pt(8).subsource = 'SS_SINGLE';
pt(8).ndims     = '2';
pt(8).size      = '[]';
pt(8).isStruct  =false;


  
pt(9).blockname = 'Gain1';
pt(9).paramname = 'Gain';
pt(9).class     = 'scalar';
pt(9).nrows     = 1;
pt(9).ncols     = 1;
pt(9).subsource = 'SS_SINGLE';
pt(9).ndims     = '2';
pt(9).size      = '[]';
pt(9).isStruct  =false;


  
pt(10).blockname = 'Gain2';
pt(10).paramname = 'Gain';
pt(10).class     = 'scalar';
pt(10).nrows     = 1;
pt(10).ncols     = 1;
pt(10).subsource = 'SS_SINGLE';
pt(10).ndims     = '2';
pt(10).size      = '[]';
pt(10).isStruct  =false;


  
pt(11).blockname = 'Saturation';
pt(11).paramname = 'UpperLimit';
pt(11).class     = 'scalar';
pt(11).nrows     = 1;
pt(11).ncols     = 1;
pt(11).subsource = 'SS_UINT32';
pt(11).ndims     = '2';
pt(11).size      = '[]';
pt(11).isStruct  =false;


  
pt(12).blockname = 'Saturation';
pt(12).paramname = 'LowerLimit';
pt(12).class     = 'scalar';
pt(12).nrows     = 1;
pt(12).ncols     = 1;
pt(12).subsource = 'SS_UINT32';
pt(12).ndims     = '2';
pt(12).size      = '[]';
pt(12).isStruct  =false;


  
pt(13).blockname = 'EtherCAT PDO Receive';
pt(13).paramname = 'P1';
pt(13).class     = 'vector';
pt(13).nrows     = 1;
pt(13).ncols     = 45;
pt(13).subsource = 'SS_DOUBLE';
pt(13).ndims     = '2';
pt(13).size      = '[]';
pt(13).isStruct  =false;


  
pt(14).blockname = 'EtherCAT PDO Receive';
pt(14).paramname = 'P2';
pt(14).class     = 'scalar';
pt(14).nrows     = 1;
pt(14).ncols     = 1;
pt(14).subsource = 'SS_DOUBLE';
pt(14).ndims     = '2';
pt(14).size      = '[]';
pt(14).isStruct  =false;


  
pt(15).blockname = 'EtherCAT PDO Receive';
pt(15).paramname = 'P3';
pt(15).class     = 'scalar';
pt(15).nrows     = 1;
pt(15).ncols     = 1;
pt(15).subsource = 'SS_DOUBLE';
pt(15).ndims     = '2';
pt(15).size      = '[]';
pt(15).isStruct  =false;


  
pt(16).blockname = 'EtherCAT PDO Receive';
pt(16).paramname = 'P4';
pt(16).class     = 'scalar';
pt(16).nrows     = 1;
pt(16).ncols     = 1;
pt(16).subsource = 'SS_DOUBLE';
pt(16).ndims     = '2';
pt(16).size      = '[]';
pt(16).isStruct  =false;


  
pt(17).blockname = 'EtherCAT PDO Receive';
pt(17).paramname = 'P5';
pt(17).class     = 'scalar';
pt(17).nrows     = 1;
pt(17).ncols     = 1;
pt(17).subsource = 'SS_DOUBLE';
pt(17).ndims     = '2';
pt(17).size      = '[]';
pt(17).isStruct  =false;


  
pt(18).blockname = 'EtherCAT PDO Receive';
pt(18).paramname = 'P6';
pt(18).class     = 'scalar';
pt(18).nrows     = 1;
pt(18).ncols     = 1;
pt(18).subsource = 'SS_DOUBLE';
pt(18).ndims     = '2';
pt(18).size      = '[]';
pt(18).isStruct  =false;


  
pt(19).blockname = 'EtherCAT PDO Receive';
pt(19).paramname = 'P7';
pt(19).class     = 'scalar';
pt(19).nrows     = 1;
pt(19).ncols     = 1;
pt(19).subsource = 'SS_DOUBLE';
pt(19).ndims     = '2';
pt(19).size      = '[]';
pt(19).isStruct  =false;


  
pt(20).blockname = 'EtherCAT PDO Receive1';
pt(20).paramname = 'P1';
pt(20).class     = 'vector';
pt(20).nrows     = 1;
pt(20).ncols     = 42;
pt(20).subsource = 'SS_DOUBLE';
pt(20).ndims     = '2';
pt(20).size      = '[]';
pt(20).isStruct  =false;


  
pt(21).blockname = 'EtherCAT PDO Receive1';
pt(21).paramname = 'P2';
pt(21).class     = 'scalar';
pt(21).nrows     = 1;
pt(21).ncols     = 1;
pt(21).subsource = 'SS_DOUBLE';
pt(21).ndims     = '2';
pt(21).size      = '[]';
pt(21).isStruct  =false;


  
pt(22).blockname = 'EtherCAT PDO Receive1';
pt(22).paramname = 'P3';
pt(22).class     = 'scalar';
pt(22).nrows     = 1;
pt(22).ncols     = 1;
pt(22).subsource = 'SS_DOUBLE';
pt(22).ndims     = '2';
pt(22).size      = '[]';
pt(22).isStruct  =false;


  
pt(23).blockname = 'EtherCAT PDO Receive1';
pt(23).paramname = 'P4';
pt(23).class     = 'scalar';
pt(23).nrows     = 1;
pt(23).ncols     = 1;
pt(23).subsource = 'SS_DOUBLE';
pt(23).ndims     = '2';
pt(23).size      = '[]';
pt(23).isStruct  =false;


  
pt(24).blockname = 'EtherCAT PDO Receive1';
pt(24).paramname = 'P5';
pt(24).class     = 'scalar';
pt(24).nrows     = 1;
pt(24).ncols     = 1;
pt(24).subsource = 'SS_DOUBLE';
pt(24).ndims     = '2';
pt(24).size      = '[]';
pt(24).isStruct  =false;


  
pt(25).blockname = 'EtherCAT PDO Receive1';
pt(25).paramname = 'P6';
pt(25).class     = 'scalar';
pt(25).nrows     = 1;
pt(25).ncols     = 1;
pt(25).subsource = 'SS_DOUBLE';
pt(25).ndims     = '2';
pt(25).size      = '[]';
pt(25).isStruct  =false;


  
pt(26).blockname = 'EtherCAT PDO Receive1';
pt(26).paramname = 'P7';
pt(26).class     = 'scalar';
pt(26).nrows     = 1;
pt(26).ncols     = 1;
pt(26).subsource = 'SS_DOUBLE';
pt(26).ndims     = '2';
pt(26).size      = '[]';
pt(26).isStruct  =false;


  
pt(27).blockname = 'EtherCAT PDO Transmit ';
pt(27).paramname = 'P1';
pt(27).class     = 'vector';
pt(27).nrows     = 1;
pt(27).ncols     = 46;
pt(27).subsource = 'SS_DOUBLE';
pt(27).ndims     = '2';
pt(27).size      = '[]';
pt(27).isStruct  =false;


  
pt(28).blockname = 'EtherCAT PDO Transmit ';
pt(28).paramname = 'P2';
pt(28).class     = 'scalar';
pt(28).nrows     = 1;
pt(28).ncols     = 1;
pt(28).subsource = 'SS_DOUBLE';
pt(28).ndims     = '2';
pt(28).size      = '[]';
pt(28).isStruct  =false;


  
pt(29).blockname = 'EtherCAT PDO Transmit ';
pt(29).paramname = 'P3';
pt(29).class     = 'scalar';
pt(29).nrows     = 1;
pt(29).ncols     = 1;
pt(29).subsource = 'SS_DOUBLE';
pt(29).ndims     = '2';
pt(29).size      = '[]';
pt(29).isStruct  =false;


  
pt(30).blockname = 'EtherCAT PDO Transmit ';
pt(30).paramname = 'P4';
pt(30).class     = 'scalar';
pt(30).nrows     = 1;
pt(30).ncols     = 1;
pt(30).subsource = 'SS_DOUBLE';
pt(30).ndims     = '2';
pt(30).size      = '[]';
pt(30).isStruct  =false;


  
pt(31).blockname = 'EtherCAT PDO Transmit ';
pt(31).paramname = 'P5';
pt(31).class     = 'scalar';
pt(31).nrows     = 1;
pt(31).ncols     = 1;
pt(31).subsource = 'SS_DOUBLE';
pt(31).ndims     = '2';
pt(31).size      = '[]';
pt(31).isStruct  =false;


  
pt(32).blockname = 'EtherCAT PDO Transmit ';
pt(32).paramname = 'P6';
pt(32).class     = 'scalar';
pt(32).nrows     = 1;
pt(32).ncols     = 1;
pt(32).subsource = 'SS_DOUBLE';
pt(32).ndims     = '2';
pt(32).size      = '[]';
pt(32).isStruct  =false;


  
pt(33).blockname = 'EtherCAT PDO Transmit ';
pt(33).paramname = 'P7';
pt(33).class     = 'scalar';
pt(33).nrows     = 1;
pt(33).ncols     = 1;
pt(33).subsource = 'SS_DOUBLE';
pt(33).ndims     = '2';
pt(33).size      = '[]';
pt(33).isStruct  =false;


  
pt(34).blockname = 'EtherCAT PDO Transmit 1';
pt(34).paramname = 'P1';
pt(34).class     = 'vector';
pt(34).nrows     = 1;
pt(34).ncols     = 38;
pt(34).subsource = 'SS_DOUBLE';
pt(34).ndims     = '2';
pt(34).size      = '[]';
pt(34).isStruct  =false;


  
pt(35).blockname = 'EtherCAT PDO Transmit 1';
pt(35).paramname = 'P2';
pt(35).class     = 'scalar';
pt(35).nrows     = 1;
pt(35).ncols     = 1;
pt(35).subsource = 'SS_DOUBLE';
pt(35).ndims     = '2';
pt(35).size      = '[]';
pt(35).isStruct  =false;


  
pt(36).blockname = 'EtherCAT PDO Transmit 1';
pt(36).paramname = 'P3';
pt(36).class     = 'scalar';
pt(36).nrows     = 1;
pt(36).ncols     = 1;
pt(36).subsource = 'SS_DOUBLE';
pt(36).ndims     = '2';
pt(36).size      = '[]';
pt(36).isStruct  =false;


  
pt(37).blockname = 'EtherCAT PDO Transmit 1';
pt(37).paramname = 'P4';
pt(37).class     = 'scalar';
pt(37).nrows     = 1;
pt(37).ncols     = 1;
pt(37).subsource = 'SS_DOUBLE';
pt(37).ndims     = '2';
pt(37).size      = '[]';
pt(37).isStruct  =false;


  
pt(38).blockname = 'EtherCAT PDO Transmit 1';
pt(38).paramname = 'P5';
pt(38).class     = 'scalar';
pt(38).nrows     = 1;
pt(38).ncols     = 1;
pt(38).subsource = 'SS_DOUBLE';
pt(38).ndims     = '2';
pt(38).size      = '[]';
pt(38).isStruct  =false;


  
pt(39).blockname = 'EtherCAT PDO Transmit 1';
pt(39).paramname = 'P6';
pt(39).class     = 'scalar';
pt(39).nrows     = 1;
pt(39).ncols     = 1;
pt(39).subsource = 'SS_DOUBLE';
pt(39).ndims     = '2';
pt(39).size      = '[]';
pt(39).isStruct  =false;


  
pt(40).blockname = 'EtherCAT PDO Transmit 1';
pt(40).paramname = 'P7';
pt(40).class     = 'scalar';
pt(40).nrows     = 1;
pt(40).ncols     = 1;
pt(40).subsource = 'SS_DOUBLE';
pt(40).ndims     = '2';
pt(40).size      = '[]';
pt(40).isStruct  =false;


  
pt(41).blockname = 'EtherCAT PDO Transmit 2';
pt(41).paramname = 'P1';
pt(41).class     = 'vector';
pt(41).nrows     = 1;
pt(41).ncols     = 38;
pt(41).subsource = 'SS_DOUBLE';
pt(41).ndims     = '2';
pt(41).size      = '[]';
pt(41).isStruct  =false;


  
pt(42).blockname = 'EtherCAT PDO Transmit 2';
pt(42).paramname = 'P2';
pt(42).class     = 'scalar';
pt(42).nrows     = 1;
pt(42).ncols     = 1;
pt(42).subsource = 'SS_DOUBLE';
pt(42).ndims     = '2';
pt(42).size      = '[]';
pt(42).isStruct  =false;


  
pt(43).blockname = 'EtherCAT PDO Transmit 2';
pt(43).paramname = 'P3';
pt(43).class     = 'scalar';
pt(43).nrows     = 1;
pt(43).ncols     = 1;
pt(43).subsource = 'SS_DOUBLE';
pt(43).ndims     = '2';
pt(43).size      = '[]';
pt(43).isStruct  =false;


  
pt(44).blockname = 'EtherCAT PDO Transmit 2';
pt(44).paramname = 'P4';
pt(44).class     = 'scalar';
pt(44).nrows     = 1;
pt(44).ncols     = 1;
pt(44).subsource = 'SS_DOUBLE';
pt(44).ndims     = '2';
pt(44).size      = '[]';
pt(44).isStruct  =false;


  
pt(45).blockname = 'EtherCAT PDO Transmit 2';
pt(45).paramname = 'P5';
pt(45).class     = 'scalar';
pt(45).nrows     = 1;
pt(45).ncols     = 1;
pt(45).subsource = 'SS_DOUBLE';
pt(45).ndims     = '2';
pt(45).size      = '[]';
pt(45).isStruct  =false;


  
pt(46).blockname = 'EtherCAT PDO Transmit 2';
pt(46).paramname = 'P6';
pt(46).class     = 'scalar';
pt(46).nrows     = 1;
pt(46).ncols     = 1;
pt(46).subsource = 'SS_DOUBLE';
pt(46).ndims     = '2';
pt(46).size      = '[]';
pt(46).isStruct  =false;


  
pt(47).blockname = 'EtherCAT PDO Transmit 2';
pt(47).paramname = 'P7';
pt(47).class     = 'scalar';
pt(47).nrows     = 1;
pt(47).ncols     = 1;
pt(47).subsource = 'SS_DOUBLE';
pt(47).ndims     = '2';
pt(47).size      = '[]';
pt(47).isStruct  =false;


  
pt(48).blockname = 'EtherCAT PDO Transmit 6';
pt(48).paramname = 'P1';
pt(48).class     = 'vector';
pt(48).nrows     = 1;
pt(48).ncols     = 38;
pt(48).subsource = 'SS_DOUBLE';
pt(48).ndims     = '2';
pt(48).size      = '[]';
pt(48).isStruct  =false;


  
pt(49).blockname = 'EtherCAT PDO Transmit 6';
pt(49).paramname = 'P2';
pt(49).class     = 'scalar';
pt(49).nrows     = 1;
pt(49).ncols     = 1;
pt(49).subsource = 'SS_DOUBLE';
pt(49).ndims     = '2';
pt(49).size      = '[]';
pt(49).isStruct  =false;


  
pt(50).blockname = 'EtherCAT PDO Transmit 6';
pt(50).paramname = 'P3';
pt(50).class     = 'scalar';
pt(50).nrows     = 1;
pt(50).ncols     = 1;
pt(50).subsource = 'SS_DOUBLE';
pt(50).ndims     = '2';
pt(50).size      = '[]';
pt(50).isStruct  =false;


  
pt(51).blockname = 'EtherCAT PDO Transmit 6';
pt(51).paramname = 'P4';
pt(51).class     = 'scalar';
pt(51).nrows     = 1;
pt(51).ncols     = 1;
pt(51).subsource = 'SS_DOUBLE';
pt(51).ndims     = '2';
pt(51).size      = '[]';
pt(51).isStruct  =false;


  
pt(52).blockname = 'EtherCAT PDO Transmit 6';
pt(52).paramname = 'P5';
pt(52).class     = 'scalar';
pt(52).nrows     = 1;
pt(52).ncols     = 1;
pt(52).subsource = 'SS_DOUBLE';
pt(52).ndims     = '2';
pt(52).size      = '[]';
pt(52).isStruct  =false;


  
pt(53).blockname = 'EtherCAT PDO Transmit 6';
pt(53).paramname = 'P6';
pt(53).class     = 'scalar';
pt(53).nrows     = 1;
pt(53).ncols     = 1;
pt(53).subsource = 'SS_DOUBLE';
pt(53).ndims     = '2';
pt(53).size      = '[]';
pt(53).isStruct  =false;


  
pt(54).blockname = 'EtherCAT PDO Transmit 6';
pt(54).paramname = 'P7';
pt(54).class     = 'scalar';
pt(54).nrows     = 1;
pt(54).ncols     = 1;
pt(54).subsource = 'SS_DOUBLE';
pt(54).ndims     = '2';
pt(54).size      = '[]';
pt(54).isStruct  =false;


  
pt(55).blockname = 'EtherCAT PDO Transmit 7';
pt(55).paramname = 'P1';
pt(55).class     = 'vector';
pt(55).nrows     = 1;
pt(55).ncols     = 38;
pt(55).subsource = 'SS_DOUBLE';
pt(55).ndims     = '2';
pt(55).size      = '[]';
pt(55).isStruct  =false;


  
pt(56).blockname = 'EtherCAT PDO Transmit 7';
pt(56).paramname = 'P2';
pt(56).class     = 'scalar';
pt(56).nrows     = 1;
pt(56).ncols     = 1;
pt(56).subsource = 'SS_DOUBLE';
pt(56).ndims     = '2';
pt(56).size      = '[]';
pt(56).isStruct  =false;


  
pt(57).blockname = 'EtherCAT PDO Transmit 7';
pt(57).paramname = 'P3';
pt(57).class     = 'scalar';
pt(57).nrows     = 1;
pt(57).ncols     = 1;
pt(57).subsource = 'SS_DOUBLE';
pt(57).ndims     = '2';
pt(57).size      = '[]';
pt(57).isStruct  =false;


  
pt(58).blockname = 'EtherCAT PDO Transmit 7';
pt(58).paramname = 'P4';
pt(58).class     = 'scalar';
pt(58).nrows     = 1;
pt(58).ncols     = 1;
pt(58).subsource = 'SS_DOUBLE';
pt(58).ndims     = '2';
pt(58).size      = '[]';
pt(58).isStruct  =false;


  
pt(59).blockname = 'EtherCAT PDO Transmit 7';
pt(59).paramname = 'P5';
pt(59).class     = 'scalar';
pt(59).nrows     = 1;
pt(59).ncols     = 1;
pt(59).subsource = 'SS_DOUBLE';
pt(59).ndims     = '2';
pt(59).size      = '[]';
pt(59).isStruct  =false;


  
pt(60).blockname = 'EtherCAT PDO Transmit 7';
pt(60).paramname = 'P6';
pt(60).class     = 'scalar';
pt(60).nrows     = 1;
pt(60).ncols     = 1;
pt(60).subsource = 'SS_DOUBLE';
pt(60).ndims     = '2';
pt(60).size      = '[]';
pt(60).isStruct  =false;


  
pt(61).blockname = 'EtherCAT PDO Transmit 7';
pt(61).paramname = 'P7';
pt(61).class     = 'scalar';
pt(61).nrows     = 1;
pt(61).ncols     = 1;
pt(61).subsource = 'SS_DOUBLE';
pt(61).ndims     = '2';
pt(61).size      = '[]';
pt(61).isStruct  =false;


  
pt(62).blockname = 'EtherCAT PDO Transmit 8';
pt(62).paramname = 'P1';
pt(62).class     = 'vector';
pt(62).nrows     = 1;
pt(62).ncols     = 38;
pt(62).subsource = 'SS_DOUBLE';
pt(62).ndims     = '2';
pt(62).size      = '[]';
pt(62).isStruct  =false;


  
pt(63).blockname = 'EtherCAT PDO Transmit 8';
pt(63).paramname = 'P2';
pt(63).class     = 'scalar';
pt(63).nrows     = 1;
pt(63).ncols     = 1;
pt(63).subsource = 'SS_DOUBLE';
pt(63).ndims     = '2';
pt(63).size      = '[]';
pt(63).isStruct  =false;


  
pt(64).blockname = 'EtherCAT PDO Transmit 8';
pt(64).paramname = 'P3';
pt(64).class     = 'scalar';
pt(64).nrows     = 1;
pt(64).ncols     = 1;
pt(64).subsource = 'SS_DOUBLE';
pt(64).ndims     = '2';
pt(64).size      = '[]';
pt(64).isStruct  =false;


  
pt(65).blockname = 'EtherCAT PDO Transmit 8';
pt(65).paramname = 'P4';
pt(65).class     = 'scalar';
pt(65).nrows     = 1;
pt(65).ncols     = 1;
pt(65).subsource = 'SS_DOUBLE';
pt(65).ndims     = '2';
pt(65).size      = '[]';
pt(65).isStruct  =false;


  
pt(66).blockname = 'EtherCAT PDO Transmit 8';
pt(66).paramname = 'P5';
pt(66).class     = 'scalar';
pt(66).nrows     = 1;
pt(66).ncols     = 1;
pt(66).subsource = 'SS_DOUBLE';
pt(66).ndims     = '2';
pt(66).size      = '[]';
pt(66).isStruct  =false;


  
pt(67).blockname = 'EtherCAT PDO Transmit 8';
pt(67).paramname = 'P6';
pt(67).class     = 'scalar';
pt(67).nrows     = 1;
pt(67).ncols     = 1;
pt(67).subsource = 'SS_DOUBLE';
pt(67).ndims     = '2';
pt(67).size      = '[]';
pt(67).isStruct  =false;


  
pt(68).blockname = 'EtherCAT PDO Transmit 8';
pt(68).paramname = 'P7';
pt(68).class     = 'scalar';
pt(68).nrows     = 1;
pt(68).ncols     = 1;
pt(68).subsource = 'SS_DOUBLE';
pt(68).ndims     = '2';
pt(68).size      = '[]';
pt(68).isStruct  =false;


  
pt(69).blockname = 'PWM Angle';
pt(69).paramname = 'P1';
pt(69).class     = 'vector';
pt(69).nrows     = 1;
pt(69).ncols     = 42;
pt(69).subsource = 'SS_DOUBLE';
pt(69).ndims     = '2';
pt(69).size      = '[]';
pt(69).isStruct  =false;


  
pt(70).blockname = 'PWM Angle';
pt(70).paramname = 'P2';
pt(70).class     = 'scalar';
pt(70).nrows     = 1;
pt(70).ncols     = 1;
pt(70).subsource = 'SS_DOUBLE';
pt(70).ndims     = '2';
pt(70).size      = '[]';
pt(70).isStruct  =false;


  
pt(71).blockname = 'PWM Angle';
pt(71).paramname = 'P3';
pt(71).class     = 'scalar';
pt(71).nrows     = 1;
pt(71).ncols     = 1;
pt(71).subsource = 'SS_DOUBLE';
pt(71).ndims     = '2';
pt(71).size      = '[]';
pt(71).isStruct  =false;


  
pt(72).blockname = 'PWM Angle';
pt(72).paramname = 'P4';
pt(72).class     = 'scalar';
pt(72).nrows     = 1;
pt(72).ncols     = 1;
pt(72).subsource = 'SS_DOUBLE';
pt(72).ndims     = '2';
pt(72).size      = '[]';
pt(72).isStruct  =false;


  
pt(73).blockname = 'PWM Angle';
pt(73).paramname = 'P5';
pt(73).class     = 'scalar';
pt(73).nrows     = 1;
pt(73).ncols     = 1;
pt(73).subsource = 'SS_DOUBLE';
pt(73).ndims     = '2';
pt(73).size      = '[]';
pt(73).isStruct  =false;


  
pt(74).blockname = 'PWM Angle';
pt(74).paramname = 'P6';
pt(74).class     = 'scalar';
pt(74).nrows     = 1;
pt(74).ncols     = 1;
pt(74).subsource = 'SS_DOUBLE';
pt(74).ndims     = '2';
pt(74).size      = '[]';
pt(74).isStruct  =false;


  
pt(75).blockname = 'PWM Angle';
pt(75).paramname = 'P7';
pt(75).class     = 'scalar';
pt(75).nrows     = 1;
pt(75).ncols     = 1;
pt(75).subsource = 'SS_DOUBLE';
pt(75).ndims     = '2';
pt(75).size      = '[]';
pt(75).isStruct  =false;


  
pt(76).blockname = 'Sine Wave';
pt(76).paramname = 'Amplitude';
pt(76).class     = 'scalar';
pt(76).nrows     = 1;
pt(76).ncols     = 1;
pt(76).subsource = 'SS_DOUBLE';
pt(76).ndims     = '2';
pt(76).size      = '[]';
pt(76).isStruct  =false;


  
pt(77).blockname = 'Sine Wave';
pt(77).paramname = 'Bias';
pt(77).class     = 'scalar';
pt(77).nrows     = 1;
pt(77).ncols     = 1;
pt(77).subsource = 'SS_DOUBLE';
pt(77).ndims     = '2';
pt(77).size      = '[]';
pt(77).isStruct  =false;


  
pt(78).blockname = 'Sine Wave';
pt(78).paramname = 'Frequency';
pt(78).class     = 'scalar';
pt(78).nrows     = 1;
pt(78).ncols     = 1;
pt(78).subsource = 'SS_DOUBLE';
pt(78).ndims     = '2';
pt(78).size      = '[]';
pt(78).isStruct  =false;


  
pt(79).blockname = 'Sine Wave';
pt(79).paramname = 'Phase';
pt(79).class     = 'scalar';
pt(79).nrows     = 1;
pt(79).ncols     = 1;
pt(79).subsource = 'SS_DOUBLE';
pt(79).ndims     = '2';
pt(79).size      = '[]';
pt(79).isStruct  =false;

function len = getlenPT
len = 79;

