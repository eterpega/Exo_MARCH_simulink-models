function pt=calibration_model_v4pt
pt = [];

  
pt(1).blockname = 'C_LAG';
pt(1).paramname = 'Value';
pt(1).class     = 'scalar';
pt(1).nrows     = 1;
pt(1).ncols     = 1;
pt(1).subsource = 'SS_UINT16';
pt(1).ndims     = '2';
pt(1).size      = '[]';
pt(1).isStruct  = false;
pt(1).symbol     = 'calibration_model_v4_P.C_LAG_Value';
pt(1).baseaddr   = '&calibration_model_v4_P.C_LAG_Value';
pt(1).dtname     = 'uint16_T';

pt(getlenPT) = pt(1);


  
pt(2).blockname = 'C_VELOCITY ';
pt(2).paramname = 'Value';
pt(2).class     = 'scalar';
pt(2).nrows     = 1;
pt(2).ncols     = 1;
pt(2).subsource = 'SS_INT32';
pt(2).ndims     = '2';
pt(2).size      = '[]';
pt(2).isStruct  = false;
pt(2).symbol     = 'calibration_model_v4_P.C_VELOCITY_Value';
pt(2).baseaddr   = '&calibration_model_v4_P.C_VELOCITY_Value';
pt(2).dtname     = 'int32_T';



  
pt(3).blockname = 'C_VELOCITY 1';
pt(3).paramname = 'Value';
pt(3).class     = 'scalar';
pt(3).nrows     = 1;
pt(3).ncols     = 1;
pt(3).subsource = 'SS_INT32';
pt(3).ndims     = '2';
pt(3).size      = '[]';
pt(3).isStruct  = false;
pt(3).symbol     = 'calibration_model_v4_P.C_VELOCITY1_Value';
pt(3).baseaddr   = '&calibration_model_v4_P.C_VELOCITY1_Value';
pt(3).dtname     = 'int32_T';



  
pt(4).blockname = 'C_VELOCITY_P';
pt(4).paramname = 'Value';
pt(4).class     = 'scalar';
pt(4).nrows     = 1;
pt(4).ncols     = 1;
pt(4).subsource = 'SS_UINT16';
pt(4).ndims     = '2';
pt(4).size      = '[]';
pt(4).isStruct  = false;
pt(4).symbol     = 'calibration_model_v4_P.C_VELOCITY_P_Value';
pt(4).baseaddr   = '&calibration_model_v4_P.C_VELOCITY_P_Value';
pt(4).dtname     = 'uint16_T';



  
pt(5).blockname = 'Phaseoffset';
pt(5).paramname = 'Value';
pt(5).class     = 'scalar';
pt(5).nrows     = 1;
pt(5).ncols     = 1;
pt(5).subsource = 'SS_UINT16';
pt(5).ndims     = '2';
pt(5).size      = '[]';
pt(5).isStruct  = false;
pt(5).symbol     = 'calibration_model_v4_P.Phaseoffset_Value';
pt(5).baseaddr   = '&calibration_model_v4_P.Phaseoffset_Value';
pt(5).dtname     = 'uint16_T';



  
pt(6).blockname = 'motor_enable';
pt(6).paramname = 'Value';
pt(6).class     = 'scalar';
pt(6).nrows     = 1;
pt(6).ncols     = 1;
pt(6).subsource = 'SS_UINT8';
pt(6).ndims     = '2';
pt(6).size      = '[]';
pt(6).isStruct  = false;
pt(6).symbol     = 'calibration_model_v4_P.motor_enable_Value';
pt(6).baseaddr   = '&calibration_model_v4_P.motor_enable_Value';
pt(6).dtname     = 'uint8_T';



  
pt(7).blockname = 'motor_enable1';
pt(7).paramname = 'Value';
pt(7).class     = 'scalar';
pt(7).nrows     = 1;
pt(7).ncols     = 1;
pt(7).subsource = 'SS_INT32';
pt(7).ndims     = '2';
pt(7).size      = '[]';
pt(7).isStruct  = false;
pt(7).symbol     = 'calibration_model_v4_P.motor_enable1_Value';
pt(7).baseaddr   = '&calibration_model_v4_P.motor_enable1_Value';
pt(7).dtname     = 'int32_T';



  
pt(8).blockname = 'velocity setpoint';
pt(8).paramname = 'Value';
pt(8).class     = 'scalar';
pt(8).nrows     = 1;
pt(8).ncols     = 1;
pt(8).subsource = 'SS_INT16';
pt(8).ndims     = '2';
pt(8).size      = '[]';
pt(8).isStruct  = false;
pt(8).symbol     = 'calibration_model_v4_P.velocitysetpoint_Value';
pt(8).baseaddr   = '&calibration_model_v4_P.velocitysetpoint_Value';
pt(8).dtname     = 'int16_T';



  
pt(9).blockname = 'EtherCAT PDO Receive';
pt(9).paramname = 'P1';
pt(9).class     = 'vector';
pt(9).nrows     = 1;
pt(9).ncols     = 30;
pt(9).subsource = 'SS_DOUBLE';
pt(9).ndims     = '2';
pt(9).size      = '[]';
pt(9).isStruct  = false;
pt(9).symbol     = 'calibration_model_v4_P.EtherCATPDOReceive_P1';
pt(9).baseaddr   = '&calibration_model_v4_P.EtherCATPDOReceive_P1[0]';
pt(9).dtname     = 'real_T';



  
pt(10).blockname = 'EtherCAT PDO Receive';
pt(10).paramname = 'P2';
pt(10).class     = 'scalar';
pt(10).nrows     = 1;
pt(10).ncols     = 1;
pt(10).subsource = 'SS_DOUBLE';
pt(10).ndims     = '2';
pt(10).size      = '[]';
pt(10).isStruct  = false;
pt(10).symbol     = 'calibration_model_v4_P.EtherCATPDOReceive_P2';
pt(10).baseaddr   = '&calibration_model_v4_P.EtherCATPDOReceive_P2';
pt(10).dtname     = 'real_T';



  
pt(11).blockname = 'EtherCAT PDO Receive';
pt(11).paramname = 'P3';
pt(11).class     = 'scalar';
pt(11).nrows     = 1;
pt(11).ncols     = 1;
pt(11).subsource = 'SS_DOUBLE';
pt(11).ndims     = '2';
pt(11).size      = '[]';
pt(11).isStruct  = false;
pt(11).symbol     = 'calibration_model_v4_P.EtherCATPDOReceive_P3';
pt(11).baseaddr   = '&calibration_model_v4_P.EtherCATPDOReceive_P3';
pt(11).dtname     = 'real_T';



  
pt(12).blockname = 'EtherCAT PDO Receive';
pt(12).paramname = 'P4';
pt(12).class     = 'scalar';
pt(12).nrows     = 1;
pt(12).ncols     = 1;
pt(12).subsource = 'SS_DOUBLE';
pt(12).ndims     = '2';
pt(12).size      = '[]';
pt(12).isStruct  = false;
pt(12).symbol     = 'calibration_model_v4_P.EtherCATPDOReceive_P4';
pt(12).baseaddr   = '&calibration_model_v4_P.EtherCATPDOReceive_P4';
pt(12).dtname     = 'real_T';



  
pt(13).blockname = 'EtherCAT PDO Receive';
pt(13).paramname = 'P5';
pt(13).class     = 'scalar';
pt(13).nrows     = 1;
pt(13).ncols     = 1;
pt(13).subsource = 'SS_DOUBLE';
pt(13).ndims     = '2';
pt(13).size      = '[]';
pt(13).isStruct  = false;
pt(13).symbol     = 'calibration_model_v4_P.EtherCATPDOReceive_P5';
pt(13).baseaddr   = '&calibration_model_v4_P.EtherCATPDOReceive_P5';
pt(13).dtname     = 'real_T';



  
pt(14).blockname = 'EtherCAT PDO Receive';
pt(14).paramname = 'P6';
pt(14).class     = 'scalar';
pt(14).nrows     = 1;
pt(14).ncols     = 1;
pt(14).subsource = 'SS_DOUBLE';
pt(14).ndims     = '2';
pt(14).size      = '[]';
pt(14).isStruct  = false;
pt(14).symbol     = 'calibration_model_v4_P.EtherCATPDOReceive_P6';
pt(14).baseaddr   = '&calibration_model_v4_P.EtherCATPDOReceive_P6';
pt(14).dtname     = 'real_T';



  
pt(15).blockname = 'EtherCAT PDO Receive';
pt(15).paramname = 'P7';
pt(15).class     = 'scalar';
pt(15).nrows     = 1;
pt(15).ncols     = 1;
pt(15).subsource = 'SS_DOUBLE';
pt(15).ndims     = '2';
pt(15).size      = '[]';
pt(15).isStruct  = false;
pt(15).symbol     = 'calibration_model_v4_P.EtherCATPDOReceive_P7';
pt(15).baseaddr   = '&calibration_model_v4_P.EtherCATPDOReceive_P7';
pt(15).dtname     = 'real_T';



  
pt(16).blockname = 'EtherCAT PDO Receive1';
pt(16).paramname = 'P1';
pt(16).class     = 'vector';
pt(16).nrows     = 1;
pt(16).ncols     = 27;
pt(16).subsource = 'SS_DOUBLE';
pt(16).ndims     = '2';
pt(16).size      = '[]';
pt(16).isStruct  = false;
pt(16).symbol     = 'calibration_model_v4_P.EtherCATPDOReceive1_P1';
pt(16).baseaddr   = '&calibration_model_v4_P.EtherCATPDOReceive1_P1[0]';
pt(16).dtname     = 'real_T';



  
pt(17).blockname = 'EtherCAT PDO Receive1';
pt(17).paramname = 'P2';
pt(17).class     = 'scalar';
pt(17).nrows     = 1;
pt(17).ncols     = 1;
pt(17).subsource = 'SS_DOUBLE';
pt(17).ndims     = '2';
pt(17).size      = '[]';
pt(17).isStruct  = false;
pt(17).symbol     = 'calibration_model_v4_P.EtherCATPDOReceive1_P2';
pt(17).baseaddr   = '&calibration_model_v4_P.EtherCATPDOReceive1_P2';
pt(17).dtname     = 'real_T';



  
pt(18).blockname = 'EtherCAT PDO Receive1';
pt(18).paramname = 'P3';
pt(18).class     = 'scalar';
pt(18).nrows     = 1;
pt(18).ncols     = 1;
pt(18).subsource = 'SS_DOUBLE';
pt(18).ndims     = '2';
pt(18).size      = '[]';
pt(18).isStruct  = false;
pt(18).symbol     = 'calibration_model_v4_P.EtherCATPDOReceive1_P3';
pt(18).baseaddr   = '&calibration_model_v4_P.EtherCATPDOReceive1_P3';
pt(18).dtname     = 'real_T';



  
pt(19).blockname = 'EtherCAT PDO Receive1';
pt(19).paramname = 'P4';
pt(19).class     = 'scalar';
pt(19).nrows     = 1;
pt(19).ncols     = 1;
pt(19).subsource = 'SS_DOUBLE';
pt(19).ndims     = '2';
pt(19).size      = '[]';
pt(19).isStruct  = false;
pt(19).symbol     = 'calibration_model_v4_P.EtherCATPDOReceive1_P4';
pt(19).baseaddr   = '&calibration_model_v4_P.EtherCATPDOReceive1_P4';
pt(19).dtname     = 'real_T';



  
pt(20).blockname = 'EtherCAT PDO Receive1';
pt(20).paramname = 'P5';
pt(20).class     = 'scalar';
pt(20).nrows     = 1;
pt(20).ncols     = 1;
pt(20).subsource = 'SS_DOUBLE';
pt(20).ndims     = '2';
pt(20).size      = '[]';
pt(20).isStruct  = false;
pt(20).symbol     = 'calibration_model_v4_P.EtherCATPDOReceive1_P5';
pt(20).baseaddr   = '&calibration_model_v4_P.EtherCATPDOReceive1_P5';
pt(20).dtname     = 'real_T';



  
pt(21).blockname = 'EtherCAT PDO Receive1';
pt(21).paramname = 'P6';
pt(21).class     = 'scalar';
pt(21).nrows     = 1;
pt(21).ncols     = 1;
pt(21).subsource = 'SS_DOUBLE';
pt(21).ndims     = '2';
pt(21).size      = '[]';
pt(21).isStruct  = false;
pt(21).symbol     = 'calibration_model_v4_P.EtherCATPDOReceive1_P6';
pt(21).baseaddr   = '&calibration_model_v4_P.EtherCATPDOReceive1_P6';
pt(21).dtname     = 'real_T';



  
pt(22).blockname = 'EtherCAT PDO Receive1';
pt(22).paramname = 'P7';
pt(22).class     = 'scalar';
pt(22).nrows     = 1;
pt(22).ncols     = 1;
pt(22).subsource = 'SS_DOUBLE';
pt(22).ndims     = '2';
pt(22).size      = '[]';
pt(22).isStruct  = false;
pt(22).symbol     = 'calibration_model_v4_P.EtherCATPDOReceive1_P7';
pt(22).baseaddr   = '&calibration_model_v4_P.EtherCATPDOReceive1_P7';
pt(22).dtname     = 'real_T';



  
pt(23).blockname = 'EtherCAT PDO Transmit ';
pt(23).paramname = 'P1';
pt(23).class     = 'vector';
pt(23).nrows     = 1;
pt(23).ncols     = 32;
pt(23).subsource = 'SS_DOUBLE';
pt(23).ndims     = '2';
pt(23).size      = '[]';
pt(23).isStruct  = false;
pt(23).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit_P1';
pt(23).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit_P1[0]';
pt(23).dtname     = 'real_T';



  
pt(24).blockname = 'EtherCAT PDO Transmit ';
pt(24).paramname = 'P2';
pt(24).class     = 'scalar';
pt(24).nrows     = 1;
pt(24).ncols     = 1;
pt(24).subsource = 'SS_DOUBLE';
pt(24).ndims     = '2';
pt(24).size      = '[]';
pt(24).isStruct  = false;
pt(24).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit_P2';
pt(24).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit_P2';
pt(24).dtname     = 'real_T';



  
pt(25).blockname = 'EtherCAT PDO Transmit ';
pt(25).paramname = 'P3';
pt(25).class     = 'scalar';
pt(25).nrows     = 1;
pt(25).ncols     = 1;
pt(25).subsource = 'SS_DOUBLE';
pt(25).ndims     = '2';
pt(25).size      = '[]';
pt(25).isStruct  = false;
pt(25).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit_P3';
pt(25).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit_P3';
pt(25).dtname     = 'real_T';



  
pt(26).blockname = 'EtherCAT PDO Transmit ';
pt(26).paramname = 'P4';
pt(26).class     = 'scalar';
pt(26).nrows     = 1;
pt(26).ncols     = 1;
pt(26).subsource = 'SS_DOUBLE';
pt(26).ndims     = '2';
pt(26).size      = '[]';
pt(26).isStruct  = false;
pt(26).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit_P4';
pt(26).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit_P4';
pt(26).dtname     = 'real_T';



  
pt(27).blockname = 'EtherCAT PDO Transmit ';
pt(27).paramname = 'P5';
pt(27).class     = 'scalar';
pt(27).nrows     = 1;
pt(27).ncols     = 1;
pt(27).subsource = 'SS_DOUBLE';
pt(27).ndims     = '2';
pt(27).size      = '[]';
pt(27).isStruct  = false;
pt(27).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit_P5';
pt(27).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit_P5';
pt(27).dtname     = 'real_T';



  
pt(28).blockname = 'EtherCAT PDO Transmit ';
pt(28).paramname = 'P6';
pt(28).class     = 'scalar';
pt(28).nrows     = 1;
pt(28).ncols     = 1;
pt(28).subsource = 'SS_DOUBLE';
pt(28).ndims     = '2';
pt(28).size      = '[]';
pt(28).isStruct  = false;
pt(28).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit_P6';
pt(28).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit_P6';
pt(28).dtname     = 'real_T';



  
pt(29).blockname = 'EtherCAT PDO Transmit ';
pt(29).paramname = 'P7';
pt(29).class     = 'scalar';
pt(29).nrows     = 1;
pt(29).ncols     = 1;
pt(29).subsource = 'SS_DOUBLE';
pt(29).ndims     = '2';
pt(29).size      = '[]';
pt(29).isStruct  = false;
pt(29).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit_P7';
pt(29).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit_P7';
pt(29).dtname     = 'real_T';



  
pt(30).blockname = 'EtherCAT PDO Transmit 1';
pt(30).paramname = 'P1';
pt(30).class     = 'vector';
pt(30).nrows     = 1;
pt(30).ncols     = 34;
pt(30).subsource = 'SS_DOUBLE';
pt(30).ndims     = '2';
pt(30).size      = '[]';
pt(30).isStruct  = false;
pt(30).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit1_P1';
pt(30).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit1_P1[0]';
pt(30).dtname     = 'real_T';



  
pt(31).blockname = 'EtherCAT PDO Transmit 1';
pt(31).paramname = 'P2';
pt(31).class     = 'scalar';
pt(31).nrows     = 1;
pt(31).ncols     = 1;
pt(31).subsource = 'SS_DOUBLE';
pt(31).ndims     = '2';
pt(31).size      = '[]';
pt(31).isStruct  = false;
pt(31).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit1_P2';
pt(31).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit1_P2';
pt(31).dtname     = 'real_T';



  
pt(32).blockname = 'EtherCAT PDO Transmit 1';
pt(32).paramname = 'P3';
pt(32).class     = 'scalar';
pt(32).nrows     = 1;
pt(32).ncols     = 1;
pt(32).subsource = 'SS_DOUBLE';
pt(32).ndims     = '2';
pt(32).size      = '[]';
pt(32).isStruct  = false;
pt(32).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit1_P3';
pt(32).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit1_P3';
pt(32).dtname     = 'real_T';



  
pt(33).blockname = 'EtherCAT PDO Transmit 1';
pt(33).paramname = 'P4';
pt(33).class     = 'scalar';
pt(33).nrows     = 1;
pt(33).ncols     = 1;
pt(33).subsource = 'SS_DOUBLE';
pt(33).ndims     = '2';
pt(33).size      = '[]';
pt(33).isStruct  = false;
pt(33).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit1_P4';
pt(33).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit1_P4';
pt(33).dtname     = 'real_T';



  
pt(34).blockname = 'EtherCAT PDO Transmit 1';
pt(34).paramname = 'P5';
pt(34).class     = 'scalar';
pt(34).nrows     = 1;
pt(34).ncols     = 1;
pt(34).subsource = 'SS_DOUBLE';
pt(34).ndims     = '2';
pt(34).size      = '[]';
pt(34).isStruct  = false;
pt(34).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit1_P5';
pt(34).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit1_P5';
pt(34).dtname     = 'real_T';



  
pt(35).blockname = 'EtherCAT PDO Transmit 1';
pt(35).paramname = 'P6';
pt(35).class     = 'scalar';
pt(35).nrows     = 1;
pt(35).ncols     = 1;
pt(35).subsource = 'SS_DOUBLE';
pt(35).ndims     = '2';
pt(35).size      = '[]';
pt(35).isStruct  = false;
pt(35).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit1_P6';
pt(35).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit1_P6';
pt(35).dtname     = 'real_T';



  
pt(36).blockname = 'EtherCAT PDO Transmit 1';
pt(36).paramname = 'P7';
pt(36).class     = 'scalar';
pt(36).nrows     = 1;
pt(36).ncols     = 1;
pt(36).subsource = 'SS_DOUBLE';
pt(36).ndims     = '2';
pt(36).size      = '[]';
pt(36).isStruct  = false;
pt(36).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit1_P7';
pt(36).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit1_P7';
pt(36).dtname     = 'real_T';



  
pt(37).blockname = 'EtherCAT PDO Transmit 2';
pt(37).paramname = 'P1';
pt(37).class     = 'vector';
pt(37).nrows     = 1;
pt(37).ncols     = 31;
pt(37).subsource = 'SS_DOUBLE';
pt(37).ndims     = '2';
pt(37).size      = '[]';
pt(37).isStruct  = false;
pt(37).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit2_P1';
pt(37).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit2_P1[0]';
pt(37).dtname     = 'real_T';



  
pt(38).blockname = 'EtherCAT PDO Transmit 2';
pt(38).paramname = 'P2';
pt(38).class     = 'scalar';
pt(38).nrows     = 1;
pt(38).ncols     = 1;
pt(38).subsource = 'SS_DOUBLE';
pt(38).ndims     = '2';
pt(38).size      = '[]';
pt(38).isStruct  = false;
pt(38).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit2_P2';
pt(38).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit2_P2';
pt(38).dtname     = 'real_T';



  
pt(39).blockname = 'EtherCAT PDO Transmit 2';
pt(39).paramname = 'P3';
pt(39).class     = 'scalar';
pt(39).nrows     = 1;
pt(39).ncols     = 1;
pt(39).subsource = 'SS_DOUBLE';
pt(39).ndims     = '2';
pt(39).size      = '[]';
pt(39).isStruct  = false;
pt(39).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit2_P3';
pt(39).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit2_P3';
pt(39).dtname     = 'real_T';



  
pt(40).blockname = 'EtherCAT PDO Transmit 2';
pt(40).paramname = 'P4';
pt(40).class     = 'scalar';
pt(40).nrows     = 1;
pt(40).ncols     = 1;
pt(40).subsource = 'SS_DOUBLE';
pt(40).ndims     = '2';
pt(40).size      = '[]';
pt(40).isStruct  = false;
pt(40).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit2_P4';
pt(40).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit2_P4';
pt(40).dtname     = 'real_T';



  
pt(41).blockname = 'EtherCAT PDO Transmit 2';
pt(41).paramname = 'P5';
pt(41).class     = 'scalar';
pt(41).nrows     = 1;
pt(41).ncols     = 1;
pt(41).subsource = 'SS_DOUBLE';
pt(41).ndims     = '2';
pt(41).size      = '[]';
pt(41).isStruct  = false;
pt(41).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit2_P5';
pt(41).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit2_P5';
pt(41).dtname     = 'real_T';



  
pt(42).blockname = 'EtherCAT PDO Transmit 2';
pt(42).paramname = 'P6';
pt(42).class     = 'scalar';
pt(42).nrows     = 1;
pt(42).ncols     = 1;
pt(42).subsource = 'SS_DOUBLE';
pt(42).ndims     = '2';
pt(42).size      = '[]';
pt(42).isStruct  = false;
pt(42).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit2_P6';
pt(42).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit2_P6';
pt(42).dtname     = 'real_T';



  
pt(43).blockname = 'EtherCAT PDO Transmit 2';
pt(43).paramname = 'P7';
pt(43).class     = 'scalar';
pt(43).nrows     = 1;
pt(43).ncols     = 1;
pt(43).subsource = 'SS_DOUBLE';
pt(43).ndims     = '2';
pt(43).size      = '[]';
pt(43).isStruct  = false;
pt(43).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit2_P7';
pt(43).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit2_P7';
pt(43).dtname     = 'real_T';



  
pt(44).blockname = 'EtherCAT PDO Transmit 3';
pt(44).paramname = 'P1';
pt(44).class     = 'vector';
pt(44).nrows     = 1;
pt(44).ncols     = 25;
pt(44).subsource = 'SS_DOUBLE';
pt(44).ndims     = '2';
pt(44).size      = '[]';
pt(44).isStruct  = false;
pt(44).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit3_P1';
pt(44).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit3_P1[0]';
pt(44).dtname     = 'real_T';



  
pt(45).blockname = 'EtherCAT PDO Transmit 3';
pt(45).paramname = 'P2';
pt(45).class     = 'scalar';
pt(45).nrows     = 1;
pt(45).ncols     = 1;
pt(45).subsource = 'SS_DOUBLE';
pt(45).ndims     = '2';
pt(45).size      = '[]';
pt(45).isStruct  = false;
pt(45).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit3_P2';
pt(45).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit3_P2';
pt(45).dtname     = 'real_T';



  
pt(46).blockname = 'EtherCAT PDO Transmit 3';
pt(46).paramname = 'P3';
pt(46).class     = 'scalar';
pt(46).nrows     = 1;
pt(46).ncols     = 1;
pt(46).subsource = 'SS_DOUBLE';
pt(46).ndims     = '2';
pt(46).size      = '[]';
pt(46).isStruct  = false;
pt(46).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit3_P3';
pt(46).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit3_P3';
pt(46).dtname     = 'real_T';



  
pt(47).blockname = 'EtherCAT PDO Transmit 3';
pt(47).paramname = 'P4';
pt(47).class     = 'scalar';
pt(47).nrows     = 1;
pt(47).ncols     = 1;
pt(47).subsource = 'SS_DOUBLE';
pt(47).ndims     = '2';
pt(47).size      = '[]';
pt(47).isStruct  = false;
pt(47).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit3_P4';
pt(47).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit3_P4';
pt(47).dtname     = 'real_T';



  
pt(48).blockname = 'EtherCAT PDO Transmit 3';
pt(48).paramname = 'P5';
pt(48).class     = 'scalar';
pt(48).nrows     = 1;
pt(48).ncols     = 1;
pt(48).subsource = 'SS_DOUBLE';
pt(48).ndims     = '2';
pt(48).size      = '[]';
pt(48).isStruct  = false;
pt(48).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit3_P5';
pt(48).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit3_P5';
pt(48).dtname     = 'real_T';



  
pt(49).blockname = 'EtherCAT PDO Transmit 3';
pt(49).paramname = 'P6';
pt(49).class     = 'scalar';
pt(49).nrows     = 1;
pt(49).ncols     = 1;
pt(49).subsource = 'SS_DOUBLE';
pt(49).ndims     = '2';
pt(49).size      = '[]';
pt(49).isStruct  = false;
pt(49).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit3_P6';
pt(49).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit3_P6';
pt(49).dtname     = 'real_T';



  
pt(50).blockname = 'EtherCAT PDO Transmit 3';
pt(50).paramname = 'P7';
pt(50).class     = 'scalar';
pt(50).nrows     = 1;
pt(50).ncols     = 1;
pt(50).subsource = 'SS_DOUBLE';
pt(50).ndims     = '2';
pt(50).size      = '[]';
pt(50).isStruct  = false;
pt(50).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit3_P7';
pt(50).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit3_P7';
pt(50).dtname     = 'real_T';



  
pt(51).blockname = 'EtherCAT PDO Transmit 4';
pt(51).paramname = 'P1';
pt(51).class     = 'vector';
pt(51).nrows     = 1;
pt(51).ncols     = 29;
pt(51).subsource = 'SS_DOUBLE';
pt(51).ndims     = '2';
pt(51).size      = '[]';
pt(51).isStruct  = false;
pt(51).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit4_P1';
pt(51).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit4_P1[0]';
pt(51).dtname     = 'real_T';



  
pt(52).blockname = 'EtherCAT PDO Transmit 4';
pt(52).paramname = 'P2';
pt(52).class     = 'scalar';
pt(52).nrows     = 1;
pt(52).ncols     = 1;
pt(52).subsource = 'SS_DOUBLE';
pt(52).ndims     = '2';
pt(52).size      = '[]';
pt(52).isStruct  = false;
pt(52).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit4_P2';
pt(52).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit4_P2';
pt(52).dtname     = 'real_T';



  
pt(53).blockname = 'EtherCAT PDO Transmit 4';
pt(53).paramname = 'P3';
pt(53).class     = 'scalar';
pt(53).nrows     = 1;
pt(53).ncols     = 1;
pt(53).subsource = 'SS_DOUBLE';
pt(53).ndims     = '2';
pt(53).size      = '[]';
pt(53).isStruct  = false;
pt(53).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit4_P3';
pt(53).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit4_P3';
pt(53).dtname     = 'real_T';



  
pt(54).blockname = 'EtherCAT PDO Transmit 4';
pt(54).paramname = 'P4';
pt(54).class     = 'scalar';
pt(54).nrows     = 1;
pt(54).ncols     = 1;
pt(54).subsource = 'SS_DOUBLE';
pt(54).ndims     = '2';
pt(54).size      = '[]';
pt(54).isStruct  = false;
pt(54).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit4_P4';
pt(54).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit4_P4';
pt(54).dtname     = 'real_T';



  
pt(55).blockname = 'EtherCAT PDO Transmit 4';
pt(55).paramname = 'P5';
pt(55).class     = 'scalar';
pt(55).nrows     = 1;
pt(55).ncols     = 1;
pt(55).subsource = 'SS_DOUBLE';
pt(55).ndims     = '2';
pt(55).size      = '[]';
pt(55).isStruct  = false;
pt(55).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit4_P5';
pt(55).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit4_P5';
pt(55).dtname     = 'real_T';



  
pt(56).blockname = 'EtherCAT PDO Transmit 4';
pt(56).paramname = 'P6';
pt(56).class     = 'scalar';
pt(56).nrows     = 1;
pt(56).ncols     = 1;
pt(56).subsource = 'SS_DOUBLE';
pt(56).ndims     = '2';
pt(56).size      = '[]';
pt(56).isStruct  = false;
pt(56).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit4_P6';
pt(56).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit4_P6';
pt(56).dtname     = 'real_T';



  
pt(57).blockname = 'EtherCAT PDO Transmit 4';
pt(57).paramname = 'P7';
pt(57).class     = 'scalar';
pt(57).nrows     = 1;
pt(57).ncols     = 1;
pt(57).subsource = 'SS_DOUBLE';
pt(57).ndims     = '2';
pt(57).size      = '[]';
pt(57).isStruct  = false;
pt(57).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit4_P7';
pt(57).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit4_P7';
pt(57).dtname     = 'real_T';



  
pt(58).blockname = 'EtherCAT PDO Transmit 5';
pt(58).paramname = 'P1';
pt(58).class     = 'vector';
pt(58).nrows     = 1;
pt(58).ncols     = 25;
pt(58).subsource = 'SS_DOUBLE';
pt(58).ndims     = '2';
pt(58).size      = '[]';
pt(58).isStruct  = false;
pt(58).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit5_P1';
pt(58).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit5_P1[0]';
pt(58).dtname     = 'real_T';



  
pt(59).blockname = 'EtherCAT PDO Transmit 5';
pt(59).paramname = 'P2';
pt(59).class     = 'scalar';
pt(59).nrows     = 1;
pt(59).ncols     = 1;
pt(59).subsource = 'SS_DOUBLE';
pt(59).ndims     = '2';
pt(59).size      = '[]';
pt(59).isStruct  = false;
pt(59).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit5_P2';
pt(59).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit5_P2';
pt(59).dtname     = 'real_T';



  
pt(60).blockname = 'EtherCAT PDO Transmit 5';
pt(60).paramname = 'P3';
pt(60).class     = 'scalar';
pt(60).nrows     = 1;
pt(60).ncols     = 1;
pt(60).subsource = 'SS_DOUBLE';
pt(60).ndims     = '2';
pt(60).size      = '[]';
pt(60).isStruct  = false;
pt(60).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit5_P3';
pt(60).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit5_P3';
pt(60).dtname     = 'real_T';



  
pt(61).blockname = 'EtherCAT PDO Transmit 5';
pt(61).paramname = 'P4';
pt(61).class     = 'scalar';
pt(61).nrows     = 1;
pt(61).ncols     = 1;
pt(61).subsource = 'SS_DOUBLE';
pt(61).ndims     = '2';
pt(61).size      = '[]';
pt(61).isStruct  = false;
pt(61).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit5_P4';
pt(61).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit5_P4';
pt(61).dtname     = 'real_T';



  
pt(62).blockname = 'EtherCAT PDO Transmit 5';
pt(62).paramname = 'P5';
pt(62).class     = 'scalar';
pt(62).nrows     = 1;
pt(62).ncols     = 1;
pt(62).subsource = 'SS_DOUBLE';
pt(62).ndims     = '2';
pt(62).size      = '[]';
pt(62).isStruct  = false;
pt(62).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit5_P5';
pt(62).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit5_P5';
pt(62).dtname     = 'real_T';



  
pt(63).blockname = 'EtherCAT PDO Transmit 5';
pt(63).paramname = 'P6';
pt(63).class     = 'scalar';
pt(63).nrows     = 1;
pt(63).ncols     = 1;
pt(63).subsource = 'SS_DOUBLE';
pt(63).ndims     = '2';
pt(63).size      = '[]';
pt(63).isStruct  = false;
pt(63).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit5_P6';
pt(63).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit5_P6';
pt(63).dtname     = 'real_T';



  
pt(64).blockname = 'EtherCAT PDO Transmit 5';
pt(64).paramname = 'P7';
pt(64).class     = 'scalar';
pt(64).nrows     = 1;
pt(64).ncols     = 1;
pt(64).subsource = 'SS_DOUBLE';
pt(64).ndims     = '2';
pt(64).size      = '[]';
pt(64).isStruct  = false;
pt(64).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit5_P7';
pt(64).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit5_P7';
pt(64).dtname     = 'real_T';



  
pt(65).blockname = 'EtherCAT PDO Transmit 6';
pt(65).paramname = 'P1';
pt(65).class     = 'vector';
pt(65).nrows     = 1;
pt(65).ncols     = 33;
pt(65).subsource = 'SS_DOUBLE';
pt(65).ndims     = '2';
pt(65).size      = '[]';
pt(65).isStruct  = false;
pt(65).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit6_P1';
pt(65).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit6_P1[0]';
pt(65).dtname     = 'real_T';



  
pt(66).blockname = 'EtherCAT PDO Transmit 6';
pt(66).paramname = 'P2';
pt(66).class     = 'scalar';
pt(66).nrows     = 1;
pt(66).ncols     = 1;
pt(66).subsource = 'SS_DOUBLE';
pt(66).ndims     = '2';
pt(66).size      = '[]';
pt(66).isStruct  = false;
pt(66).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit6_P2';
pt(66).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit6_P2';
pt(66).dtname     = 'real_T';



  
pt(67).blockname = 'EtherCAT PDO Transmit 6';
pt(67).paramname = 'P3';
pt(67).class     = 'scalar';
pt(67).nrows     = 1;
pt(67).ncols     = 1;
pt(67).subsource = 'SS_DOUBLE';
pt(67).ndims     = '2';
pt(67).size      = '[]';
pt(67).isStruct  = false;
pt(67).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit6_P3';
pt(67).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit6_P3';
pt(67).dtname     = 'real_T';



  
pt(68).blockname = 'EtherCAT PDO Transmit 6';
pt(68).paramname = 'P4';
pt(68).class     = 'scalar';
pt(68).nrows     = 1;
pt(68).ncols     = 1;
pt(68).subsource = 'SS_DOUBLE';
pt(68).ndims     = '2';
pt(68).size      = '[]';
pt(68).isStruct  = false;
pt(68).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit6_P4';
pt(68).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit6_P4';
pt(68).dtname     = 'real_T';



  
pt(69).blockname = 'EtherCAT PDO Transmit 6';
pt(69).paramname = 'P5';
pt(69).class     = 'scalar';
pt(69).nrows     = 1;
pt(69).ncols     = 1;
pt(69).subsource = 'SS_DOUBLE';
pt(69).ndims     = '2';
pt(69).size      = '[]';
pt(69).isStruct  = false;
pt(69).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit6_P5';
pt(69).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit6_P5';
pt(69).dtname     = 'real_T';



  
pt(70).blockname = 'EtherCAT PDO Transmit 6';
pt(70).paramname = 'P6';
pt(70).class     = 'scalar';
pt(70).nrows     = 1;
pt(70).ncols     = 1;
pt(70).subsource = 'SS_DOUBLE';
pt(70).ndims     = '2';
pt(70).size      = '[]';
pt(70).isStruct  = false;
pt(70).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit6_P6';
pt(70).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit6_P6';
pt(70).dtname     = 'real_T';



  
pt(71).blockname = 'EtherCAT PDO Transmit 6';
pt(71).paramname = 'P7';
pt(71).class     = 'scalar';
pt(71).nrows     = 1;
pt(71).ncols     = 1;
pt(71).subsource = 'SS_DOUBLE';
pt(71).ndims     = '2';
pt(71).size      = '[]';
pt(71).isStruct  = false;
pt(71).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit6_P7';
pt(71).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit6_P7';
pt(71).dtname     = 'real_T';



  
pt(72).blockname = 'EtherCAT PDO Transmit 7';
pt(72).paramname = 'P1';
pt(72).class     = 'vector';
pt(72).nrows     = 1;
pt(72).ncols     = 25;
pt(72).subsource = 'SS_DOUBLE';
pt(72).ndims     = '2';
pt(72).size      = '[]';
pt(72).isStruct  = false;
pt(72).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit7_P1';
pt(72).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit7_P1[0]';
pt(72).dtname     = 'real_T';



  
pt(73).blockname = 'EtherCAT PDO Transmit 7';
pt(73).paramname = 'P2';
pt(73).class     = 'scalar';
pt(73).nrows     = 1;
pt(73).ncols     = 1;
pt(73).subsource = 'SS_DOUBLE';
pt(73).ndims     = '2';
pt(73).size      = '[]';
pt(73).isStruct  = false;
pt(73).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit7_P2';
pt(73).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit7_P2';
pt(73).dtname     = 'real_T';



  
pt(74).blockname = 'EtherCAT PDO Transmit 7';
pt(74).paramname = 'P3';
pt(74).class     = 'scalar';
pt(74).nrows     = 1;
pt(74).ncols     = 1;
pt(74).subsource = 'SS_DOUBLE';
pt(74).ndims     = '2';
pt(74).size      = '[]';
pt(74).isStruct  = false;
pt(74).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit7_P3';
pt(74).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit7_P3';
pt(74).dtname     = 'real_T';



  
pt(75).blockname = 'EtherCAT PDO Transmit 7';
pt(75).paramname = 'P4';
pt(75).class     = 'scalar';
pt(75).nrows     = 1;
pt(75).ncols     = 1;
pt(75).subsource = 'SS_DOUBLE';
pt(75).ndims     = '2';
pt(75).size      = '[]';
pt(75).isStruct  = false;
pt(75).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit7_P4';
pt(75).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit7_P4';
pt(75).dtname     = 'real_T';



  
pt(76).blockname = 'EtherCAT PDO Transmit 7';
pt(76).paramname = 'P5';
pt(76).class     = 'scalar';
pt(76).nrows     = 1;
pt(76).ncols     = 1;
pt(76).subsource = 'SS_DOUBLE';
pt(76).ndims     = '2';
pt(76).size      = '[]';
pt(76).isStruct  = false;
pt(76).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit7_P5';
pt(76).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit7_P5';
pt(76).dtname     = 'real_T';



  
pt(77).blockname = 'EtherCAT PDO Transmit 7';
pt(77).paramname = 'P6';
pt(77).class     = 'scalar';
pt(77).nrows     = 1;
pt(77).ncols     = 1;
pt(77).subsource = 'SS_DOUBLE';
pt(77).ndims     = '2';
pt(77).size      = '[]';
pt(77).isStruct  = false;
pt(77).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit7_P6';
pt(77).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit7_P6';
pt(77).dtname     = 'real_T';



  
pt(78).blockname = 'EtherCAT PDO Transmit 7';
pt(78).paramname = 'P7';
pt(78).class     = 'scalar';
pt(78).nrows     = 1;
pt(78).ncols     = 1;
pt(78).subsource = 'SS_DOUBLE';
pt(78).ndims     = '2';
pt(78).size      = '[]';
pt(78).isStruct  = false;
pt(78).symbol     = 'calibration_model_v4_P.EtherCATPDOTransmit7_P7';
pt(78).baseaddr   = '&calibration_model_v4_P.EtherCATPDOTransmit7_P7';
pt(78).dtname     = 'real_T';



  
pt(79).blockname = 'PWM Angle';
pt(79).paramname = 'P1';
pt(79).class     = 'vector';
pt(79).nrows     = 1;
pt(79).ncols     = 27;
pt(79).subsource = 'SS_DOUBLE';
pt(79).ndims     = '2';
pt(79).size      = '[]';
pt(79).isStruct  = false;
pt(79).symbol     = 'calibration_model_v4_P.PWMAngle_P1';
pt(79).baseaddr   = '&calibration_model_v4_P.PWMAngle_P1[0]';
pt(79).dtname     = 'real_T';



  
pt(80).blockname = 'PWM Angle';
pt(80).paramname = 'P2';
pt(80).class     = 'scalar';
pt(80).nrows     = 1;
pt(80).ncols     = 1;
pt(80).subsource = 'SS_DOUBLE';
pt(80).ndims     = '2';
pt(80).size      = '[]';
pt(80).isStruct  = false;
pt(80).symbol     = 'calibration_model_v4_P.PWMAngle_P2';
pt(80).baseaddr   = '&calibration_model_v4_P.PWMAngle_P2';
pt(80).dtname     = 'real_T';



  
pt(81).blockname = 'PWM Angle';
pt(81).paramname = 'P3';
pt(81).class     = 'scalar';
pt(81).nrows     = 1;
pt(81).ncols     = 1;
pt(81).subsource = 'SS_DOUBLE';
pt(81).ndims     = '2';
pt(81).size      = '[]';
pt(81).isStruct  = false;
pt(81).symbol     = 'calibration_model_v4_P.PWMAngle_P3';
pt(81).baseaddr   = '&calibration_model_v4_P.PWMAngle_P3';
pt(81).dtname     = 'real_T';



  
pt(82).blockname = 'PWM Angle';
pt(82).paramname = 'P4';
pt(82).class     = 'scalar';
pt(82).nrows     = 1;
pt(82).ncols     = 1;
pt(82).subsource = 'SS_DOUBLE';
pt(82).ndims     = '2';
pt(82).size      = '[]';
pt(82).isStruct  = false;
pt(82).symbol     = 'calibration_model_v4_P.PWMAngle_P4';
pt(82).baseaddr   = '&calibration_model_v4_P.PWMAngle_P4';
pt(82).dtname     = 'real_T';



  
pt(83).blockname = 'PWM Angle';
pt(83).paramname = 'P5';
pt(83).class     = 'scalar';
pt(83).nrows     = 1;
pt(83).ncols     = 1;
pt(83).subsource = 'SS_DOUBLE';
pt(83).ndims     = '2';
pt(83).size      = '[]';
pt(83).isStruct  = false;
pt(83).symbol     = 'calibration_model_v4_P.PWMAngle_P5';
pt(83).baseaddr   = '&calibration_model_v4_P.PWMAngle_P5';
pt(83).dtname     = 'real_T';



  
pt(84).blockname = 'PWM Angle';
pt(84).paramname = 'P6';
pt(84).class     = 'scalar';
pt(84).nrows     = 1;
pt(84).ncols     = 1;
pt(84).subsource = 'SS_DOUBLE';
pt(84).ndims     = '2';
pt(84).size      = '[]';
pt(84).isStruct  = false;
pt(84).symbol     = 'calibration_model_v4_P.PWMAngle_P6';
pt(84).baseaddr   = '&calibration_model_v4_P.PWMAngle_P6';
pt(84).dtname     = 'real_T';



  
pt(85).blockname = 'PWM Angle';
pt(85).paramname = 'P7';
pt(85).class     = 'scalar';
pt(85).nrows     = 1;
pt(85).ncols     = 1;
pt(85).subsource = 'SS_DOUBLE';
pt(85).ndims     = '2';
pt(85).size      = '[]';
pt(85).isStruct  = false;
pt(85).symbol     = 'calibration_model_v4_P.PWMAngle_P7';
pt(85).baseaddr   = '&calibration_model_v4_P.PWMAngle_P7';
pt(85).dtname     = 'real_T';


function len = getlenPT
len = 85;

