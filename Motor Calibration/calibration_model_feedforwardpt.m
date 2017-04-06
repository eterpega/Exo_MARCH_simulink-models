function pt=calibration_model_feedforwardpt
pt = [];

  
pt(1).blockname = 'angle increment';
pt(1).paramname = 'Value';
pt(1).class     = 'scalar';
pt(1).nrows     = 1;
pt(1).ncols     = 1;
pt(1).subsource = 'SS_UINT16';
pt(1).ndims     = '2';
pt(1).size      = '[]';
pt(1).isStruct  = false;
pt(1).symbol     = 'calibration_model_feedforward_P.angleincrement_Value';
pt(1).baseaddr   = '&calibration_model_feedforward_P.angleincrement_Value';
pt(1).dtname     = 'uint16_T';

pt(getlenPT) = pt(1);


  
pt(2).blockname = 'magnitude';
pt(2).paramname = 'Value';
pt(2).class     = 'scalar';
pt(2).nrows     = 1;
pt(2).ncols     = 1;
pt(2).subsource = 'SS_UINT16';
pt(2).ndims     = '2';
pt(2).size      = '[]';
pt(2).isStruct  = false;
pt(2).symbol     = 'calibration_model_feedforward_P.magnitude_Value';
pt(2).baseaddr   = '&calibration_model_feedforward_P.magnitude_Value';
pt(2).dtname     = 'uint16_T';



  
pt(3).blockname = 'motor_enable';
pt(3).paramname = 'Value';
pt(3).class     = 'scalar';
pt(3).nrows     = 1;
pt(3).ncols     = 1;
pt(3).subsource = 'SS_UINT8';
pt(3).ndims     = '2';
pt(3).size      = '[]';
pt(3).isStruct  = false;
pt(3).symbol     = 'calibration_model_feedforward_P.motor_enable_Value';
pt(3).baseaddr   = '&calibration_model_feedforward_P.motor_enable_Value';
pt(3).dtname     = 'uint8_T';



  
pt(4).blockname = 'EtherCAT PDO Receive';
pt(4).paramname = 'P1';
pt(4).class     = 'vector';
pt(4).nrows     = 1;
pt(4).ncols     = 32;
pt(4).subsource = 'SS_DOUBLE';
pt(4).ndims     = '2';
pt(4).size      = '[]';
pt(4).isStruct  = false;
pt(4).symbol     = 'calibration_model_feedforward_P.EtherCATPDOReceive_P1';
pt(4).baseaddr   = '&calibration_model_feedforward_P.EtherCATPDOReceive_P1[0]';
pt(4).dtname     = 'real_T';



  
pt(5).blockname = 'EtherCAT PDO Receive';
pt(5).paramname = 'P2';
pt(5).class     = 'scalar';
pt(5).nrows     = 1;
pt(5).ncols     = 1;
pt(5).subsource = 'SS_DOUBLE';
pt(5).ndims     = '2';
pt(5).size      = '[]';
pt(5).isStruct  = false;
pt(5).symbol     = 'calibration_model_feedforward_P.EtherCATPDOReceive_P2';
pt(5).baseaddr   = '&calibration_model_feedforward_P.EtherCATPDOReceive_P2';
pt(5).dtname     = 'real_T';



  
pt(6).blockname = 'EtherCAT PDO Receive';
pt(6).paramname = 'P3';
pt(6).class     = 'scalar';
pt(6).nrows     = 1;
pt(6).ncols     = 1;
pt(6).subsource = 'SS_DOUBLE';
pt(6).ndims     = '2';
pt(6).size      = '[]';
pt(6).isStruct  = false;
pt(6).symbol     = 'calibration_model_feedforward_P.EtherCATPDOReceive_P3';
pt(6).baseaddr   = '&calibration_model_feedforward_P.EtherCATPDOReceive_P3';
pt(6).dtname     = 'real_T';



  
pt(7).blockname = 'EtherCAT PDO Receive';
pt(7).paramname = 'P4';
pt(7).class     = 'scalar';
pt(7).nrows     = 1;
pt(7).ncols     = 1;
pt(7).subsource = 'SS_DOUBLE';
pt(7).ndims     = '2';
pt(7).size      = '[]';
pt(7).isStruct  = false;
pt(7).symbol     = 'calibration_model_feedforward_P.EtherCATPDOReceive_P4';
pt(7).baseaddr   = '&calibration_model_feedforward_P.EtherCATPDOReceive_P4';
pt(7).dtname     = 'real_T';



  
pt(8).blockname = 'EtherCAT PDO Receive';
pt(8).paramname = 'P5';
pt(8).class     = 'scalar';
pt(8).nrows     = 1;
pt(8).ncols     = 1;
pt(8).subsource = 'SS_DOUBLE';
pt(8).ndims     = '2';
pt(8).size      = '[]';
pt(8).isStruct  = false;
pt(8).symbol     = 'calibration_model_feedforward_P.EtherCATPDOReceive_P5';
pt(8).baseaddr   = '&calibration_model_feedforward_P.EtherCATPDOReceive_P5';
pt(8).dtname     = 'real_T';



  
pt(9).blockname = 'EtherCAT PDO Receive';
pt(9).paramname = 'P6';
pt(9).class     = 'scalar';
pt(9).nrows     = 1;
pt(9).ncols     = 1;
pt(9).subsource = 'SS_DOUBLE';
pt(9).ndims     = '2';
pt(9).size      = '[]';
pt(9).isStruct  = false;
pt(9).symbol     = 'calibration_model_feedforward_P.EtherCATPDOReceive_P6';
pt(9).baseaddr   = '&calibration_model_feedforward_P.EtherCATPDOReceive_P6';
pt(9).dtname     = 'real_T';



  
pt(10).blockname = 'EtherCAT PDO Receive';
pt(10).paramname = 'P7';
pt(10).class     = 'scalar';
pt(10).nrows     = 1;
pt(10).ncols     = 1;
pt(10).subsource = 'SS_DOUBLE';
pt(10).ndims     = '2';
pt(10).size      = '[]';
pt(10).isStruct  = false;
pt(10).symbol     = 'calibration_model_feedforward_P.EtherCATPDOReceive_P7';
pt(10).baseaddr   = '&calibration_model_feedforward_P.EtherCATPDOReceive_P7';
pt(10).dtname     = 'real_T';



  
pt(11).blockname = 'EtherCAT PDO Receive1';
pt(11).paramname = 'P1';
pt(11).class     = 'vector';
pt(11).nrows     = 1;
pt(11).ncols     = 29;
pt(11).subsource = 'SS_DOUBLE';
pt(11).ndims     = '2';
pt(11).size      = '[]';
pt(11).isStruct  = false;
pt(11).symbol     = 'calibration_model_feedforward_P.EtherCATPDOReceive1_P1';
pt(11).baseaddr   = '&calibration_model_feedforward_P.EtherCATPDOReceive1_P1[0]';
pt(11).dtname     = 'real_T';



  
pt(12).blockname = 'EtherCAT PDO Receive1';
pt(12).paramname = 'P2';
pt(12).class     = 'scalar';
pt(12).nrows     = 1;
pt(12).ncols     = 1;
pt(12).subsource = 'SS_DOUBLE';
pt(12).ndims     = '2';
pt(12).size      = '[]';
pt(12).isStruct  = false;
pt(12).symbol     = 'calibration_model_feedforward_P.EtherCATPDOReceive1_P2';
pt(12).baseaddr   = '&calibration_model_feedforward_P.EtherCATPDOReceive1_P2';
pt(12).dtname     = 'real_T';



  
pt(13).blockname = 'EtherCAT PDO Receive1';
pt(13).paramname = 'P3';
pt(13).class     = 'scalar';
pt(13).nrows     = 1;
pt(13).ncols     = 1;
pt(13).subsource = 'SS_DOUBLE';
pt(13).ndims     = '2';
pt(13).size      = '[]';
pt(13).isStruct  = false;
pt(13).symbol     = 'calibration_model_feedforward_P.EtherCATPDOReceive1_P3';
pt(13).baseaddr   = '&calibration_model_feedforward_P.EtherCATPDOReceive1_P3';
pt(13).dtname     = 'real_T';



  
pt(14).blockname = 'EtherCAT PDO Receive1';
pt(14).paramname = 'P4';
pt(14).class     = 'scalar';
pt(14).nrows     = 1;
pt(14).ncols     = 1;
pt(14).subsource = 'SS_DOUBLE';
pt(14).ndims     = '2';
pt(14).size      = '[]';
pt(14).isStruct  = false;
pt(14).symbol     = 'calibration_model_feedforward_P.EtherCATPDOReceive1_P4';
pt(14).baseaddr   = '&calibration_model_feedforward_P.EtherCATPDOReceive1_P4';
pt(14).dtname     = 'real_T';



  
pt(15).blockname = 'EtherCAT PDO Receive1';
pt(15).paramname = 'P5';
pt(15).class     = 'scalar';
pt(15).nrows     = 1;
pt(15).ncols     = 1;
pt(15).subsource = 'SS_DOUBLE';
pt(15).ndims     = '2';
pt(15).size      = '[]';
pt(15).isStruct  = false;
pt(15).symbol     = 'calibration_model_feedforward_P.EtherCATPDOReceive1_P5';
pt(15).baseaddr   = '&calibration_model_feedforward_P.EtherCATPDOReceive1_P5';
pt(15).dtname     = 'real_T';



  
pt(16).blockname = 'EtherCAT PDO Receive1';
pt(16).paramname = 'P6';
pt(16).class     = 'scalar';
pt(16).nrows     = 1;
pt(16).ncols     = 1;
pt(16).subsource = 'SS_DOUBLE';
pt(16).ndims     = '2';
pt(16).size      = '[]';
pt(16).isStruct  = false;
pt(16).symbol     = 'calibration_model_feedforward_P.EtherCATPDOReceive1_P6';
pt(16).baseaddr   = '&calibration_model_feedforward_P.EtherCATPDOReceive1_P6';
pt(16).dtname     = 'real_T';



  
pt(17).blockname = 'EtherCAT PDO Receive1';
pt(17).paramname = 'P7';
pt(17).class     = 'scalar';
pt(17).nrows     = 1;
pt(17).ncols     = 1;
pt(17).subsource = 'SS_DOUBLE';
pt(17).ndims     = '2';
pt(17).size      = '[]';
pt(17).isStruct  = false;
pt(17).symbol     = 'calibration_model_feedforward_P.EtherCATPDOReceive1_P7';
pt(17).baseaddr   = '&calibration_model_feedforward_P.EtherCATPDOReceive1_P7';
pt(17).dtname     = 'real_T';



  
pt(18).blockname = 'EtherCAT PDO Transmit ';
pt(18).paramname = 'P1';
pt(18).class     = 'vector';
pt(18).nrows     = 1;
pt(18).ncols     = 34;
pt(18).subsource = 'SS_DOUBLE';
pt(18).ndims     = '2';
pt(18).size      = '[]';
pt(18).isStruct  = false;
pt(18).symbol     = 'calibration_model_feedforward_P.EtherCATPDOTransmit_P1';
pt(18).baseaddr   = '&calibration_model_feedforward_P.EtherCATPDOTransmit_P1[0]';
pt(18).dtname     = 'real_T';



  
pt(19).blockname = 'EtherCAT PDO Transmit ';
pt(19).paramname = 'P2';
pt(19).class     = 'scalar';
pt(19).nrows     = 1;
pt(19).ncols     = 1;
pt(19).subsource = 'SS_DOUBLE';
pt(19).ndims     = '2';
pt(19).size      = '[]';
pt(19).isStruct  = false;
pt(19).symbol     = 'calibration_model_feedforward_P.EtherCATPDOTransmit_P2';
pt(19).baseaddr   = '&calibration_model_feedforward_P.EtherCATPDOTransmit_P2';
pt(19).dtname     = 'real_T';



  
pt(20).blockname = 'EtherCAT PDO Transmit ';
pt(20).paramname = 'P3';
pt(20).class     = 'scalar';
pt(20).nrows     = 1;
pt(20).ncols     = 1;
pt(20).subsource = 'SS_DOUBLE';
pt(20).ndims     = '2';
pt(20).size      = '[]';
pt(20).isStruct  = false;
pt(20).symbol     = 'calibration_model_feedforward_P.EtherCATPDOTransmit_P3';
pt(20).baseaddr   = '&calibration_model_feedforward_P.EtherCATPDOTransmit_P3';
pt(20).dtname     = 'real_T';



  
pt(21).blockname = 'EtherCAT PDO Transmit ';
pt(21).paramname = 'P4';
pt(21).class     = 'scalar';
pt(21).nrows     = 1;
pt(21).ncols     = 1;
pt(21).subsource = 'SS_DOUBLE';
pt(21).ndims     = '2';
pt(21).size      = '[]';
pt(21).isStruct  = false;
pt(21).symbol     = 'calibration_model_feedforward_P.EtherCATPDOTransmit_P4';
pt(21).baseaddr   = '&calibration_model_feedforward_P.EtherCATPDOTransmit_P4';
pt(21).dtname     = 'real_T';



  
pt(22).blockname = 'EtherCAT PDO Transmit ';
pt(22).paramname = 'P5';
pt(22).class     = 'scalar';
pt(22).nrows     = 1;
pt(22).ncols     = 1;
pt(22).subsource = 'SS_DOUBLE';
pt(22).ndims     = '2';
pt(22).size      = '[]';
pt(22).isStruct  = false;
pt(22).symbol     = 'calibration_model_feedforward_P.EtherCATPDOTransmit_P5';
pt(22).baseaddr   = '&calibration_model_feedforward_P.EtherCATPDOTransmit_P5';
pt(22).dtname     = 'real_T';



  
pt(23).blockname = 'EtherCAT PDO Transmit ';
pt(23).paramname = 'P6';
pt(23).class     = 'scalar';
pt(23).nrows     = 1;
pt(23).ncols     = 1;
pt(23).subsource = 'SS_DOUBLE';
pt(23).ndims     = '2';
pt(23).size      = '[]';
pt(23).isStruct  = false;
pt(23).symbol     = 'calibration_model_feedforward_P.EtherCATPDOTransmit_P6';
pt(23).baseaddr   = '&calibration_model_feedforward_P.EtherCATPDOTransmit_P6';
pt(23).dtname     = 'real_T';



  
pt(24).blockname = 'EtherCAT PDO Transmit ';
pt(24).paramname = 'P7';
pt(24).class     = 'scalar';
pt(24).nrows     = 1;
pt(24).ncols     = 1;
pt(24).subsource = 'SS_DOUBLE';
pt(24).ndims     = '2';
pt(24).size      = '[]';
pt(24).isStruct  = false;
pt(24).symbol     = 'calibration_model_feedforward_P.EtherCATPDOTransmit_P7';
pt(24).baseaddr   = '&calibration_model_feedforward_P.EtherCATPDOTransmit_P7';
pt(24).dtname     = 'real_T';



  
pt(25).blockname = 'EtherCAT PDO Transmit 1';
pt(25).paramname = 'P1';
pt(25).class     = 'vector';
pt(25).nrows     = 1;
pt(25).ncols     = 34;
pt(25).subsource = 'SS_DOUBLE';
pt(25).ndims     = '2';
pt(25).size      = '[]';
pt(25).isStruct  = false;
pt(25).symbol     = 'calibration_model_feedforward_P.EtherCATPDOTransmit1_P1';
pt(25).baseaddr   = '&calibration_model_feedforward_P.EtherCATPDOTransmit1_P1[0]';
pt(25).dtname     = 'real_T';



  
pt(26).blockname = 'EtherCAT PDO Transmit 1';
pt(26).paramname = 'P2';
pt(26).class     = 'scalar';
pt(26).nrows     = 1;
pt(26).ncols     = 1;
pt(26).subsource = 'SS_DOUBLE';
pt(26).ndims     = '2';
pt(26).size      = '[]';
pt(26).isStruct  = false;
pt(26).symbol     = 'calibration_model_feedforward_P.EtherCATPDOTransmit1_P2';
pt(26).baseaddr   = '&calibration_model_feedforward_P.EtherCATPDOTransmit1_P2';
pt(26).dtname     = 'real_T';



  
pt(27).blockname = 'EtherCAT PDO Transmit 1';
pt(27).paramname = 'P3';
pt(27).class     = 'scalar';
pt(27).nrows     = 1;
pt(27).ncols     = 1;
pt(27).subsource = 'SS_DOUBLE';
pt(27).ndims     = '2';
pt(27).size      = '[]';
pt(27).isStruct  = false;
pt(27).symbol     = 'calibration_model_feedforward_P.EtherCATPDOTransmit1_P3';
pt(27).baseaddr   = '&calibration_model_feedforward_P.EtherCATPDOTransmit1_P3';
pt(27).dtname     = 'real_T';



  
pt(28).blockname = 'EtherCAT PDO Transmit 1';
pt(28).paramname = 'P4';
pt(28).class     = 'scalar';
pt(28).nrows     = 1;
pt(28).ncols     = 1;
pt(28).subsource = 'SS_DOUBLE';
pt(28).ndims     = '2';
pt(28).size      = '[]';
pt(28).isStruct  = false;
pt(28).symbol     = 'calibration_model_feedforward_P.EtherCATPDOTransmit1_P4';
pt(28).baseaddr   = '&calibration_model_feedforward_P.EtherCATPDOTransmit1_P4';
pt(28).dtname     = 'real_T';



  
pt(29).blockname = 'EtherCAT PDO Transmit 1';
pt(29).paramname = 'P5';
pt(29).class     = 'scalar';
pt(29).nrows     = 1;
pt(29).ncols     = 1;
pt(29).subsource = 'SS_DOUBLE';
pt(29).ndims     = '2';
pt(29).size      = '[]';
pt(29).isStruct  = false;
pt(29).symbol     = 'calibration_model_feedforward_P.EtherCATPDOTransmit1_P5';
pt(29).baseaddr   = '&calibration_model_feedforward_P.EtherCATPDOTransmit1_P5';
pt(29).dtname     = 'real_T';



  
pt(30).blockname = 'EtherCAT PDO Transmit 1';
pt(30).paramname = 'P6';
pt(30).class     = 'scalar';
pt(30).nrows     = 1;
pt(30).ncols     = 1;
pt(30).subsource = 'SS_DOUBLE';
pt(30).ndims     = '2';
pt(30).size      = '[]';
pt(30).isStruct  = false;
pt(30).symbol     = 'calibration_model_feedforward_P.EtherCATPDOTransmit1_P6';
pt(30).baseaddr   = '&calibration_model_feedforward_P.EtherCATPDOTransmit1_P6';
pt(30).dtname     = 'real_T';



  
pt(31).blockname = 'EtherCAT PDO Transmit 1';
pt(31).paramname = 'P7';
pt(31).class     = 'scalar';
pt(31).nrows     = 1;
pt(31).ncols     = 1;
pt(31).subsource = 'SS_DOUBLE';
pt(31).ndims     = '2';
pt(31).size      = '[]';
pt(31).isStruct  = false;
pt(31).symbol     = 'calibration_model_feedforward_P.EtherCATPDOTransmit1_P7';
pt(31).baseaddr   = '&calibration_model_feedforward_P.EtherCATPDOTransmit1_P7';
pt(31).dtname     = 'real_T';



  
pt(32).blockname = 'EtherCAT PDO Transmit 4';
pt(32).paramname = 'P1';
pt(32).class     = 'vector';
pt(32).nrows     = 1;
pt(32).ncols     = 31;
pt(32).subsource = 'SS_DOUBLE';
pt(32).ndims     = '2';
pt(32).size      = '[]';
pt(32).isStruct  = false;
pt(32).symbol     = 'calibration_model_feedforward_P.EtherCATPDOTransmit4_P1';
pt(32).baseaddr   = '&calibration_model_feedforward_P.EtherCATPDOTransmit4_P1[0]';
pt(32).dtname     = 'real_T';



  
pt(33).blockname = 'EtherCAT PDO Transmit 4';
pt(33).paramname = 'P2';
pt(33).class     = 'scalar';
pt(33).nrows     = 1;
pt(33).ncols     = 1;
pt(33).subsource = 'SS_DOUBLE';
pt(33).ndims     = '2';
pt(33).size      = '[]';
pt(33).isStruct  = false;
pt(33).symbol     = 'calibration_model_feedforward_P.EtherCATPDOTransmit4_P2';
pt(33).baseaddr   = '&calibration_model_feedforward_P.EtherCATPDOTransmit4_P2';
pt(33).dtname     = 'real_T';



  
pt(34).blockname = 'EtherCAT PDO Transmit 4';
pt(34).paramname = 'P3';
pt(34).class     = 'scalar';
pt(34).nrows     = 1;
pt(34).ncols     = 1;
pt(34).subsource = 'SS_DOUBLE';
pt(34).ndims     = '2';
pt(34).size      = '[]';
pt(34).isStruct  = false;
pt(34).symbol     = 'calibration_model_feedforward_P.EtherCATPDOTransmit4_P3';
pt(34).baseaddr   = '&calibration_model_feedforward_P.EtherCATPDOTransmit4_P3';
pt(34).dtname     = 'real_T';



  
pt(35).blockname = 'EtherCAT PDO Transmit 4';
pt(35).paramname = 'P4';
pt(35).class     = 'scalar';
pt(35).nrows     = 1;
pt(35).ncols     = 1;
pt(35).subsource = 'SS_DOUBLE';
pt(35).ndims     = '2';
pt(35).size      = '[]';
pt(35).isStruct  = false;
pt(35).symbol     = 'calibration_model_feedforward_P.EtherCATPDOTransmit4_P4';
pt(35).baseaddr   = '&calibration_model_feedforward_P.EtherCATPDOTransmit4_P4';
pt(35).dtname     = 'real_T';



  
pt(36).blockname = 'EtherCAT PDO Transmit 4';
pt(36).paramname = 'P5';
pt(36).class     = 'scalar';
pt(36).nrows     = 1;
pt(36).ncols     = 1;
pt(36).subsource = 'SS_DOUBLE';
pt(36).ndims     = '2';
pt(36).size      = '[]';
pt(36).isStruct  = false;
pt(36).symbol     = 'calibration_model_feedforward_P.EtherCATPDOTransmit4_P5';
pt(36).baseaddr   = '&calibration_model_feedforward_P.EtherCATPDOTransmit4_P5';
pt(36).dtname     = 'real_T';



  
pt(37).blockname = 'EtherCAT PDO Transmit 4';
pt(37).paramname = 'P6';
pt(37).class     = 'scalar';
pt(37).nrows     = 1;
pt(37).ncols     = 1;
pt(37).subsource = 'SS_DOUBLE';
pt(37).ndims     = '2';
pt(37).size      = '[]';
pt(37).isStruct  = false;
pt(37).symbol     = 'calibration_model_feedforward_P.EtherCATPDOTransmit4_P6';
pt(37).baseaddr   = '&calibration_model_feedforward_P.EtherCATPDOTransmit4_P6';
pt(37).dtname     = 'real_T';



  
pt(38).blockname = 'EtherCAT PDO Transmit 4';
pt(38).paramname = 'P7';
pt(38).class     = 'scalar';
pt(38).nrows     = 1;
pt(38).ncols     = 1;
pt(38).subsource = 'SS_DOUBLE';
pt(38).ndims     = '2';
pt(38).size      = '[]';
pt(38).isStruct  = false;
pt(38).symbol     = 'calibration_model_feedforward_P.EtherCATPDOTransmit4_P7';
pt(38).baseaddr   = '&calibration_model_feedforward_P.EtherCATPDOTransmit4_P7';
pt(38).dtname     = 'real_T';



  
pt(39).blockname = 'PWM Angle';
pt(39).paramname = 'P1';
pt(39).class     = 'vector';
pt(39).nrows     = 1;
pt(39).ncols     = 29;
pt(39).subsource = 'SS_DOUBLE';
pt(39).ndims     = '2';
pt(39).size      = '[]';
pt(39).isStruct  = false;
pt(39).symbol     = 'calibration_model_feedforward_P.PWMAngle_P1';
pt(39).baseaddr   = '&calibration_model_feedforward_P.PWMAngle_P1[0]';
pt(39).dtname     = 'real_T';



  
pt(40).blockname = 'PWM Angle';
pt(40).paramname = 'P2';
pt(40).class     = 'scalar';
pt(40).nrows     = 1;
pt(40).ncols     = 1;
pt(40).subsource = 'SS_DOUBLE';
pt(40).ndims     = '2';
pt(40).size      = '[]';
pt(40).isStruct  = false;
pt(40).symbol     = 'calibration_model_feedforward_P.PWMAngle_P2';
pt(40).baseaddr   = '&calibration_model_feedforward_P.PWMAngle_P2';
pt(40).dtname     = 'real_T';



  
pt(41).blockname = 'PWM Angle';
pt(41).paramname = 'P3';
pt(41).class     = 'scalar';
pt(41).nrows     = 1;
pt(41).ncols     = 1;
pt(41).subsource = 'SS_DOUBLE';
pt(41).ndims     = '2';
pt(41).size      = '[]';
pt(41).isStruct  = false;
pt(41).symbol     = 'calibration_model_feedforward_P.PWMAngle_P3';
pt(41).baseaddr   = '&calibration_model_feedforward_P.PWMAngle_P3';
pt(41).dtname     = 'real_T';



  
pt(42).blockname = 'PWM Angle';
pt(42).paramname = 'P4';
pt(42).class     = 'scalar';
pt(42).nrows     = 1;
pt(42).ncols     = 1;
pt(42).subsource = 'SS_DOUBLE';
pt(42).ndims     = '2';
pt(42).size      = '[]';
pt(42).isStruct  = false;
pt(42).symbol     = 'calibration_model_feedforward_P.PWMAngle_P4';
pt(42).baseaddr   = '&calibration_model_feedforward_P.PWMAngle_P4';
pt(42).dtname     = 'real_T';



  
pt(43).blockname = 'PWM Angle';
pt(43).paramname = 'P5';
pt(43).class     = 'scalar';
pt(43).nrows     = 1;
pt(43).ncols     = 1;
pt(43).subsource = 'SS_DOUBLE';
pt(43).ndims     = '2';
pt(43).size      = '[]';
pt(43).isStruct  = false;
pt(43).symbol     = 'calibration_model_feedforward_P.PWMAngle_P5';
pt(43).baseaddr   = '&calibration_model_feedforward_P.PWMAngle_P5';
pt(43).dtname     = 'real_T';



  
pt(44).blockname = 'PWM Angle';
pt(44).paramname = 'P6';
pt(44).class     = 'scalar';
pt(44).nrows     = 1;
pt(44).ncols     = 1;
pt(44).subsource = 'SS_DOUBLE';
pt(44).ndims     = '2';
pt(44).size      = '[]';
pt(44).isStruct  = false;
pt(44).symbol     = 'calibration_model_feedforward_P.PWMAngle_P6';
pt(44).baseaddr   = '&calibration_model_feedforward_P.PWMAngle_P6';
pt(44).dtname     = 'real_T';



  
pt(45).blockname = 'PWM Angle';
pt(45).paramname = 'P7';
pt(45).class     = 'scalar';
pt(45).nrows     = 1;
pt(45).ncols     = 1;
pt(45).subsource = 'SS_DOUBLE';
pt(45).ndims     = '2';
pt(45).size      = '[]';
pt(45).isStruct  = false;
pt(45).symbol     = 'calibration_model_feedforward_P.PWMAngle_P7';
pt(45).baseaddr   = '&calibration_model_feedforward_P.PWMAngle_P7';
pt(45).dtname     = 'real_T';


function len = getlenPT
len = 45;

