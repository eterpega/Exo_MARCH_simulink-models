function pt=MARCH_v1_5pt
pt = [];

  
pt(1).blockname = 'Delay';
pt(1).paramname = 'DelayLength';
pt(1).class     = 'scalar';
pt(1).nrows     = 1;
pt(1).ncols     = 1;
pt(1).subsource = 'SS_UINT32';
pt(1).ndims     = '2';
pt(1).size      = '[]';
pt(1).isStruct  = false;
pt(1).symbol     = 'MARCH_v1_5_P.Delay_DelayLength_mg';
pt(1).baseaddr   = '&MARCH_v1_5_P.Delay_DelayLength_mg';
pt(1).dtname     = 'uint32_T';

pt(getlenPT) = pt(1);


  
pt(2).blockname = 'Delay';
pt(2).paramname = 'InitialCondition';
pt(2).class     = 'scalar';
pt(2).nrows     = 1;
pt(2).ncols     = 1;
pt(2).subsource = 'SS_DOUBLE';
pt(2).ndims     = '2';
pt(2).size      = '[]';
pt(2).isStruct  = false;
pt(2).symbol     = 'MARCH_v1_5_P.Delay_InitialCondition_g';
pt(2).baseaddr   = '&MARCH_v1_5_P.Delay_InitialCondition_g';
pt(2).dtname     = 'real_T';



  
pt(3).blockname = 'Delay1';
pt(3).paramname = 'DelayLength';
pt(3).class     = 'scalar';
pt(3).nrows     = 1;
pt(3).ncols     = 1;
pt(3).subsource = 'SS_UINT32';
pt(3).ndims     = '2';
pt(3).size      = '[]';
pt(3).isStruct  = false;
pt(3).symbol     = 'MARCH_v1_5_P.Delay1_DelayLength';
pt(3).baseaddr   = '&MARCH_v1_5_P.Delay1_DelayLength';
pt(3).dtname     = 'uint32_T';



  
pt(4).blockname = 'Delay1';
pt(4).paramname = 'InitialCondition';
pt(4).class     = 'scalar';
pt(4).nrows     = 1;
pt(4).ncols     = 1;
pt(4).subsource = 'SS_DOUBLE';
pt(4).ndims     = '2';
pt(4).size      = '[]';
pt(4).isStruct  = false;
pt(4).symbol     = 'MARCH_v1_5_P.Delay1_InitialCondition';
pt(4).baseaddr   = '&MARCH_v1_5_P.Delay1_InitialCondition';
pt(4).dtname     = 'real_T';



  
pt(5).blockname = 'Controllers/Saturation';
pt(5).paramname = 'UpperLimit';
pt(5).class     = 'scalar';
pt(5).nrows     = 1;
pt(5).ncols     = 1;
pt(5).subsource = 'SS_DOUBLE';
pt(5).ndims     = '2';
pt(5).size      = '[]';
pt(5).isStruct  = false;
pt(5).symbol     = 'MARCH_v1_5_P.Saturation_UpperSat';
pt(5).baseaddr   = '&MARCH_v1_5_P.Saturation_UpperSat';
pt(5).dtname     = 'real_T';



  
pt(6).blockname = 'Controllers/Saturation';
pt(6).paramname = 'LowerLimit';
pt(6).class     = 'scalar';
pt(6).nrows     = 1;
pt(6).ncols     = 1;
pt(6).subsource = 'SS_DOUBLE';
pt(6).ndims     = '2';
pt(6).size      = '[]';
pt(6).isStruct  = false;
pt(6).symbol     = 'MARCH_v1_5_P.Saturation_LowerSat';
pt(6).baseaddr   = '&MARCH_v1_5_P.Saturation_LowerSat';
pt(6).dtname     = 'real_T';



  
pt(7).blockname = 'Exoskeleton parameters/Constant';
pt(7).paramname = 'Value';
pt(7).class     = 'scalar';
pt(7).nrows     = 1;
pt(7).ncols     = 1;
pt(7).subsource = 'SS_DOUBLE';
pt(7).ndims     = '2';
pt(7).size      = '[]';
pt(7).isStruct  = false;
pt(7).symbol     = 'MARCH_v1_5_P.Constant_Value_h';
pt(7).baseaddr   = '&MARCH_v1_5_P.Constant_Value_h';
pt(7).dtname     = 'real_T';



  
pt(8).blockname = 'Input Device/Both Safety';
pt(8).paramname = 'Value';
pt(8).class     = 'scalar';
pt(8).nrows     = 1;
pt(8).ncols     = 1;
pt(8).subsource = 'SS_DOUBLE';
pt(8).ndims     = '2';
pt(8).size      = '[]';
pt(8).isStruct  = false;
pt(8).symbol     = 'MARCH_v1_5_P.BothSafety_Value';
pt(8).baseaddr   = '&MARCH_v1_5_P.BothSafety_Value';
pt(8).dtname     = 'real_T';



  
pt(9).blockname = 'Input Device/Both Triggers';
pt(9).paramname = 'Value';
pt(9).class     = 'scalar';
pt(9).nrows     = 1;
pt(9).ncols     = 1;
pt(9).subsource = 'SS_DOUBLE';
pt(9).ndims     = '2';
pt(9).size      = '[]';
pt(9).isStruct  = false;
pt(9).symbol     = 'MARCH_v1_5_P.BothTriggers_Value';
pt(9).baseaddr   = '&MARCH_v1_5_P.BothTriggers_Value';
pt(9).dtname     = 'real_T';



  
pt(10).blockname = 'Input Device/Left Safety';
pt(10).paramname = 'Value';
pt(10).class     = 'scalar';
pt(10).nrows     = 1;
pt(10).ncols     = 1;
pt(10).subsource = 'SS_DOUBLE';
pt(10).ndims     = '2';
pt(10).size      = '[]';
pt(10).isStruct  = false;
pt(10).symbol     = 'MARCH_v1_5_P.LeftSafety_Value';
pt(10).baseaddr   = '&MARCH_v1_5_P.LeftSafety_Value';
pt(10).dtname     = 'real_T';



  
pt(11).blockname = 'Input Device/Left Trigger';
pt(11).paramname = 'Value';
pt(11).class     = 'scalar';
pt(11).nrows     = 1;
pt(11).ncols     = 1;
pt(11).subsource = 'SS_DOUBLE';
pt(11).ndims     = '2';
pt(11).size      = '[]';
pt(11).isStruct  = false;
pt(11).symbol     = 'MARCH_v1_5_P.LeftTrigger_Value';
pt(11).baseaddr   = '&MARCH_v1_5_P.LeftTrigger_Value';
pt(11).dtname     = 'real_T';



  
pt(12).blockname = 'Input Device/Local';
pt(12).paramname = 'Value';
pt(12).class     = 'scalar';
pt(12).nrows     = 1;
pt(12).ncols     = 1;
pt(12).subsource = 'SS_DOUBLE';
pt(12).ndims     = '2';
pt(12).size      = '[]';
pt(12).isStruct  = false;
pt(12).symbol     = 'MARCH_v1_5_P.Local_Value';
pt(12).baseaddr   = '&MARCH_v1_5_P.Local_Value';
pt(12).dtname     = 'real_T';



  
pt(13).blockname = 'Input Device/Right Safety';
pt(13).paramname = 'Value';
pt(13).class     = 'scalar';
pt(13).nrows     = 1;
pt(13).ncols     = 1;
pt(13).subsource = 'SS_DOUBLE';
pt(13).ndims     = '2';
pt(13).size      = '[]';
pt(13).isStruct  = false;
pt(13).symbol     = 'MARCH_v1_5_P.RightSafety_Value';
pt(13).baseaddr   = '&MARCH_v1_5_P.RightSafety_Value';
pt(13).dtname     = 'real_T';



  
pt(14).blockname = 'Input Device/Right Scroll Click';
pt(14).paramname = 'Value';
pt(14).class     = 'scalar';
pt(14).nrows     = 1;
pt(14).ncols     = 1;
pt(14).subsource = 'SS_DOUBLE';
pt(14).ndims     = '2';
pt(14).size      = '[]';
pt(14).isStruct  = false;
pt(14).symbol     = 'MARCH_v1_5_P.RightScrollClick_Value';
pt(14).baseaddr   = '&MARCH_v1_5_P.RightScrollClick_Value';
pt(14).dtname     = 'real_T';



  
pt(15).blockname = 'Input Device/Right Scroll Mode';
pt(15).paramname = 'Value';
pt(15).class     = 'scalar';
pt(15).nrows     = 1;
pt(15).ncols     = 1;
pt(15).subsource = 'SS_DOUBLE';
pt(15).ndims     = '2';
pt(15).size      = '[]';
pt(15).isStruct  = false;
pt(15).symbol     = 'MARCH_v1_5_P.RightScrollMode_Value';
pt(15).baseaddr   = '&MARCH_v1_5_P.RightScrollMode_Value';
pt(15).dtname     = 'real_T';



  
pt(16).blockname = 'Input Device/Right Trigger';
pt(16).paramname = 'Value';
pt(16).class     = 'scalar';
pt(16).nrows     = 1;
pt(16).ncols     = 1;
pt(16).subsource = 'SS_DOUBLE';
pt(16).ndims     = '2';
pt(16).size      = '[]';
pt(16).isStruct  = false;
pt(16).symbol     = 'MARCH_v1_5_P.RightTrigger_Value';
pt(16).baseaddr   = '&MARCH_v1_5_P.RightTrigger_Value';
pt(16).dtname     = 'real_T';



  
pt(17).blockname = 'Joint Angle Feedback Switch/Local';
pt(17).paramname = 'Value';
pt(17).class     = 'scalar';
pt(17).nrows     = 1;
pt(17).ncols     = 1;
pt(17).subsource = 'SS_DOUBLE';
pt(17).ndims     = '2';
pt(17).size      = '[]';
pt(17).isStruct  = false;
pt(17).symbol     = 'MARCH_v1_5_P.Local_Value_l';
pt(17).baseaddr   = '&MARCH_v1_5_P.Local_Value_l';
pt(17).dtname     = 'real_T';



  
pt(18).blockname = 'Point&Go/Local';
pt(18).paramname = 'Value';
pt(18).class     = 'scalar';
pt(18).nrows     = 1;
pt(18).ncols     = 1;
pt(18).subsource = 'SS_DOUBLE';
pt(18).ndims     = '2';
pt(18).size      = '[]';
pt(18).isStruct  = false;
pt(18).symbol     = 'MARCH_v1_5_P.Local_Value_i';
pt(18).baseaddr   = '&MARCH_v1_5_P.Local_Value_i';
pt(18).dtname     = 'real_T';



  
pt(19).blockname = 'Point&Go/Point & Go Point';
pt(19).paramname = 'Value';
pt(19).class     = 'vector';
pt(19).nrows     = 1;
pt(19).ncols     = 3;
pt(19).subsource = 'SS_DOUBLE';
pt(19).ndims     = '2';
pt(19).size      = '[]';
pt(19).isStruct  = false;
pt(19).symbol     = 'MARCH_v1_5_P.PointGoPoint_Value';
pt(19).baseaddr   = '&MARCH_v1_5_P.PointGoPoint_Value[0]';
pt(19).dtname     = 'real_T';



  
pt(20).blockname = 'Controllers/0-Torque/Dummy out';
pt(20).paramname = 'InitialOutput';
pt(20).class     = 'vector';
pt(20).nrows     = 1;
pt(20).ncols     = 6;
pt(20).subsource = 'SS_DOUBLE';
pt(20).ndims     = '2';
pt(20).size      = '[]';
pt(20).isStruct  = false;
pt(20).symbol     = 'MARCH_v1_5_P.Dummyout_Y0';
pt(20).baseaddr   = '&MARCH_v1_5_P.Dummyout_Y0[0]';
pt(20).dtname     = 'real_T';



  
pt(21).blockname = 'Controllers/0-Torque/Constant';
pt(21).paramname = 'Value';
pt(21).class     = 'vector';
pt(21).nrows     = 1;
pt(21).ncols     = 6;
pt(21).subsource = 'SS_DOUBLE';
pt(21).ndims     = '2';
pt(21).size      = '[]';
pt(21).isStruct  = false;
pt(21).symbol     = 'MARCH_v1_5_P.Constant_Value';
pt(21).baseaddr   = '&MARCH_v1_5_P.Constant_Value[0]';
pt(21).dtname     = 'real_T';



  
pt(22).blockname = 'Controllers/Continuous Gait/joint Angles';
pt(22).paramname = 'InitialOutput';
pt(22).class     = 'scalar';
pt(22).nrows     = 1;
pt(22).ncols     = 1;
pt(22).subsource = 'SS_DOUBLE';
pt(22).ndims     = '2';
pt(22).size      = '[]';
pt(22).isStruct  = false;
pt(22).symbol     = 'MARCH_v1_5_P.jointAngles_Y0';
pt(22).baseaddr   = '&MARCH_v1_5_P.jointAngles_Y0';
pt(22).dtname     = 'real_T';



  
pt(23).blockname = 'Controllers/Continuous Gait/done';
pt(23).paramname = 'InitialOutput';
pt(23).class     = 'scalar';
pt(23).nrows     = 1;
pt(23).ncols     = 1;
pt(23).subsource = 'SS_DOUBLE';
pt(23).ndims     = '2';
pt(23).size      = '[]';
pt(23).isStruct  = false;
pt(23).symbol     = 'MARCH_v1_5_P.done_Y0';
pt(23).baseaddr   = '&MARCH_v1_5_P.done_Y0';
pt(23).dtname     = 'real_T';



  
pt(24).blockname = 'Controllers/Continuous Gait/base';
pt(24).paramname = 'InitialOutput';
pt(24).class     = 'scalar';
pt(24).nrows     = 1;
pt(24).ncols     = 1;
pt(24).subsource = 'SS_DOUBLE';
pt(24).ndims     = '2';
pt(24).size      = '[]';
pt(24).isStruct  = false;
pt(24).symbol     = 'MARCH_v1_5_P.base_Y0';
pt(24).baseaddr   = '&MARCH_v1_5_P.base_Y0';
pt(24).dtname     = 'real_T';



  
pt(25).blockname = 'Controllers/Continuous Gait/Step Height';
pt(25).paramname = 'Value';
pt(25).class     = 'scalar';
pt(25).nrows     = 1;
pt(25).ncols     = 1;
pt(25).subsource = 'SS_DOUBLE';
pt(25).ndims     = '2';
pt(25).size      = '[]';
pt(25).isStruct  = false;
pt(25).symbol     = 'MARCH_v1_5_P.StepHeight_Value';
pt(25).baseaddr   = '&MARCH_v1_5_P.StepHeight_Value';
pt(25).dtname     = 'real_T';



  
pt(26).blockname = 'Controllers/Continuous Gait/Step Length';
pt(26).paramname = 'Value';
pt(26).class     = 'scalar';
pt(26).nrows     = 1;
pt(26).ncols     = 1;
pt(26).subsource = 'SS_DOUBLE';
pt(26).ndims     = '2';
pt(26).size      = '[]';
pt(26).isStruct  = false;
pt(26).symbol     = 'MARCH_v1_5_P.StepLength_Value';
pt(26).baseaddr   = '&MARCH_v1_5_P.StepLength_Value';
pt(26).dtname     = 'real_T';



  
pt(27).blockname = 'Controllers/Continuous Gait/torso_z';
pt(27).paramname = 'Value';
pt(27).class     = 'scalar';
pt(27).nrows     = 1;
pt(27).ncols     = 1;
pt(27).subsource = 'SS_DOUBLE';
pt(27).ndims     = '2';
pt(27).size      = '[]';
pt(27).isStruct  = false;
pt(27).symbol     = 'MARCH_v1_5_P.torso_z_Value';
pt(27).baseaddr   = '&MARCH_v1_5_P.torso_z_Value';
pt(27).dtname     = 'real_T';



  
pt(28).blockname = 'Controllers/Continuous Gait/Delay';
pt(28).paramname = 'DelayLength';
pt(28).class     = 'scalar';
pt(28).nrows     = 1;
pt(28).ncols     = 1;
pt(28).subsource = 'SS_UINT32';
pt(28).ndims     = '2';
pt(28).size      = '[]';
pt(28).isStruct  = false;
pt(28).symbol     = 'MARCH_v1_5_P.Delay_DelayLength';
pt(28).baseaddr   = '&MARCH_v1_5_P.Delay_DelayLength';
pt(28).dtname     = 'uint32_T';



  
pt(29).blockname = 'Controllers/Continuous Gait/Delay';
pt(29).paramname = 'InitialCondition';
pt(29).class     = 'scalar';
pt(29).nrows     = 1;
pt(29).ncols     = 1;
pt(29).subsource = 'SS_DOUBLE';
pt(29).ndims     = '2';
pt(29).size      = '[]';
pt(29).isStruct  = false;
pt(29).symbol     = 'MARCH_v1_5_P.Delay_InitialCondition';
pt(29).baseaddr   = '&MARCH_v1_5_P.Delay_InitialCondition';
pt(29).dtname     = 'real_T';



  
pt(30).blockname = 'Controllers/Hold/q_out';
pt(30).paramname = 'InitialOutput';
pt(30).class     = 'scalar';
pt(30).nrows     = 1;
pt(30).ncols     = 1;
pt(30).subsource = 'SS_DOUBLE';
pt(30).ndims     = '2';
pt(30).size      = '[]';
pt(30).isStruct  = false;
pt(30).symbol     = 'MARCH_v1_5_P.q_out_Y0';
pt(30).baseaddr   = '&MARCH_v1_5_P.q_out_Y0';
pt(30).dtname     = 'real_T';



  
pt(31).blockname = 'Controllers/Hold/Constant';
pt(31).paramname = 'Value';
pt(31).class     = 'scalar';
pt(31).nrows     = 1;
pt(31).ncols     = 1;
pt(31).subsource = 'SS_DOUBLE';
pt(31).ndims     = '2';
pt(31).size      = '[]';
pt(31).isStruct  = false;
pt(31).symbol     = 'MARCH_v1_5_P.Constant_Value_e';
pt(31).baseaddr   = '&MARCH_v1_5_P.Constant_Value_e';
pt(31).dtname     = 'real_T';



  
pt(32).blockname = 'Controllers/Point & Go/joint Angles';
pt(32).paramname = 'InitialOutput';
pt(32).class     = 'scalar';
pt(32).nrows     = 1;
pt(32).ncols     = 1;
pt(32).subsource = 'SS_DOUBLE';
pt(32).ndims     = '2';
pt(32).size      = '[]';
pt(32).isStruct  = false;
pt(32).symbol     = 'MARCH_v1_5_P.jointAngles_Y0_l';
pt(32).baseaddr   = '&MARCH_v1_5_P.jointAngles_Y0_l';
pt(32).dtname     = 'real_T';



  
pt(33).blockname = 'Controllers/Point & Go/stop ';
pt(33).paramname = 'Value';
pt(33).class     = 'scalar';
pt(33).nrows     = 1;
pt(33).ncols     = 1;
pt(33).subsource = 'SS_DOUBLE';
pt(33).ndims     = '2';
pt(33).size      = '[]';
pt(33).isStruct  = false;
pt(33).symbol     = 'MARCH_v1_5_P.stop_Value';
pt(33).baseaddr   = '&MARCH_v1_5_P.stop_Value';
pt(33).dtname     = 'real_T';



  
pt(34).blockname = 'Controllers/SitDown/joint Angles';
pt(34).paramname = 'InitialOutput';
pt(34).class     = 'scalar';
pt(34).nrows     = 1;
pt(34).ncols     = 1;
pt(34).subsource = 'SS_DOUBLE';
pt(34).ndims     = '2';
pt(34).size      = '[]';
pt(34).isStruct  = false;
pt(34).symbol     = 'MARCH_v1_5_P.jointAngles_Y0_c';
pt(34).baseaddr   = '&MARCH_v1_5_P.jointAngles_Y0_c';
pt(34).dtname     = 'real_T';



  
pt(35).blockname = 'Controllers/SitDown/Constant';
pt(35).paramname = 'Value';
pt(35).class     = 'vector';
pt(35).nrows     = 1;
pt(35).ncols     = 6;
pt(35).subsource = 'SS_DOUBLE';
pt(35).ndims     = '2';
pt(35).size      = '[]';
pt(35).isStruct  = false;
pt(35).symbol     = 'MARCH_v1_5_P.Constant_Value_f';
pt(35).baseaddr   = '&MARCH_v1_5_P.Constant_Value_f[0]';
pt(35).dtname     = 'real_T';



  
pt(36).blockname = 'Controllers/Stairs/joint Angles';
pt(36).paramname = 'InitialOutput';
pt(36).class     = 'scalar';
pt(36).nrows     = 1;
pt(36).ncols     = 1;
pt(36).subsource = 'SS_DOUBLE';
pt(36).ndims     = '2';
pt(36).size      = '[]';
pt(36).isStruct  = false;
pt(36).symbol     = 'MARCH_v1_5_P.jointAngles_Y0_i';
pt(36).baseaddr   = '&MARCH_v1_5_P.jointAngles_Y0_i';
pt(36).dtname     = 'real_T';



  
pt(37).blockname = 'Controllers/Stairs/action c';
pt(37).paramname = 'Value';
pt(37).class     = 'scalar';
pt(37).nrows     = 1;
pt(37).ncols     = 1;
pt(37).subsource = 'SS_DOUBLE';
pt(37).ndims     = '2';
pt(37).size      = '[]';
pt(37).isStruct  = false;
pt(37).symbol     = 'MARCH_v1_5_P.actionc_Value';
pt(37).baseaddr   = '&MARCH_v1_5_P.actionc_Value';
pt(37).dtname     = 'real_T';



  
pt(38).blockname = 'Controllers/Stairs/base c';
pt(38).paramname = 'Value';
pt(38).class     = 'scalar';
pt(38).nrows     = 1;
pt(38).ncols     = 1;
pt(38).subsource = 'SS_DOUBLE';
pt(38).ndims     = '2';
pt(38).size      = '[]';
pt(38).isStruct  = false;
pt(38).symbol     = 'MARCH_v1_5_P.basec_Value';
pt(38).baseaddr   = '&MARCH_v1_5_P.basec_Value';
pt(38).dtname     = 'real_T';



  
pt(39).blockname = 'Controllers/Stairs/torso_delta';
pt(39).paramname = 'Value';
pt(39).class     = 'vector';
pt(39).nrows     = 1;
pt(39).ncols     = 3;
pt(39).subsource = 'SS_DOUBLE';
pt(39).ndims     = '2';
pt(39).size      = '[]';
pt(39).isStruct  = false;
pt(39).symbol     = 'MARCH_v1_5_P.torso_delta_Value';
pt(39).baseaddr   = '&MARCH_v1_5_P.torso_delta_Value[0]';
pt(39).dtname     = 'real_T';



  
pt(40).blockname = 'Controllers/StandUp/joint Angles';
pt(40).paramname = 'InitialOutput';
pt(40).class     = 'scalar';
pt(40).nrows     = 1;
pt(40).ncols     = 1;
pt(40).subsource = 'SS_DOUBLE';
pt(40).ndims     = '2';
pt(40).size      = '[]';
pt(40).isStruct  = false;
pt(40).symbol     = 'MARCH_v1_5_P.jointAngles_Y0_e';
pt(40).baseaddr   = '&MARCH_v1_5_P.jointAngles_Y0_e';
pt(40).dtname     = 'real_T';



  
pt(41).blockname = 'Controllers/StandUp/done';
pt(41).paramname = 'InitialOutput';
pt(41).class     = 'scalar';
pt(41).nrows     = 1;
pt(41).ncols     = 1;
pt(41).subsource = 'SS_DOUBLE';
pt(41).ndims     = '2';
pt(41).size      = '[]';
pt(41).isStruct  = false;
pt(41).symbol     = 'MARCH_v1_5_P.done_Y0_n';
pt(41).baseaddr   = '&MARCH_v1_5_P.done_Y0_n';
pt(41).dtname     = 'real_T';



  
pt(42).blockname = 'Controllers/StandUp/Constant';
pt(42).paramname = 'Value';
pt(42).class     = 'vector';
pt(42).nrows     = 1;
pt(42).ncols     = 6;
pt(42).subsource = 'SS_DOUBLE';
pt(42).ndims     = '2';
pt(42).size      = '[]';
pt(42).isStruct  = false;
pt(42).symbol     = 'MARCH_v1_5_P.Constant_Value_j';
pt(42).baseaddr   = '&MARCH_v1_5_P.Constant_Value_j[0]';
pt(42).dtname     = 'real_T';



  
pt(43).blockname = 'Controllers/Walking/joint Angles';
pt(43).paramname = 'InitialOutput';
pt(43).class     = 'scalar';
pt(43).nrows     = 1;
pt(43).ncols     = 1;
pt(43).subsource = 'SS_DOUBLE';
pt(43).ndims     = '2';
pt(43).size      = '[]';
pt(43).isStruct  = false;
pt(43).symbol     = 'MARCH_v1_5_P.jointAngles_Y0_ef';
pt(43).baseaddr   = '&MARCH_v1_5_P.jointAngles_Y0_ef';
pt(43).dtname     = 'real_T';



  
pt(44).blockname = 'Controllers/Walking/done';
pt(44).paramname = 'InitialOutput';
pt(44).class     = 'scalar';
pt(44).nrows     = 1;
pt(44).ncols     = 1;
pt(44).subsource = 'SS_DOUBLE';
pt(44).ndims     = '2';
pt(44).size      = '[]';
pt(44).isStruct  = false;
pt(44).symbol     = 'MARCH_v1_5_P.done_Y0_h';
pt(44).baseaddr   = '&MARCH_v1_5_P.done_Y0_h';
pt(44).dtname     = 'real_T';



  
pt(45).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive1';
pt(45).paramname = 'P1';
pt(45).class     = 'vector';
pt(45).nrows     = 1;
pt(45).ncols     = 22;
pt(45).subsource = 'SS_DOUBLE';
pt(45).ndims     = '2';
pt(45).size      = '[]';
pt(45).isStruct  = false;
pt(45).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive1_P1';
pt(45).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive1_P1[0]';
pt(45).dtname     = 'real_T';



  
pt(46).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive1';
pt(46).paramname = 'P2';
pt(46).class     = 'scalar';
pt(46).nrows     = 1;
pt(46).ncols     = 1;
pt(46).subsource = 'SS_DOUBLE';
pt(46).ndims     = '2';
pt(46).size      = '[]';
pt(46).isStruct  = false;
pt(46).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive1_P2';
pt(46).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive1_P2';
pt(46).dtname     = 'real_T';



  
pt(47).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive1';
pt(47).paramname = 'P3';
pt(47).class     = 'scalar';
pt(47).nrows     = 1;
pt(47).ncols     = 1;
pt(47).subsource = 'SS_DOUBLE';
pt(47).ndims     = '2';
pt(47).size      = '[]';
pt(47).isStruct  = false;
pt(47).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive1_P3';
pt(47).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive1_P3';
pt(47).dtname     = 'real_T';



  
pt(48).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive1';
pt(48).paramname = 'P4';
pt(48).class     = 'scalar';
pt(48).nrows     = 1;
pt(48).ncols     = 1;
pt(48).subsource = 'SS_DOUBLE';
pt(48).ndims     = '2';
pt(48).size      = '[]';
pt(48).isStruct  = false;
pt(48).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive1_P4';
pt(48).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive1_P4';
pt(48).dtname     = 'real_T';



  
pt(49).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive1';
pt(49).paramname = 'P5';
pt(49).class     = 'scalar';
pt(49).nrows     = 1;
pt(49).ncols     = 1;
pt(49).subsource = 'SS_DOUBLE';
pt(49).ndims     = '2';
pt(49).size      = '[]';
pt(49).isStruct  = false;
pt(49).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive1_P5';
pt(49).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive1_P5';
pt(49).dtname     = 'real_T';



  
pt(50).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive1';
pt(50).paramname = 'P6';
pt(50).class     = 'scalar';
pt(50).nrows     = 1;
pt(50).ncols     = 1;
pt(50).subsource = 'SS_DOUBLE';
pt(50).ndims     = '2';
pt(50).size      = '[]';
pt(50).isStruct  = false;
pt(50).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive1_P6';
pt(50).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive1_P6';
pt(50).dtname     = 'real_T';



  
pt(51).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive1';
pt(51).paramname = 'P7';
pt(51).class     = 'scalar';
pt(51).nrows     = 1;
pt(51).ncols     = 1;
pt(51).subsource = 'SS_DOUBLE';
pt(51).ndims     = '2';
pt(51).size      = '[]';
pt(51).isStruct  = false;
pt(51).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive1_P7';
pt(51).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive1_P7';
pt(51).dtname     = 'real_T';



  
pt(52).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive2';
pt(52).paramname = 'P1';
pt(52).class     = 'vector';
pt(52).nrows     = 1;
pt(52).ncols     = 22;
pt(52).subsource = 'SS_DOUBLE';
pt(52).ndims     = '2';
pt(52).size      = '[]';
pt(52).isStruct  = false;
pt(52).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive2_P1';
pt(52).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive2_P1[0]';
pt(52).dtname     = 'real_T';



  
pt(53).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive2';
pt(53).paramname = 'P2';
pt(53).class     = 'scalar';
pt(53).nrows     = 1;
pt(53).ncols     = 1;
pt(53).subsource = 'SS_DOUBLE';
pt(53).ndims     = '2';
pt(53).size      = '[]';
pt(53).isStruct  = false;
pt(53).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive2_P2';
pt(53).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive2_P2';
pt(53).dtname     = 'real_T';



  
pt(54).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive2';
pt(54).paramname = 'P3';
pt(54).class     = 'scalar';
pt(54).nrows     = 1;
pt(54).ncols     = 1;
pt(54).subsource = 'SS_DOUBLE';
pt(54).ndims     = '2';
pt(54).size      = '[]';
pt(54).isStruct  = false;
pt(54).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive2_P3';
pt(54).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive2_P3';
pt(54).dtname     = 'real_T';



  
pt(55).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive2';
pt(55).paramname = 'P4';
pt(55).class     = 'scalar';
pt(55).nrows     = 1;
pt(55).ncols     = 1;
pt(55).subsource = 'SS_DOUBLE';
pt(55).ndims     = '2';
pt(55).size      = '[]';
pt(55).isStruct  = false;
pt(55).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive2_P4';
pt(55).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive2_P4';
pt(55).dtname     = 'real_T';



  
pt(56).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive2';
pt(56).paramname = 'P5';
pt(56).class     = 'scalar';
pt(56).nrows     = 1;
pt(56).ncols     = 1;
pt(56).subsource = 'SS_DOUBLE';
pt(56).ndims     = '2';
pt(56).size      = '[]';
pt(56).isStruct  = false;
pt(56).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive2_P5';
pt(56).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive2_P5';
pt(56).dtname     = 'real_T';



  
pt(57).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive2';
pt(57).paramname = 'P6';
pt(57).class     = 'scalar';
pt(57).nrows     = 1;
pt(57).ncols     = 1;
pt(57).subsource = 'SS_DOUBLE';
pt(57).ndims     = '2';
pt(57).size      = '[]';
pt(57).isStruct  = false;
pt(57).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive2_P6';
pt(57).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive2_P6';
pt(57).dtname     = 'real_T';



  
pt(58).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive2';
pt(58).paramname = 'P7';
pt(58).class     = 'scalar';
pt(58).nrows     = 1;
pt(58).ncols     = 1;
pt(58).subsource = 'SS_DOUBLE';
pt(58).ndims     = '2';
pt(58).size      = '[]';
pt(58).isStruct  = false;
pt(58).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive2_P7';
pt(58).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive2_P7';
pt(58).dtname     = 'real_T';



  
pt(59).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive3';
pt(59).paramname = 'P1';
pt(59).class     = 'vector';
pt(59).nrows     = 1;
pt(59).ncols     = 22;
pt(59).subsource = 'SS_DOUBLE';
pt(59).ndims     = '2';
pt(59).size      = '[]';
pt(59).isStruct  = false;
pt(59).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive3_P1';
pt(59).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive3_P1[0]';
pt(59).dtname     = 'real_T';



  
pt(60).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive3';
pt(60).paramname = 'P2';
pt(60).class     = 'scalar';
pt(60).nrows     = 1;
pt(60).ncols     = 1;
pt(60).subsource = 'SS_DOUBLE';
pt(60).ndims     = '2';
pt(60).size      = '[]';
pt(60).isStruct  = false;
pt(60).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive3_P2';
pt(60).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive3_P2';
pt(60).dtname     = 'real_T';



  
pt(61).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive3';
pt(61).paramname = 'P3';
pt(61).class     = 'scalar';
pt(61).nrows     = 1;
pt(61).ncols     = 1;
pt(61).subsource = 'SS_DOUBLE';
pt(61).ndims     = '2';
pt(61).size      = '[]';
pt(61).isStruct  = false;
pt(61).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive3_P3';
pt(61).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive3_P3';
pt(61).dtname     = 'real_T';



  
pt(62).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive3';
pt(62).paramname = 'P4';
pt(62).class     = 'scalar';
pt(62).nrows     = 1;
pt(62).ncols     = 1;
pt(62).subsource = 'SS_DOUBLE';
pt(62).ndims     = '2';
pt(62).size      = '[]';
pt(62).isStruct  = false;
pt(62).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive3_P4';
pt(62).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive3_P4';
pt(62).dtname     = 'real_T';



  
pt(63).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive3';
pt(63).paramname = 'P5';
pt(63).class     = 'scalar';
pt(63).nrows     = 1;
pt(63).ncols     = 1;
pt(63).subsource = 'SS_DOUBLE';
pt(63).ndims     = '2';
pt(63).size      = '[]';
pt(63).isStruct  = false;
pt(63).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive3_P5';
pt(63).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive3_P5';
pt(63).dtname     = 'real_T';



  
pt(64).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive3';
pt(64).paramname = 'P6';
pt(64).class     = 'scalar';
pt(64).nrows     = 1;
pt(64).ncols     = 1;
pt(64).subsource = 'SS_DOUBLE';
pt(64).ndims     = '2';
pt(64).size      = '[]';
pt(64).isStruct  = false;
pt(64).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive3_P6';
pt(64).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive3_P6';
pt(64).dtname     = 'real_T';



  
pt(65).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive3';
pt(65).paramname = 'P7';
pt(65).class     = 'scalar';
pt(65).nrows     = 1;
pt(65).ncols     = 1;
pt(65).subsource = 'SS_DOUBLE';
pt(65).ndims     = '2';
pt(65).size      = '[]';
pt(65).isStruct  = false;
pt(65).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive3_P7';
pt(65).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive3_P7';
pt(65).dtname     = 'real_T';



  
pt(66).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive4';
pt(66).paramname = 'P1';
pt(66).class     = 'vector';
pt(66).nrows     = 1;
pt(66).ncols     = 22;
pt(66).subsource = 'SS_DOUBLE';
pt(66).ndims     = '2';
pt(66).size      = '[]';
pt(66).isStruct  = false;
pt(66).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive4_P1';
pt(66).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive4_P1[0]';
pt(66).dtname     = 'real_T';



  
pt(67).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive4';
pt(67).paramname = 'P2';
pt(67).class     = 'scalar';
pt(67).nrows     = 1;
pt(67).ncols     = 1;
pt(67).subsource = 'SS_DOUBLE';
pt(67).ndims     = '2';
pt(67).size      = '[]';
pt(67).isStruct  = false;
pt(67).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive4_P2';
pt(67).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive4_P2';
pt(67).dtname     = 'real_T';



  
pt(68).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive4';
pt(68).paramname = 'P3';
pt(68).class     = 'scalar';
pt(68).nrows     = 1;
pt(68).ncols     = 1;
pt(68).subsource = 'SS_DOUBLE';
pt(68).ndims     = '2';
pt(68).size      = '[]';
pt(68).isStruct  = false;
pt(68).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive4_P3';
pt(68).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive4_P3';
pt(68).dtname     = 'real_T';



  
pt(69).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive4';
pt(69).paramname = 'P4';
pt(69).class     = 'scalar';
pt(69).nrows     = 1;
pt(69).ncols     = 1;
pt(69).subsource = 'SS_DOUBLE';
pt(69).ndims     = '2';
pt(69).size      = '[]';
pt(69).isStruct  = false;
pt(69).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive4_P4';
pt(69).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive4_P4';
pt(69).dtname     = 'real_T';



  
pt(70).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive4';
pt(70).paramname = 'P5';
pt(70).class     = 'scalar';
pt(70).nrows     = 1;
pt(70).ncols     = 1;
pt(70).subsource = 'SS_DOUBLE';
pt(70).ndims     = '2';
pt(70).size      = '[]';
pt(70).isStruct  = false;
pt(70).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive4_P5';
pt(70).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive4_P5';
pt(70).dtname     = 'real_T';



  
pt(71).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive4';
pt(71).paramname = 'P6';
pt(71).class     = 'scalar';
pt(71).nrows     = 1;
pt(71).ncols     = 1;
pt(71).subsource = 'SS_DOUBLE';
pt(71).ndims     = '2';
pt(71).size      = '[]';
pt(71).isStruct  = false;
pt(71).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive4_P6';
pt(71).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive4_P6';
pt(71).dtname     = 'real_T';



  
pt(72).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive4';
pt(72).paramname = 'P7';
pt(72).class     = 'scalar';
pt(72).nrows     = 1;
pt(72).ncols     = 1;
pt(72).subsource = 'SS_DOUBLE';
pt(72).ndims     = '2';
pt(72).size      = '[]';
pt(72).isStruct  = false;
pt(72).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive4_P7';
pt(72).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive4_P7';
pt(72).dtname     = 'real_T';



  
pt(73).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive5';
pt(73).paramname = 'P1';
pt(73).class     = 'vector';
pt(73).nrows     = 1;
pt(73).ncols     = 22;
pt(73).subsource = 'SS_DOUBLE';
pt(73).ndims     = '2';
pt(73).size      = '[]';
pt(73).isStruct  = false;
pt(73).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive5_P1';
pt(73).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive5_P1[0]';
pt(73).dtname     = 'real_T';



  
pt(74).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive5';
pt(74).paramname = 'P2';
pt(74).class     = 'scalar';
pt(74).nrows     = 1;
pt(74).ncols     = 1;
pt(74).subsource = 'SS_DOUBLE';
pt(74).ndims     = '2';
pt(74).size      = '[]';
pt(74).isStruct  = false;
pt(74).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive5_P2';
pt(74).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive5_P2';
pt(74).dtname     = 'real_T';



  
pt(75).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive5';
pt(75).paramname = 'P3';
pt(75).class     = 'scalar';
pt(75).nrows     = 1;
pt(75).ncols     = 1;
pt(75).subsource = 'SS_DOUBLE';
pt(75).ndims     = '2';
pt(75).size      = '[]';
pt(75).isStruct  = false;
pt(75).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive5_P3';
pt(75).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive5_P3';
pt(75).dtname     = 'real_T';



  
pt(76).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive5';
pt(76).paramname = 'P4';
pt(76).class     = 'scalar';
pt(76).nrows     = 1;
pt(76).ncols     = 1;
pt(76).subsource = 'SS_DOUBLE';
pt(76).ndims     = '2';
pt(76).size      = '[]';
pt(76).isStruct  = false;
pt(76).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive5_P4';
pt(76).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive5_P4';
pt(76).dtname     = 'real_T';



  
pt(77).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive5';
pt(77).paramname = 'P5';
pt(77).class     = 'scalar';
pt(77).nrows     = 1;
pt(77).ncols     = 1;
pt(77).subsource = 'SS_DOUBLE';
pt(77).ndims     = '2';
pt(77).size      = '[]';
pt(77).isStruct  = false;
pt(77).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive5_P5';
pt(77).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive5_P5';
pt(77).dtname     = 'real_T';



  
pt(78).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive5';
pt(78).paramname = 'P6';
pt(78).class     = 'scalar';
pt(78).nrows     = 1;
pt(78).ncols     = 1;
pt(78).subsource = 'SS_DOUBLE';
pt(78).ndims     = '2';
pt(78).size      = '[]';
pt(78).isStruct  = false;
pt(78).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive5_P6';
pt(78).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive5_P6';
pt(78).dtname     = 'real_T';



  
pt(79).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive5';
pt(79).paramname = 'P7';
pt(79).class     = 'scalar';
pt(79).nrows     = 1;
pt(79).ncols     = 1;
pt(79).subsource = 'SS_DOUBLE';
pt(79).ndims     = '2';
pt(79).size      = '[]';
pt(79).isStruct  = false;
pt(79).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive5_P7';
pt(79).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive5_P7';
pt(79).dtname     = 'real_T';



  
pt(80).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive7';
pt(80).paramname = 'P1';
pt(80).class     = 'vector';
pt(80).nrows     = 1;
pt(80).ncols     = 22;
pt(80).subsource = 'SS_DOUBLE';
pt(80).ndims     = '2';
pt(80).size      = '[]';
pt(80).isStruct  = false;
pt(80).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive7_P1';
pt(80).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive7_P1[0]';
pt(80).dtname     = 'real_T';



  
pt(81).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive7';
pt(81).paramname = 'P2';
pt(81).class     = 'scalar';
pt(81).nrows     = 1;
pt(81).ncols     = 1;
pt(81).subsource = 'SS_DOUBLE';
pt(81).ndims     = '2';
pt(81).size      = '[]';
pt(81).isStruct  = false;
pt(81).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive7_P2';
pt(81).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive7_P2';
pt(81).dtname     = 'real_T';



  
pt(82).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive7';
pt(82).paramname = 'P3';
pt(82).class     = 'scalar';
pt(82).nrows     = 1;
pt(82).ncols     = 1;
pt(82).subsource = 'SS_DOUBLE';
pt(82).ndims     = '2';
pt(82).size      = '[]';
pt(82).isStruct  = false;
pt(82).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive7_P3';
pt(82).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive7_P3';
pt(82).dtname     = 'real_T';



  
pt(83).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive7';
pt(83).paramname = 'P4';
pt(83).class     = 'scalar';
pt(83).nrows     = 1;
pt(83).ncols     = 1;
pt(83).subsource = 'SS_DOUBLE';
pt(83).ndims     = '2';
pt(83).size      = '[]';
pt(83).isStruct  = false;
pt(83).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive7_P4';
pt(83).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive7_P4';
pt(83).dtname     = 'real_T';



  
pt(84).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive7';
pt(84).paramname = 'P5';
pt(84).class     = 'scalar';
pt(84).nrows     = 1;
pt(84).ncols     = 1;
pt(84).subsource = 'SS_DOUBLE';
pt(84).ndims     = '2';
pt(84).size      = '[]';
pt(84).isStruct  = false;
pt(84).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive7_P5';
pt(84).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive7_P5';
pt(84).dtname     = 'real_T';



  
pt(85).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive7';
pt(85).paramname = 'P6';
pt(85).class     = 'scalar';
pt(85).nrows     = 1;
pt(85).ncols     = 1;
pt(85).subsource = 'SS_DOUBLE';
pt(85).ndims     = '2';
pt(85).size      = '[]';
pt(85).isStruct  = false;
pt(85).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive7_P6';
pt(85).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive7_P6';
pt(85).dtname     = 'real_T';



  
pt(86).blockname = 'Data Logging/Motor encoder values/EtherCAT PDO Receive7';
pt(86).paramname = 'P7';
pt(86).class     = 'scalar';
pt(86).nrows     = 1;
pt(86).ncols     = 1;
pt(86).subsource = 'SS_DOUBLE';
pt(86).ndims     = '2';
pt(86).size      = '[]';
pt(86).isStruct  = false;
pt(86).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive7_P7';
pt(86).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive7_P7';
pt(86).dtname     = 'real_T';



  
pt(87).blockname = 'Data Logging/motor velocity values/Constant';
pt(87).paramname = 'Value';
pt(87).class     = 'scalar';
pt(87).nrows     = 1;
pt(87).ncols     = 1;
pt(87).subsource = 'SS_DOUBLE';
pt(87).ndims     = '2';
pt(87).size      = '[]';
pt(87).isStruct  = false;
pt(87).symbol     = 'MARCH_v1_5_P.Constant_Value_d';
pt(87).baseaddr   = '&MARCH_v1_5_P.Constant_Value_d';
pt(87).dtname     = 'real_T';



  
pt(88).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive1';
pt(88).paramname = 'P1';
pt(88).class     = 'vector';
pt(88).nrows     = 1;
pt(88).ncols     = 25;
pt(88).subsource = 'SS_DOUBLE';
pt(88).ndims     = '2';
pt(88).size      = '[]';
pt(88).isStruct  = false;
pt(88).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive1_P1_p';
pt(88).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive1_P1_p[0]';
pt(88).dtname     = 'real_T';



  
pt(89).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive1';
pt(89).paramname = 'P2';
pt(89).class     = 'scalar';
pt(89).nrows     = 1;
pt(89).ncols     = 1;
pt(89).subsource = 'SS_DOUBLE';
pt(89).ndims     = '2';
pt(89).size      = '[]';
pt(89).isStruct  = false;
pt(89).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive1_P2_j';
pt(89).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive1_P2_j';
pt(89).dtname     = 'real_T';



  
pt(90).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive1';
pt(90).paramname = 'P3';
pt(90).class     = 'scalar';
pt(90).nrows     = 1;
pt(90).ncols     = 1;
pt(90).subsource = 'SS_DOUBLE';
pt(90).ndims     = '2';
pt(90).size      = '[]';
pt(90).isStruct  = false;
pt(90).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive1_P3_g';
pt(90).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive1_P3_g';
pt(90).dtname     = 'real_T';



  
pt(91).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive1';
pt(91).paramname = 'P4';
pt(91).class     = 'scalar';
pt(91).nrows     = 1;
pt(91).ncols     = 1;
pt(91).subsource = 'SS_DOUBLE';
pt(91).ndims     = '2';
pt(91).size      = '[]';
pt(91).isStruct  = false;
pt(91).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive1_P4_a';
pt(91).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive1_P4_a';
pt(91).dtname     = 'real_T';



  
pt(92).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive1';
pt(92).paramname = 'P5';
pt(92).class     = 'scalar';
pt(92).nrows     = 1;
pt(92).ncols     = 1;
pt(92).subsource = 'SS_DOUBLE';
pt(92).ndims     = '2';
pt(92).size      = '[]';
pt(92).isStruct  = false;
pt(92).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive1_P5_g';
pt(92).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive1_P5_g';
pt(92).dtname     = 'real_T';



  
pt(93).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive1';
pt(93).paramname = 'P6';
pt(93).class     = 'scalar';
pt(93).nrows     = 1;
pt(93).ncols     = 1;
pt(93).subsource = 'SS_DOUBLE';
pt(93).ndims     = '2';
pt(93).size      = '[]';
pt(93).isStruct  = false;
pt(93).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive1_P6_m';
pt(93).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive1_P6_m';
pt(93).dtname     = 'real_T';



  
pt(94).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive1';
pt(94).paramname = 'P7';
pt(94).class     = 'scalar';
pt(94).nrows     = 1;
pt(94).ncols     = 1;
pt(94).subsource = 'SS_DOUBLE';
pt(94).ndims     = '2';
pt(94).size      = '[]';
pt(94).isStruct  = false;
pt(94).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive1_P7_i';
pt(94).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive1_P7_i';
pt(94).dtname     = 'real_T';



  
pt(95).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive2';
pt(95).paramname = 'P1';
pt(95).class     = 'vector';
pt(95).nrows     = 1;
pt(95).ncols     = 25;
pt(95).subsource = 'SS_DOUBLE';
pt(95).ndims     = '2';
pt(95).size      = '[]';
pt(95).isStruct  = false;
pt(95).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive2_P1_e';
pt(95).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive2_P1_e[0]';
pt(95).dtname     = 'real_T';



  
pt(96).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive2';
pt(96).paramname = 'P2';
pt(96).class     = 'scalar';
pt(96).nrows     = 1;
pt(96).ncols     = 1;
pt(96).subsource = 'SS_DOUBLE';
pt(96).ndims     = '2';
pt(96).size      = '[]';
pt(96).isStruct  = false;
pt(96).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive2_P2_o';
pt(96).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive2_P2_o';
pt(96).dtname     = 'real_T';



  
pt(97).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive2';
pt(97).paramname = 'P3';
pt(97).class     = 'scalar';
pt(97).nrows     = 1;
pt(97).ncols     = 1;
pt(97).subsource = 'SS_DOUBLE';
pt(97).ndims     = '2';
pt(97).size      = '[]';
pt(97).isStruct  = false;
pt(97).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive2_P3_p';
pt(97).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive2_P3_p';
pt(97).dtname     = 'real_T';



  
pt(98).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive2';
pt(98).paramname = 'P4';
pt(98).class     = 'scalar';
pt(98).nrows     = 1;
pt(98).ncols     = 1;
pt(98).subsource = 'SS_DOUBLE';
pt(98).ndims     = '2';
pt(98).size      = '[]';
pt(98).isStruct  = false;
pt(98).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive2_P4_l';
pt(98).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive2_P4_l';
pt(98).dtname     = 'real_T';



  
pt(99).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive2';
pt(99).paramname = 'P5';
pt(99).class     = 'scalar';
pt(99).nrows     = 1;
pt(99).ncols     = 1;
pt(99).subsource = 'SS_DOUBLE';
pt(99).ndims     = '2';
pt(99).size      = '[]';
pt(99).isStruct  = false;
pt(99).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive2_P5_m';
pt(99).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive2_P5_m';
pt(99).dtname     = 'real_T';



  
pt(100).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive2';
pt(100).paramname = 'P6';
pt(100).class     = 'scalar';
pt(100).nrows     = 1;
pt(100).ncols     = 1;
pt(100).subsource = 'SS_DOUBLE';
pt(100).ndims     = '2';
pt(100).size      = '[]';
pt(100).isStruct  = false;
pt(100).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive2_P6_n';
pt(100).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive2_P6_n';
pt(100).dtname     = 'real_T';



  
pt(101).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive2';
pt(101).paramname = 'P7';
pt(101).class     = 'scalar';
pt(101).nrows     = 1;
pt(101).ncols     = 1;
pt(101).subsource = 'SS_DOUBLE';
pt(101).ndims     = '2';
pt(101).size      = '[]';
pt(101).isStruct  = false;
pt(101).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive2_P7_d';
pt(101).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive2_P7_d';
pt(101).dtname     = 'real_T';



  
pt(102).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive3';
pt(102).paramname = 'P1';
pt(102).class     = 'vector';
pt(102).nrows     = 1;
pt(102).ncols     = 25;
pt(102).subsource = 'SS_DOUBLE';
pt(102).ndims     = '2';
pt(102).size      = '[]';
pt(102).isStruct  = false;
pt(102).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive3_P1_e';
pt(102).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive3_P1_e[0]';
pt(102).dtname     = 'real_T';



  
pt(103).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive3';
pt(103).paramname = 'P2';
pt(103).class     = 'scalar';
pt(103).nrows     = 1;
pt(103).ncols     = 1;
pt(103).subsource = 'SS_DOUBLE';
pt(103).ndims     = '2';
pt(103).size      = '[]';
pt(103).isStruct  = false;
pt(103).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive3_P2_j';
pt(103).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive3_P2_j';
pt(103).dtname     = 'real_T';



  
pt(104).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive3';
pt(104).paramname = 'P3';
pt(104).class     = 'scalar';
pt(104).nrows     = 1;
pt(104).ncols     = 1;
pt(104).subsource = 'SS_DOUBLE';
pt(104).ndims     = '2';
pt(104).size      = '[]';
pt(104).isStruct  = false;
pt(104).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive3_P3_k';
pt(104).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive3_P3_k';
pt(104).dtname     = 'real_T';



  
pt(105).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive3';
pt(105).paramname = 'P4';
pt(105).class     = 'scalar';
pt(105).nrows     = 1;
pt(105).ncols     = 1;
pt(105).subsource = 'SS_DOUBLE';
pt(105).ndims     = '2';
pt(105).size      = '[]';
pt(105).isStruct  = false;
pt(105).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive3_P4_c';
pt(105).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive3_P4_c';
pt(105).dtname     = 'real_T';



  
pt(106).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive3';
pt(106).paramname = 'P5';
pt(106).class     = 'scalar';
pt(106).nrows     = 1;
pt(106).ncols     = 1;
pt(106).subsource = 'SS_DOUBLE';
pt(106).ndims     = '2';
pt(106).size      = '[]';
pt(106).isStruct  = false;
pt(106).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive3_P5_c';
pt(106).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive3_P5_c';
pt(106).dtname     = 'real_T';



  
pt(107).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive3';
pt(107).paramname = 'P6';
pt(107).class     = 'scalar';
pt(107).nrows     = 1;
pt(107).ncols     = 1;
pt(107).subsource = 'SS_DOUBLE';
pt(107).ndims     = '2';
pt(107).size      = '[]';
pt(107).isStruct  = false;
pt(107).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive3_P6_p';
pt(107).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive3_P6_p';
pt(107).dtname     = 'real_T';



  
pt(108).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive3';
pt(108).paramname = 'P7';
pt(108).class     = 'scalar';
pt(108).nrows     = 1;
pt(108).ncols     = 1;
pt(108).subsource = 'SS_DOUBLE';
pt(108).ndims     = '2';
pt(108).size      = '[]';
pt(108).isStruct  = false;
pt(108).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive3_P7_o';
pt(108).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive3_P7_o';
pt(108).dtname     = 'real_T';



  
pt(109).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive4';
pt(109).paramname = 'P1';
pt(109).class     = 'vector';
pt(109).nrows     = 1;
pt(109).ncols     = 25;
pt(109).subsource = 'SS_DOUBLE';
pt(109).ndims     = '2';
pt(109).size      = '[]';
pt(109).isStruct  = false;
pt(109).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive4_P1_c';
pt(109).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive4_P1_c[0]';
pt(109).dtname     = 'real_T';



  
pt(110).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive4';
pt(110).paramname = 'P2';
pt(110).class     = 'scalar';
pt(110).nrows     = 1;
pt(110).ncols     = 1;
pt(110).subsource = 'SS_DOUBLE';
pt(110).ndims     = '2';
pt(110).size      = '[]';
pt(110).isStruct  = false;
pt(110).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive4_P2_h';
pt(110).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive4_P2_h';
pt(110).dtname     = 'real_T';



  
pt(111).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive4';
pt(111).paramname = 'P3';
pt(111).class     = 'scalar';
pt(111).nrows     = 1;
pt(111).ncols     = 1;
pt(111).subsource = 'SS_DOUBLE';
pt(111).ndims     = '2';
pt(111).size      = '[]';
pt(111).isStruct  = false;
pt(111).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive4_P3_b';
pt(111).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive4_P3_b';
pt(111).dtname     = 'real_T';



  
pt(112).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive4';
pt(112).paramname = 'P4';
pt(112).class     = 'scalar';
pt(112).nrows     = 1;
pt(112).ncols     = 1;
pt(112).subsource = 'SS_DOUBLE';
pt(112).ndims     = '2';
pt(112).size      = '[]';
pt(112).isStruct  = false;
pt(112).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive4_P4_o';
pt(112).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive4_P4_o';
pt(112).dtname     = 'real_T';



  
pt(113).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive4';
pt(113).paramname = 'P5';
pt(113).class     = 'scalar';
pt(113).nrows     = 1;
pt(113).ncols     = 1;
pt(113).subsource = 'SS_DOUBLE';
pt(113).ndims     = '2';
pt(113).size      = '[]';
pt(113).isStruct  = false;
pt(113).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive4_P5_a';
pt(113).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive4_P5_a';
pt(113).dtname     = 'real_T';



  
pt(114).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive4';
pt(114).paramname = 'P6';
pt(114).class     = 'scalar';
pt(114).nrows     = 1;
pt(114).ncols     = 1;
pt(114).subsource = 'SS_DOUBLE';
pt(114).ndims     = '2';
pt(114).size      = '[]';
pt(114).isStruct  = false;
pt(114).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive4_P6_d';
pt(114).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive4_P6_d';
pt(114).dtname     = 'real_T';



  
pt(115).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive4';
pt(115).paramname = 'P7';
pt(115).class     = 'scalar';
pt(115).nrows     = 1;
pt(115).ncols     = 1;
pt(115).subsource = 'SS_DOUBLE';
pt(115).ndims     = '2';
pt(115).size      = '[]';
pt(115).isStruct  = false;
pt(115).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive4_P7_e';
pt(115).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive4_P7_e';
pt(115).dtname     = 'real_T';



  
pt(116).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive5';
pt(116).paramname = 'P1';
pt(116).class     = 'vector';
pt(116).nrows     = 1;
pt(116).ncols     = 25;
pt(116).subsource = 'SS_DOUBLE';
pt(116).ndims     = '2';
pt(116).size      = '[]';
pt(116).isStruct  = false;
pt(116).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive5_P1_k';
pt(116).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive5_P1_k[0]';
pt(116).dtname     = 'real_T';



  
pt(117).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive5';
pt(117).paramname = 'P2';
pt(117).class     = 'scalar';
pt(117).nrows     = 1;
pt(117).ncols     = 1;
pt(117).subsource = 'SS_DOUBLE';
pt(117).ndims     = '2';
pt(117).size      = '[]';
pt(117).isStruct  = false;
pt(117).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive5_P2_p';
pt(117).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive5_P2_p';
pt(117).dtname     = 'real_T';



  
pt(118).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive5';
pt(118).paramname = 'P3';
pt(118).class     = 'scalar';
pt(118).nrows     = 1;
pt(118).ncols     = 1;
pt(118).subsource = 'SS_DOUBLE';
pt(118).ndims     = '2';
pt(118).size      = '[]';
pt(118).isStruct  = false;
pt(118).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive5_P3_c';
pt(118).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive5_P3_c';
pt(118).dtname     = 'real_T';



  
pt(119).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive5';
pt(119).paramname = 'P4';
pt(119).class     = 'scalar';
pt(119).nrows     = 1;
pt(119).ncols     = 1;
pt(119).subsource = 'SS_DOUBLE';
pt(119).ndims     = '2';
pt(119).size      = '[]';
pt(119).isStruct  = false;
pt(119).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive5_P4_p';
pt(119).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive5_P4_p';
pt(119).dtname     = 'real_T';



  
pt(120).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive5';
pt(120).paramname = 'P5';
pt(120).class     = 'scalar';
pt(120).nrows     = 1;
pt(120).ncols     = 1;
pt(120).subsource = 'SS_DOUBLE';
pt(120).ndims     = '2';
pt(120).size      = '[]';
pt(120).isStruct  = false;
pt(120).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive5_P5_a';
pt(120).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive5_P5_a';
pt(120).dtname     = 'real_T';



  
pt(121).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive5';
pt(121).paramname = 'P6';
pt(121).class     = 'scalar';
pt(121).nrows     = 1;
pt(121).ncols     = 1;
pt(121).subsource = 'SS_DOUBLE';
pt(121).ndims     = '2';
pt(121).size      = '[]';
pt(121).isStruct  = false;
pt(121).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive5_P6_a';
pt(121).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive5_P6_a';
pt(121).dtname     = 'real_T';



  
pt(122).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive5';
pt(122).paramname = 'P7';
pt(122).class     = 'scalar';
pt(122).nrows     = 1;
pt(122).ncols     = 1;
pt(122).subsource = 'SS_DOUBLE';
pt(122).ndims     = '2';
pt(122).size      = '[]';
pt(122).isStruct  = false;
pt(122).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive5_P7_g';
pt(122).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive5_P7_g';
pt(122).dtname     = 'real_T';



  
pt(123).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive7';
pt(123).paramname = 'P1';
pt(123).class     = 'vector';
pt(123).nrows     = 1;
pt(123).ncols     = 25;
pt(123).subsource = 'SS_DOUBLE';
pt(123).ndims     = '2';
pt(123).size      = '[]';
pt(123).isStruct  = false;
pt(123).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive7_P1_b';
pt(123).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive7_P1_b[0]';
pt(123).dtname     = 'real_T';



  
pt(124).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive7';
pt(124).paramname = 'P2';
pt(124).class     = 'scalar';
pt(124).nrows     = 1;
pt(124).ncols     = 1;
pt(124).subsource = 'SS_DOUBLE';
pt(124).ndims     = '2';
pt(124).size      = '[]';
pt(124).isStruct  = false;
pt(124).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive7_P2_o';
pt(124).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive7_P2_o';
pt(124).dtname     = 'real_T';



  
pt(125).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive7';
pt(125).paramname = 'P3';
pt(125).class     = 'scalar';
pt(125).nrows     = 1;
pt(125).ncols     = 1;
pt(125).subsource = 'SS_DOUBLE';
pt(125).ndims     = '2';
pt(125).size      = '[]';
pt(125).isStruct  = false;
pt(125).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive7_P3_e';
pt(125).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive7_P3_e';
pt(125).dtname     = 'real_T';



  
pt(126).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive7';
pt(126).paramname = 'P4';
pt(126).class     = 'scalar';
pt(126).nrows     = 1;
pt(126).ncols     = 1;
pt(126).subsource = 'SS_DOUBLE';
pt(126).ndims     = '2';
pt(126).size      = '[]';
pt(126).isStruct  = false;
pt(126).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive7_P4_h';
pt(126).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive7_P4_h';
pt(126).dtname     = 'real_T';



  
pt(127).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive7';
pt(127).paramname = 'P5';
pt(127).class     = 'scalar';
pt(127).nrows     = 1;
pt(127).ncols     = 1;
pt(127).subsource = 'SS_DOUBLE';
pt(127).ndims     = '2';
pt(127).size      = '[]';
pt(127).isStruct  = false;
pt(127).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive7_P5_m';
pt(127).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive7_P5_m';
pt(127).dtname     = 'real_T';



  
pt(128).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive7';
pt(128).paramname = 'P6';
pt(128).class     = 'scalar';
pt(128).nrows     = 1;
pt(128).ncols     = 1;
pt(128).subsource = 'SS_DOUBLE';
pt(128).ndims     = '2';
pt(128).size      = '[]';
pt(128).isStruct  = false;
pt(128).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive7_P6_n';
pt(128).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive7_P6_n';
pt(128).dtname     = 'real_T';



  
pt(129).blockname = 'Data Logging/motor velocity values/EtherCAT PDO Receive7';
pt(129).paramname = 'P7';
pt(129).class     = 'scalar';
pt(129).nrows     = 1;
pt(129).ncols     = 1;
pt(129).subsource = 'SS_DOUBLE';
pt(129).ndims     = '2';
pt(129).size      = '[]';
pt(129).isStruct  = false;
pt(129).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive7_P7_j';
pt(129).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive7_P7_j';
pt(129).dtname     = 'real_T';



  
pt(130).blockname = 'EtherCAT Motor Parameters/LHFE/Constant';
pt(130).paramname = 'Value';
pt(130).class     = 'scalar';
pt(130).nrows     = 1;
pt(130).ncols     = 1;
pt(130).subsource = 'SS_DOUBLE';
pt(130).ndims     = '2';
pt(130).size      = '[]';
pt(130).isStruct  = false;
pt(130).symbol     = 'MARCH_v1_5_P.Constant_Value_ja';
pt(130).baseaddr   = '&MARCH_v1_5_P.Constant_Value_ja';
pt(130).dtname     = 'real_T';



  
pt(131).blockname = 'EtherCAT Motor Parameters/LHFE/Constant5';
pt(131).paramname = 'Value';
pt(131).class     = 'scalar';
pt(131).nrows     = 1;
pt(131).ncols     = 1;
pt(131).subsource = 'SS_UINT32';
pt(131).ndims     = '2';
pt(131).size      = '[]';
pt(131).isStruct  = false;
pt(131).symbol     = 'MARCH_v1_5_P.Constant5_Value';
pt(131).baseaddr   = '&MARCH_v1_5_P.Constant5_Value';
pt(131).dtname     = 'uint32_T';



  
pt(132).blockname = 'EtherCAT Motor Parameters/LHFE/Kd';
pt(132).paramname = 'Value';
pt(132).class     = 'scalar';
pt(132).nrows     = 1;
pt(132).ncols     = 1;
pt(132).subsource = 'SS_DOUBLE';
pt(132).ndims     = '2';
pt(132).size      = '[]';
pt(132).isStruct  = false;
pt(132).symbol     = 'MARCH_v1_5_P.Kd_Value';
pt(132).baseaddr   = '&MARCH_v1_5_P.Kd_Value';
pt(132).dtname     = 'real_T';



  
pt(133).blockname = 'EtherCAT Motor Parameters/LHFE/Ki';
pt(133).paramname = 'Value';
pt(133).class     = 'scalar';
pt(133).nrows     = 1;
pt(133).ncols     = 1;
pt(133).subsource = 'SS_DOUBLE';
pt(133).ndims     = '2';
pt(133).size      = '[]';
pt(133).isStruct  = false;
pt(133).symbol     = 'MARCH_v1_5_P.Ki_Value';
pt(133).baseaddr   = '&MARCH_v1_5_P.Ki_Value';
pt(133).dtname     = 'real_T';



  
pt(134).blockname = 'EtherCAT Motor Parameters/LHFE/Kp';
pt(134).paramname = 'Value';
pt(134).class     = 'scalar';
pt(134).nrows     = 1;
pt(134).ncols     = 1;
pt(134).subsource = 'SS_DOUBLE';
pt(134).ndims     = '2';
pt(134).size      = '[]';
pt(134).isStruct  = false;
pt(134).symbol     = 'MARCH_v1_5_P.Kp_Value';
pt(134).baseaddr   = '&MARCH_v1_5_P.Kp_Value';
pt(134).dtname     = 'real_T';



  
pt(135).blockname = 'EtherCAT Motor Parameters/LHFE/velocity override';
pt(135).paramname = 'Value';
pt(135).class     = 'scalar';
pt(135).nrows     = 1;
pt(135).ncols     = 1;
pt(135).subsource = 'SS_UINT32';
pt(135).ndims     = '2';
pt(135).size      = '[]';
pt(135).isStruct  = false;
pt(135).symbol     = 'MARCH_v1_5_P.velocityoverride_Value';
pt(135).baseaddr   = '&MARCH_v1_5_P.velocityoverride_Value';
pt(135).dtname     = 'uint32_T';



  
pt(136).blockname = 'EtherCAT Motor Parameters/LHFE/velocity setpoint';
pt(136).paramname = 'Value';
pt(136).class     = 'scalar';
pt(136).nrows     = 1;
pt(136).ncols     = 1;
pt(136).subsource = 'SS_INT16';
pt(136).ndims     = '2';
pt(136).size      = '[]';
pt(136).isStruct  = false;
pt(136).symbol     = 'MARCH_v1_5_P.velocitysetpoint_Value';
pt(136).baseaddr   = '&MARCH_v1_5_P.velocitysetpoint_Value';
pt(136).dtname     = 'int16_T';



  
pt(137).blockname = 'EtherCAT Motor Parameters/LHFE/Gain';
pt(137).paramname = 'Gain';
pt(137).class     = 'scalar';
pt(137).nrows     = 1;
pt(137).ncols     = 1;
pt(137).subsource = 'SS_DOUBLE';
pt(137).ndims     = '2';
pt(137).size      = '[]';
pt(137).isStruct  = false;
pt(137).symbol     = 'MARCH_v1_5_P.Gain_Gain';
pt(137).baseaddr   = '&MARCH_v1_5_P.Gain_Gain';
pt(137).dtname     = 'real_T';



  
pt(138).blockname = 'EtherCAT Motor Parameters/LHFE/Gain1';
pt(138).paramname = 'Gain';
pt(138).class     = 'scalar';
pt(138).nrows     = 1;
pt(138).ncols     = 1;
pt(138).subsource = 'SS_DOUBLE';
pt(138).ndims     = '2';
pt(138).size      = '[]';
pt(138).isStruct  = false;
pt(138).symbol     = 'MARCH_v1_5_P.Gain1_Gain';
pt(138).baseaddr   = '&MARCH_v1_5_P.Gain1_Gain';
pt(138).dtname     = 'real_T';



  
pt(139).blockname = 'EtherCAT Motor Parameters/LHFE/Gain2';
pt(139).paramname = 'Gain';
pt(139).class     = 'scalar';
pt(139).nrows     = 1;
pt(139).ncols     = 1;
pt(139).subsource = 'SS_DOUBLE';
pt(139).ndims     = '2';
pt(139).size      = '[]';
pt(139).isStruct  = false;
pt(139).symbol     = 'MARCH_v1_5_P.Gain2_Gain';
pt(139).baseaddr   = '&MARCH_v1_5_P.Gain2_Gain';
pt(139).dtname     = 'real_T';



  
pt(140).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit ';
pt(140).paramname = 'P1';
pt(140).class     = 'vector';
pt(140).nrows     = 1;
pt(140).ncols     = 18;
pt(140).subsource = 'SS_DOUBLE';
pt(140).ndims     = '2';
pt(140).size      = '[]';
pt(140).isStruct  = false;
pt(140).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit_P1';
pt(140).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit_P1[0]';
pt(140).dtname     = 'real_T';



  
pt(141).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit ';
pt(141).paramname = 'P2';
pt(141).class     = 'scalar';
pt(141).nrows     = 1;
pt(141).ncols     = 1;
pt(141).subsource = 'SS_DOUBLE';
pt(141).ndims     = '2';
pt(141).size      = '[]';
pt(141).isStruct  = false;
pt(141).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit_P2';
pt(141).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit_P2';
pt(141).dtname     = 'real_T';



  
pt(142).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit ';
pt(142).paramname = 'P3';
pt(142).class     = 'scalar';
pt(142).nrows     = 1;
pt(142).ncols     = 1;
pt(142).subsource = 'SS_DOUBLE';
pt(142).ndims     = '2';
pt(142).size      = '[]';
pt(142).isStruct  = false;
pt(142).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit_P3';
pt(142).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit_P3';
pt(142).dtname     = 'real_T';



  
pt(143).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit ';
pt(143).paramname = 'P4';
pt(143).class     = 'scalar';
pt(143).nrows     = 1;
pt(143).ncols     = 1;
pt(143).subsource = 'SS_DOUBLE';
pt(143).ndims     = '2';
pt(143).size      = '[]';
pt(143).isStruct  = false;
pt(143).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit_P4';
pt(143).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit_P4';
pt(143).dtname     = 'real_T';



  
pt(144).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit ';
pt(144).paramname = 'P5';
pt(144).class     = 'scalar';
pt(144).nrows     = 1;
pt(144).ncols     = 1;
pt(144).subsource = 'SS_DOUBLE';
pt(144).ndims     = '2';
pt(144).size      = '[]';
pt(144).isStruct  = false;
pt(144).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit_P5';
pt(144).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit_P5';
pt(144).dtname     = 'real_T';



  
pt(145).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit ';
pt(145).paramname = 'P6';
pt(145).class     = 'scalar';
pt(145).nrows     = 1;
pt(145).ncols     = 1;
pt(145).subsource = 'SS_DOUBLE';
pt(145).ndims     = '2';
pt(145).size      = '[]';
pt(145).isStruct  = false;
pt(145).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit_P6';
pt(145).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit_P6';
pt(145).dtname     = 'real_T';



  
pt(146).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit ';
pt(146).paramname = 'P7';
pt(146).class     = 'scalar';
pt(146).nrows     = 1;
pt(146).ncols     = 1;
pt(146).subsource = 'SS_DOUBLE';
pt(146).ndims     = '2';
pt(146).size      = '[]';
pt(146).isStruct  = false;
pt(146).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit_P7';
pt(146).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit_P7';
pt(146).dtname     = 'real_T';



  
pt(147).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit 1';
pt(147).paramname = 'P1';
pt(147).class     = 'vector';
pt(147).nrows     = 1;
pt(147).ncols     = 18;
pt(147).subsource = 'SS_DOUBLE';
pt(147).ndims     = '2';
pt(147).size      = '[]';
pt(147).isStruct  = false;
pt(147).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit1_P1';
pt(147).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit1_P1[0]';
pt(147).dtname     = 'real_T';



  
pt(148).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit 1';
pt(148).paramname = 'P2';
pt(148).class     = 'scalar';
pt(148).nrows     = 1;
pt(148).ncols     = 1;
pt(148).subsource = 'SS_DOUBLE';
pt(148).ndims     = '2';
pt(148).size      = '[]';
pt(148).isStruct  = false;
pt(148).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit1_P2';
pt(148).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit1_P2';
pt(148).dtname     = 'real_T';



  
pt(149).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit 1';
pt(149).paramname = 'P3';
pt(149).class     = 'scalar';
pt(149).nrows     = 1;
pt(149).ncols     = 1;
pt(149).subsource = 'SS_DOUBLE';
pt(149).ndims     = '2';
pt(149).size      = '[]';
pt(149).isStruct  = false;
pt(149).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit1_P3';
pt(149).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit1_P3';
pt(149).dtname     = 'real_T';



  
pt(150).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit 1';
pt(150).paramname = 'P4';
pt(150).class     = 'scalar';
pt(150).nrows     = 1;
pt(150).ncols     = 1;
pt(150).subsource = 'SS_DOUBLE';
pt(150).ndims     = '2';
pt(150).size      = '[]';
pt(150).isStruct  = false;
pt(150).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit1_P4';
pt(150).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit1_P4';
pt(150).dtname     = 'real_T';



  
pt(151).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit 1';
pt(151).paramname = 'P5';
pt(151).class     = 'scalar';
pt(151).nrows     = 1;
pt(151).ncols     = 1;
pt(151).subsource = 'SS_DOUBLE';
pt(151).ndims     = '2';
pt(151).size      = '[]';
pt(151).isStruct  = false;
pt(151).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit1_P5';
pt(151).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit1_P5';
pt(151).dtname     = 'real_T';



  
pt(152).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit 1';
pt(152).paramname = 'P6';
pt(152).class     = 'scalar';
pt(152).nrows     = 1;
pt(152).ncols     = 1;
pt(152).subsource = 'SS_DOUBLE';
pt(152).ndims     = '2';
pt(152).size      = '[]';
pt(152).isStruct  = false;
pt(152).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit1_P6';
pt(152).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit1_P6';
pt(152).dtname     = 'real_T';



  
pt(153).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit 1';
pt(153).paramname = 'P7';
pt(153).class     = 'scalar';
pt(153).nrows     = 1;
pt(153).ncols     = 1;
pt(153).subsource = 'SS_DOUBLE';
pt(153).ndims     = '2';
pt(153).size      = '[]';
pt(153).isStruct  = false;
pt(153).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit1_P7';
pt(153).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit1_P7';
pt(153).dtname     = 'real_T';



  
pt(154).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit 2';
pt(154).paramname = 'P1';
pt(154).class     = 'vector';
pt(154).nrows     = 1;
pt(154).ncols     = 18;
pt(154).subsource = 'SS_DOUBLE';
pt(154).ndims     = '2';
pt(154).size      = '[]';
pt(154).isStruct  = false;
pt(154).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit2_P1';
pt(154).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit2_P1[0]';
pt(154).dtname     = 'real_T';



  
pt(155).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit 2';
pt(155).paramname = 'P2';
pt(155).class     = 'scalar';
pt(155).nrows     = 1;
pt(155).ncols     = 1;
pt(155).subsource = 'SS_DOUBLE';
pt(155).ndims     = '2';
pt(155).size      = '[]';
pt(155).isStruct  = false;
pt(155).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit2_P2';
pt(155).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit2_P2';
pt(155).dtname     = 'real_T';



  
pt(156).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit 2';
pt(156).paramname = 'P3';
pt(156).class     = 'scalar';
pt(156).nrows     = 1;
pt(156).ncols     = 1;
pt(156).subsource = 'SS_DOUBLE';
pt(156).ndims     = '2';
pt(156).size      = '[]';
pt(156).isStruct  = false;
pt(156).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit2_P3';
pt(156).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit2_P3';
pt(156).dtname     = 'real_T';



  
pt(157).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit 2';
pt(157).paramname = 'P4';
pt(157).class     = 'scalar';
pt(157).nrows     = 1;
pt(157).ncols     = 1;
pt(157).subsource = 'SS_DOUBLE';
pt(157).ndims     = '2';
pt(157).size      = '[]';
pt(157).isStruct  = false;
pt(157).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit2_P4';
pt(157).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit2_P4';
pt(157).dtname     = 'real_T';



  
pt(158).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit 2';
pt(158).paramname = 'P5';
pt(158).class     = 'scalar';
pt(158).nrows     = 1;
pt(158).ncols     = 1;
pt(158).subsource = 'SS_DOUBLE';
pt(158).ndims     = '2';
pt(158).size      = '[]';
pt(158).isStruct  = false;
pt(158).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit2_P5';
pt(158).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit2_P5';
pt(158).dtname     = 'real_T';



  
pt(159).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit 2';
pt(159).paramname = 'P6';
pt(159).class     = 'scalar';
pt(159).nrows     = 1;
pt(159).ncols     = 1;
pt(159).subsource = 'SS_DOUBLE';
pt(159).ndims     = '2';
pt(159).size      = '[]';
pt(159).isStruct  = false;
pt(159).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit2_P6';
pt(159).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit2_P6';
pt(159).dtname     = 'real_T';



  
pt(160).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit 2';
pt(160).paramname = 'P7';
pt(160).class     = 'scalar';
pt(160).nrows     = 1;
pt(160).ncols     = 1;
pt(160).subsource = 'SS_DOUBLE';
pt(160).ndims     = '2';
pt(160).size      = '[]';
pt(160).isStruct  = false;
pt(160).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit2_P7';
pt(160).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit2_P7';
pt(160).dtname     = 'real_T';



  
pt(161).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit 3';
pt(161).paramname = 'P1';
pt(161).class     = 'vector';
pt(161).nrows     = 1;
pt(161).ncols     = 18;
pt(161).subsource = 'SS_DOUBLE';
pt(161).ndims     = '2';
pt(161).size      = '[]';
pt(161).isStruct  = false;
pt(161).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit3_P1';
pt(161).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit3_P1[0]';
pt(161).dtname     = 'real_T';



  
pt(162).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit 3';
pt(162).paramname = 'P2';
pt(162).class     = 'scalar';
pt(162).nrows     = 1;
pt(162).ncols     = 1;
pt(162).subsource = 'SS_DOUBLE';
pt(162).ndims     = '2';
pt(162).size      = '[]';
pt(162).isStruct  = false;
pt(162).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit3_P2';
pt(162).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit3_P2';
pt(162).dtname     = 'real_T';



  
pt(163).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit 3';
pt(163).paramname = 'P3';
pt(163).class     = 'scalar';
pt(163).nrows     = 1;
pt(163).ncols     = 1;
pt(163).subsource = 'SS_DOUBLE';
pt(163).ndims     = '2';
pt(163).size      = '[]';
pt(163).isStruct  = false;
pt(163).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit3_P3';
pt(163).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit3_P3';
pt(163).dtname     = 'real_T';



  
pt(164).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit 3';
pt(164).paramname = 'P4';
pt(164).class     = 'scalar';
pt(164).nrows     = 1;
pt(164).ncols     = 1;
pt(164).subsource = 'SS_DOUBLE';
pt(164).ndims     = '2';
pt(164).size      = '[]';
pt(164).isStruct  = false;
pt(164).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit3_P4';
pt(164).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit3_P4';
pt(164).dtname     = 'real_T';



  
pt(165).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit 3';
pt(165).paramname = 'P5';
pt(165).class     = 'scalar';
pt(165).nrows     = 1;
pt(165).ncols     = 1;
pt(165).subsource = 'SS_DOUBLE';
pt(165).ndims     = '2';
pt(165).size      = '[]';
pt(165).isStruct  = false;
pt(165).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit3_P5';
pt(165).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit3_P5';
pt(165).dtname     = 'real_T';



  
pt(166).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit 3';
pt(166).paramname = 'P6';
pt(166).class     = 'scalar';
pt(166).nrows     = 1;
pt(166).ncols     = 1;
pt(166).subsource = 'SS_DOUBLE';
pt(166).ndims     = '2';
pt(166).size      = '[]';
pt(166).isStruct  = false;
pt(166).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit3_P6';
pt(166).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit3_P6';
pt(166).dtname     = 'real_T';



  
pt(167).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit 3';
pt(167).paramname = 'P7';
pt(167).class     = 'scalar';
pt(167).nrows     = 1;
pt(167).ncols     = 1;
pt(167).subsource = 'SS_DOUBLE';
pt(167).ndims     = '2';
pt(167).size      = '[]';
pt(167).isStruct  = false;
pt(167).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit3_P7';
pt(167).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit3_P7';
pt(167).dtname     = 'real_T';



  
pt(168).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit 4';
pt(168).paramname = 'P1';
pt(168).class     = 'vector';
pt(168).nrows     = 1;
pt(168).ncols     = 18;
pt(168).subsource = 'SS_DOUBLE';
pt(168).ndims     = '2';
pt(168).size      = '[]';
pt(168).isStruct  = false;
pt(168).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit4_P1';
pt(168).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit4_P1[0]';
pt(168).dtname     = 'real_T';



  
pt(169).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit 4';
pt(169).paramname = 'P2';
pt(169).class     = 'scalar';
pt(169).nrows     = 1;
pt(169).ncols     = 1;
pt(169).subsource = 'SS_DOUBLE';
pt(169).ndims     = '2';
pt(169).size      = '[]';
pt(169).isStruct  = false;
pt(169).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit4_P2';
pt(169).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit4_P2';
pt(169).dtname     = 'real_T';



  
pt(170).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit 4';
pt(170).paramname = 'P3';
pt(170).class     = 'scalar';
pt(170).nrows     = 1;
pt(170).ncols     = 1;
pt(170).subsource = 'SS_DOUBLE';
pt(170).ndims     = '2';
pt(170).size      = '[]';
pt(170).isStruct  = false;
pt(170).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit4_P3';
pt(170).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit4_P3';
pt(170).dtname     = 'real_T';



  
pt(171).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit 4';
pt(171).paramname = 'P4';
pt(171).class     = 'scalar';
pt(171).nrows     = 1;
pt(171).ncols     = 1;
pt(171).subsource = 'SS_DOUBLE';
pt(171).ndims     = '2';
pt(171).size      = '[]';
pt(171).isStruct  = false;
pt(171).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit4_P4';
pt(171).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit4_P4';
pt(171).dtname     = 'real_T';



  
pt(172).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit 4';
pt(172).paramname = 'P5';
pt(172).class     = 'scalar';
pt(172).nrows     = 1;
pt(172).ncols     = 1;
pt(172).subsource = 'SS_DOUBLE';
pt(172).ndims     = '2';
pt(172).size      = '[]';
pt(172).isStruct  = false;
pt(172).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit4_P5';
pt(172).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit4_P5';
pt(172).dtname     = 'real_T';



  
pt(173).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit 4';
pt(173).paramname = 'P6';
pt(173).class     = 'scalar';
pt(173).nrows     = 1;
pt(173).ncols     = 1;
pt(173).subsource = 'SS_DOUBLE';
pt(173).ndims     = '2';
pt(173).size      = '[]';
pt(173).isStruct  = false;
pt(173).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit4_P6';
pt(173).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit4_P6';
pt(173).dtname     = 'real_T';



  
pt(174).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit 4';
pt(174).paramname = 'P7';
pt(174).class     = 'scalar';
pt(174).nrows     = 1;
pt(174).ncols     = 1;
pt(174).subsource = 'SS_DOUBLE';
pt(174).ndims     = '2';
pt(174).size      = '[]';
pt(174).isStruct  = false;
pt(174).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit4_P7';
pt(174).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit4_P7';
pt(174).dtname     = 'real_T';



  
pt(175).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit 5';
pt(175).paramname = 'P1';
pt(175).class     = 'vector';
pt(175).nrows     = 1;
pt(175).ncols     = 18;
pt(175).subsource = 'SS_DOUBLE';
pt(175).ndims     = '2';
pt(175).size      = '[]';
pt(175).isStruct  = false;
pt(175).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit5_P1';
pt(175).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit5_P1[0]';
pt(175).dtname     = 'real_T';



  
pt(176).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit 5';
pt(176).paramname = 'P2';
pt(176).class     = 'scalar';
pt(176).nrows     = 1;
pt(176).ncols     = 1;
pt(176).subsource = 'SS_DOUBLE';
pt(176).ndims     = '2';
pt(176).size      = '[]';
pt(176).isStruct  = false;
pt(176).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit5_P2';
pt(176).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit5_P2';
pt(176).dtname     = 'real_T';



  
pt(177).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit 5';
pt(177).paramname = 'P3';
pt(177).class     = 'scalar';
pt(177).nrows     = 1;
pt(177).ncols     = 1;
pt(177).subsource = 'SS_DOUBLE';
pt(177).ndims     = '2';
pt(177).size      = '[]';
pt(177).isStruct  = false;
pt(177).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit5_P3';
pt(177).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit5_P3';
pt(177).dtname     = 'real_T';



  
pt(178).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit 5';
pt(178).paramname = 'P4';
pt(178).class     = 'scalar';
pt(178).nrows     = 1;
pt(178).ncols     = 1;
pt(178).subsource = 'SS_DOUBLE';
pt(178).ndims     = '2';
pt(178).size      = '[]';
pt(178).isStruct  = false;
pt(178).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit5_P4';
pt(178).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit5_P4';
pt(178).dtname     = 'real_T';



  
pt(179).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit 5';
pt(179).paramname = 'P5';
pt(179).class     = 'scalar';
pt(179).nrows     = 1;
pt(179).ncols     = 1;
pt(179).subsource = 'SS_DOUBLE';
pt(179).ndims     = '2';
pt(179).size      = '[]';
pt(179).isStruct  = false;
pt(179).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit5_P5';
pt(179).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit5_P5';
pt(179).dtname     = 'real_T';



  
pt(180).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit 5';
pt(180).paramname = 'P6';
pt(180).class     = 'scalar';
pt(180).nrows     = 1;
pt(180).ncols     = 1;
pt(180).subsource = 'SS_DOUBLE';
pt(180).ndims     = '2';
pt(180).size      = '[]';
pt(180).isStruct  = false;
pt(180).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit5_P6';
pt(180).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit5_P6';
pt(180).dtname     = 'real_T';



  
pt(181).blockname = 'EtherCAT Motor Parameters/LHFE/EtherCAT PDO Transmit 5';
pt(181).paramname = 'P7';
pt(181).class     = 'scalar';
pt(181).nrows     = 1;
pt(181).ncols     = 1;
pt(181).subsource = 'SS_DOUBLE';
pt(181).ndims     = '2';
pt(181).size      = '[]';
pt(181).isStruct  = false;
pt(181).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit5_P7';
pt(181).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit5_P7';
pt(181).dtname     = 'real_T';



  
pt(182).blockname = 'EtherCAT Motor Parameters/LKFE/Constant';
pt(182).paramname = 'Value';
pt(182).class     = 'scalar';
pt(182).nrows     = 1;
pt(182).ncols     = 1;
pt(182).subsource = 'SS_DOUBLE';
pt(182).ndims     = '2';
pt(182).size      = '[]';
pt(182).isStruct  = false;
pt(182).symbol     = 'MARCH_v1_5_P.Constant_Value_b';
pt(182).baseaddr   = '&MARCH_v1_5_P.Constant_Value_b';
pt(182).dtname     = 'real_T';



  
pt(183).blockname = 'EtherCAT Motor Parameters/LKFE/Constant5';
pt(183).paramname = 'Value';
pt(183).class     = 'scalar';
pt(183).nrows     = 1;
pt(183).ncols     = 1;
pt(183).subsource = 'SS_UINT32';
pt(183).ndims     = '2';
pt(183).size      = '[]';
pt(183).isStruct  = false;
pt(183).symbol     = 'MARCH_v1_5_P.Constant5_Value_e';
pt(183).baseaddr   = '&MARCH_v1_5_P.Constant5_Value_e';
pt(183).dtname     = 'uint32_T';



  
pt(184).blockname = 'EtherCAT Motor Parameters/LKFE/Kd';
pt(184).paramname = 'Value';
pt(184).class     = 'scalar';
pt(184).nrows     = 1;
pt(184).ncols     = 1;
pt(184).subsource = 'SS_DOUBLE';
pt(184).ndims     = '2';
pt(184).size      = '[]';
pt(184).isStruct  = false;
pt(184).symbol     = 'MARCH_v1_5_P.Kd_Value_n';
pt(184).baseaddr   = '&MARCH_v1_5_P.Kd_Value_n';
pt(184).dtname     = 'real_T';



  
pt(185).blockname = 'EtherCAT Motor Parameters/LKFE/Ki';
pt(185).paramname = 'Value';
pt(185).class     = 'scalar';
pt(185).nrows     = 1;
pt(185).ncols     = 1;
pt(185).subsource = 'SS_DOUBLE';
pt(185).ndims     = '2';
pt(185).size      = '[]';
pt(185).isStruct  = false;
pt(185).symbol     = 'MARCH_v1_5_P.Ki_Value_a';
pt(185).baseaddr   = '&MARCH_v1_5_P.Ki_Value_a';
pt(185).dtname     = 'real_T';



  
pt(186).blockname = 'EtherCAT Motor Parameters/LKFE/Kp';
pt(186).paramname = 'Value';
pt(186).class     = 'scalar';
pt(186).nrows     = 1;
pt(186).ncols     = 1;
pt(186).subsource = 'SS_DOUBLE';
pt(186).ndims     = '2';
pt(186).size      = '[]';
pt(186).isStruct  = false;
pt(186).symbol     = 'MARCH_v1_5_P.Kp_Value_l';
pt(186).baseaddr   = '&MARCH_v1_5_P.Kp_Value_l';
pt(186).dtname     = 'real_T';



  
pt(187).blockname = 'EtherCAT Motor Parameters/LKFE/velocity override';
pt(187).paramname = 'Value';
pt(187).class     = 'scalar';
pt(187).nrows     = 1;
pt(187).ncols     = 1;
pt(187).subsource = 'SS_UINT32';
pt(187).ndims     = '2';
pt(187).size      = '[]';
pt(187).isStruct  = false;
pt(187).symbol     = 'MARCH_v1_5_P.velocityoverride_Value_n';
pt(187).baseaddr   = '&MARCH_v1_5_P.velocityoverride_Value_n';
pt(187).dtname     = 'uint32_T';



  
pt(188).blockname = 'EtherCAT Motor Parameters/LKFE/velocity setpoint';
pt(188).paramname = 'Value';
pt(188).class     = 'scalar';
pt(188).nrows     = 1;
pt(188).ncols     = 1;
pt(188).subsource = 'SS_INT16';
pt(188).ndims     = '2';
pt(188).size      = '[]';
pt(188).isStruct  = false;
pt(188).symbol     = 'MARCH_v1_5_P.velocitysetpoint_Value_i';
pt(188).baseaddr   = '&MARCH_v1_5_P.velocitysetpoint_Value_i';
pt(188).dtname     = 'int16_T';



  
pt(189).blockname = 'EtherCAT Motor Parameters/LKFE/Gain';
pt(189).paramname = 'Gain';
pt(189).class     = 'scalar';
pt(189).nrows     = 1;
pt(189).ncols     = 1;
pt(189).subsource = 'SS_DOUBLE';
pt(189).ndims     = '2';
pt(189).size      = '[]';
pt(189).isStruct  = false;
pt(189).symbol     = 'MARCH_v1_5_P.Gain_Gain_f';
pt(189).baseaddr   = '&MARCH_v1_5_P.Gain_Gain_f';
pt(189).dtname     = 'real_T';



  
pt(190).blockname = 'EtherCAT Motor Parameters/LKFE/Gain1';
pt(190).paramname = 'Gain';
pt(190).class     = 'scalar';
pt(190).nrows     = 1;
pt(190).ncols     = 1;
pt(190).subsource = 'SS_DOUBLE';
pt(190).ndims     = '2';
pt(190).size      = '[]';
pt(190).isStruct  = false;
pt(190).symbol     = 'MARCH_v1_5_P.Gain1_Gain_k';
pt(190).baseaddr   = '&MARCH_v1_5_P.Gain1_Gain_k';
pt(190).dtname     = 'real_T';



  
pt(191).blockname = 'EtherCAT Motor Parameters/LKFE/Gain2';
pt(191).paramname = 'Gain';
pt(191).class     = 'scalar';
pt(191).nrows     = 1;
pt(191).ncols     = 1;
pt(191).subsource = 'SS_DOUBLE';
pt(191).ndims     = '2';
pt(191).size      = '[]';
pt(191).isStruct  = false;
pt(191).symbol     = 'MARCH_v1_5_P.Gain2_Gain_j';
pt(191).baseaddr   = '&MARCH_v1_5_P.Gain2_Gain_j';
pt(191).dtname     = 'real_T';



  
pt(192).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit ';
pt(192).paramname = 'P1';
pt(192).class     = 'vector';
pt(192).nrows     = 1;
pt(192).ncols     = 18;
pt(192).subsource = 'SS_DOUBLE';
pt(192).ndims     = '2';
pt(192).size      = '[]';
pt(192).isStruct  = false;
pt(192).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit_P1_n';
pt(192).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit_P1_n[0]';
pt(192).dtname     = 'real_T';



  
pt(193).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit ';
pt(193).paramname = 'P2';
pt(193).class     = 'scalar';
pt(193).nrows     = 1;
pt(193).ncols     = 1;
pt(193).subsource = 'SS_DOUBLE';
pt(193).ndims     = '2';
pt(193).size      = '[]';
pt(193).isStruct  = false;
pt(193).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit_P2_n';
pt(193).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit_P2_n';
pt(193).dtname     = 'real_T';



  
pt(194).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit ';
pt(194).paramname = 'P3';
pt(194).class     = 'scalar';
pt(194).nrows     = 1;
pt(194).ncols     = 1;
pt(194).subsource = 'SS_DOUBLE';
pt(194).ndims     = '2';
pt(194).size      = '[]';
pt(194).isStruct  = false;
pt(194).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit_P3_a';
pt(194).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit_P3_a';
pt(194).dtname     = 'real_T';



  
pt(195).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit ';
pt(195).paramname = 'P4';
pt(195).class     = 'scalar';
pt(195).nrows     = 1;
pt(195).ncols     = 1;
pt(195).subsource = 'SS_DOUBLE';
pt(195).ndims     = '2';
pt(195).size      = '[]';
pt(195).isStruct  = false;
pt(195).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit_P4_c';
pt(195).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit_P4_c';
pt(195).dtname     = 'real_T';



  
pt(196).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit ';
pt(196).paramname = 'P5';
pt(196).class     = 'scalar';
pt(196).nrows     = 1;
pt(196).ncols     = 1;
pt(196).subsource = 'SS_DOUBLE';
pt(196).ndims     = '2';
pt(196).size      = '[]';
pt(196).isStruct  = false;
pt(196).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit_P5_g';
pt(196).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit_P5_g';
pt(196).dtname     = 'real_T';



  
pt(197).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit ';
pt(197).paramname = 'P6';
pt(197).class     = 'scalar';
pt(197).nrows     = 1;
pt(197).ncols     = 1;
pt(197).subsource = 'SS_DOUBLE';
pt(197).ndims     = '2';
pt(197).size      = '[]';
pt(197).isStruct  = false;
pt(197).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit_P6_o';
pt(197).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit_P6_o';
pt(197).dtname     = 'real_T';



  
pt(198).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit ';
pt(198).paramname = 'P7';
pt(198).class     = 'scalar';
pt(198).nrows     = 1;
pt(198).ncols     = 1;
pt(198).subsource = 'SS_DOUBLE';
pt(198).ndims     = '2';
pt(198).size      = '[]';
pt(198).isStruct  = false;
pt(198).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit_P7_i';
pt(198).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit_P7_i';
pt(198).dtname     = 'real_T';



  
pt(199).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit 1';
pt(199).paramname = 'P1';
pt(199).class     = 'vector';
pt(199).nrows     = 1;
pt(199).ncols     = 18;
pt(199).subsource = 'SS_DOUBLE';
pt(199).ndims     = '2';
pt(199).size      = '[]';
pt(199).isStruct  = false;
pt(199).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit1_P1_m';
pt(199).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit1_P1_m[0]';
pt(199).dtname     = 'real_T';



  
pt(200).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit 1';
pt(200).paramname = 'P2';
pt(200).class     = 'scalar';
pt(200).nrows     = 1;
pt(200).ncols     = 1;
pt(200).subsource = 'SS_DOUBLE';
pt(200).ndims     = '2';
pt(200).size      = '[]';
pt(200).isStruct  = false;
pt(200).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit1_P2_l';
pt(200).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit1_P2_l';
pt(200).dtname     = 'real_T';



  
pt(201).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit 1';
pt(201).paramname = 'P3';
pt(201).class     = 'scalar';
pt(201).nrows     = 1;
pt(201).ncols     = 1;
pt(201).subsource = 'SS_DOUBLE';
pt(201).ndims     = '2';
pt(201).size      = '[]';
pt(201).isStruct  = false;
pt(201).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit1_P3_i';
pt(201).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit1_P3_i';
pt(201).dtname     = 'real_T';



  
pt(202).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit 1';
pt(202).paramname = 'P4';
pt(202).class     = 'scalar';
pt(202).nrows     = 1;
pt(202).ncols     = 1;
pt(202).subsource = 'SS_DOUBLE';
pt(202).ndims     = '2';
pt(202).size      = '[]';
pt(202).isStruct  = false;
pt(202).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit1_P4_f';
pt(202).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit1_P4_f';
pt(202).dtname     = 'real_T';



  
pt(203).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit 1';
pt(203).paramname = 'P5';
pt(203).class     = 'scalar';
pt(203).nrows     = 1;
pt(203).ncols     = 1;
pt(203).subsource = 'SS_DOUBLE';
pt(203).ndims     = '2';
pt(203).size      = '[]';
pt(203).isStruct  = false;
pt(203).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit1_P5_h';
pt(203).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit1_P5_h';
pt(203).dtname     = 'real_T';



  
pt(204).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit 1';
pt(204).paramname = 'P6';
pt(204).class     = 'scalar';
pt(204).nrows     = 1;
pt(204).ncols     = 1;
pt(204).subsource = 'SS_DOUBLE';
pt(204).ndims     = '2';
pt(204).size      = '[]';
pt(204).isStruct  = false;
pt(204).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit1_P6_g';
pt(204).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit1_P6_g';
pt(204).dtname     = 'real_T';



  
pt(205).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit 1';
pt(205).paramname = 'P7';
pt(205).class     = 'scalar';
pt(205).nrows     = 1;
pt(205).ncols     = 1;
pt(205).subsource = 'SS_DOUBLE';
pt(205).ndims     = '2';
pt(205).size      = '[]';
pt(205).isStruct  = false;
pt(205).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit1_P7_j';
pt(205).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit1_P7_j';
pt(205).dtname     = 'real_T';



  
pt(206).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit 2';
pt(206).paramname = 'P1';
pt(206).class     = 'vector';
pt(206).nrows     = 1;
pt(206).ncols     = 18;
pt(206).subsource = 'SS_DOUBLE';
pt(206).ndims     = '2';
pt(206).size      = '[]';
pt(206).isStruct  = false;
pt(206).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit2_P1_j';
pt(206).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit2_P1_j[0]';
pt(206).dtname     = 'real_T';



  
pt(207).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit 2';
pt(207).paramname = 'P2';
pt(207).class     = 'scalar';
pt(207).nrows     = 1;
pt(207).ncols     = 1;
pt(207).subsource = 'SS_DOUBLE';
pt(207).ndims     = '2';
pt(207).size      = '[]';
pt(207).isStruct  = false;
pt(207).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit2_P2_g';
pt(207).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit2_P2_g';
pt(207).dtname     = 'real_T';



  
pt(208).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit 2';
pt(208).paramname = 'P3';
pt(208).class     = 'scalar';
pt(208).nrows     = 1;
pt(208).ncols     = 1;
pt(208).subsource = 'SS_DOUBLE';
pt(208).ndims     = '2';
pt(208).size      = '[]';
pt(208).isStruct  = false;
pt(208).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit2_P3_f';
pt(208).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit2_P3_f';
pt(208).dtname     = 'real_T';



  
pt(209).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit 2';
pt(209).paramname = 'P4';
pt(209).class     = 'scalar';
pt(209).nrows     = 1;
pt(209).ncols     = 1;
pt(209).subsource = 'SS_DOUBLE';
pt(209).ndims     = '2';
pt(209).size      = '[]';
pt(209).isStruct  = false;
pt(209).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit2_P4_m';
pt(209).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit2_P4_m';
pt(209).dtname     = 'real_T';



  
pt(210).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit 2';
pt(210).paramname = 'P5';
pt(210).class     = 'scalar';
pt(210).nrows     = 1;
pt(210).ncols     = 1;
pt(210).subsource = 'SS_DOUBLE';
pt(210).ndims     = '2';
pt(210).size      = '[]';
pt(210).isStruct  = false;
pt(210).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit2_P5_g';
pt(210).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit2_P5_g';
pt(210).dtname     = 'real_T';



  
pt(211).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit 2';
pt(211).paramname = 'P6';
pt(211).class     = 'scalar';
pt(211).nrows     = 1;
pt(211).ncols     = 1;
pt(211).subsource = 'SS_DOUBLE';
pt(211).ndims     = '2';
pt(211).size      = '[]';
pt(211).isStruct  = false;
pt(211).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit2_P6_d';
pt(211).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit2_P6_d';
pt(211).dtname     = 'real_T';



  
pt(212).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit 2';
pt(212).paramname = 'P7';
pt(212).class     = 'scalar';
pt(212).nrows     = 1;
pt(212).ncols     = 1;
pt(212).subsource = 'SS_DOUBLE';
pt(212).ndims     = '2';
pt(212).size      = '[]';
pt(212).isStruct  = false;
pt(212).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit2_P7_p';
pt(212).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit2_P7_p';
pt(212).dtname     = 'real_T';



  
pt(213).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit 3';
pt(213).paramname = 'P1';
pt(213).class     = 'vector';
pt(213).nrows     = 1;
pt(213).ncols     = 18;
pt(213).subsource = 'SS_DOUBLE';
pt(213).ndims     = '2';
pt(213).size      = '[]';
pt(213).isStruct  = false;
pt(213).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit3_P1_j';
pt(213).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit3_P1_j[0]';
pt(213).dtname     = 'real_T';



  
pt(214).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit 3';
pt(214).paramname = 'P2';
pt(214).class     = 'scalar';
pt(214).nrows     = 1;
pt(214).ncols     = 1;
pt(214).subsource = 'SS_DOUBLE';
pt(214).ndims     = '2';
pt(214).size      = '[]';
pt(214).isStruct  = false;
pt(214).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit3_P2_j';
pt(214).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit3_P2_j';
pt(214).dtname     = 'real_T';



  
pt(215).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit 3';
pt(215).paramname = 'P3';
pt(215).class     = 'scalar';
pt(215).nrows     = 1;
pt(215).ncols     = 1;
pt(215).subsource = 'SS_DOUBLE';
pt(215).ndims     = '2';
pt(215).size      = '[]';
pt(215).isStruct  = false;
pt(215).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit3_P3_g';
pt(215).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit3_P3_g';
pt(215).dtname     = 'real_T';



  
pt(216).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit 3';
pt(216).paramname = 'P4';
pt(216).class     = 'scalar';
pt(216).nrows     = 1;
pt(216).ncols     = 1;
pt(216).subsource = 'SS_DOUBLE';
pt(216).ndims     = '2';
pt(216).size      = '[]';
pt(216).isStruct  = false;
pt(216).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit3_P4_e';
pt(216).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit3_P4_e';
pt(216).dtname     = 'real_T';



  
pt(217).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit 3';
pt(217).paramname = 'P5';
pt(217).class     = 'scalar';
pt(217).nrows     = 1;
pt(217).ncols     = 1;
pt(217).subsource = 'SS_DOUBLE';
pt(217).ndims     = '2';
pt(217).size      = '[]';
pt(217).isStruct  = false;
pt(217).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit3_P5_b';
pt(217).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit3_P5_b';
pt(217).dtname     = 'real_T';



  
pt(218).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit 3';
pt(218).paramname = 'P6';
pt(218).class     = 'scalar';
pt(218).nrows     = 1;
pt(218).ncols     = 1;
pt(218).subsource = 'SS_DOUBLE';
pt(218).ndims     = '2';
pt(218).size      = '[]';
pt(218).isStruct  = false;
pt(218).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit3_P6_o';
pt(218).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit3_P6_o';
pt(218).dtname     = 'real_T';



  
pt(219).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit 3';
pt(219).paramname = 'P7';
pt(219).class     = 'scalar';
pt(219).nrows     = 1;
pt(219).ncols     = 1;
pt(219).subsource = 'SS_DOUBLE';
pt(219).ndims     = '2';
pt(219).size      = '[]';
pt(219).isStruct  = false;
pt(219).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit3_P7_l';
pt(219).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit3_P7_l';
pt(219).dtname     = 'real_T';



  
pt(220).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit 4';
pt(220).paramname = 'P1';
pt(220).class     = 'vector';
pt(220).nrows     = 1;
pt(220).ncols     = 18;
pt(220).subsource = 'SS_DOUBLE';
pt(220).ndims     = '2';
pt(220).size      = '[]';
pt(220).isStruct  = false;
pt(220).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit4_P1_g';
pt(220).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit4_P1_g[0]';
pt(220).dtname     = 'real_T';



  
pt(221).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit 4';
pt(221).paramname = 'P2';
pt(221).class     = 'scalar';
pt(221).nrows     = 1;
pt(221).ncols     = 1;
pt(221).subsource = 'SS_DOUBLE';
pt(221).ndims     = '2';
pt(221).size      = '[]';
pt(221).isStruct  = false;
pt(221).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit4_P2_j';
pt(221).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit4_P2_j';
pt(221).dtname     = 'real_T';



  
pt(222).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit 4';
pt(222).paramname = 'P3';
pt(222).class     = 'scalar';
pt(222).nrows     = 1;
pt(222).ncols     = 1;
pt(222).subsource = 'SS_DOUBLE';
pt(222).ndims     = '2';
pt(222).size      = '[]';
pt(222).isStruct  = false;
pt(222).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit4_P3_j';
pt(222).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit4_P3_j';
pt(222).dtname     = 'real_T';



  
pt(223).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit 4';
pt(223).paramname = 'P4';
pt(223).class     = 'scalar';
pt(223).nrows     = 1;
pt(223).ncols     = 1;
pt(223).subsource = 'SS_DOUBLE';
pt(223).ndims     = '2';
pt(223).size      = '[]';
pt(223).isStruct  = false;
pt(223).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit4_P4_o';
pt(223).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit4_P4_o';
pt(223).dtname     = 'real_T';



  
pt(224).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit 4';
pt(224).paramname = 'P5';
pt(224).class     = 'scalar';
pt(224).nrows     = 1;
pt(224).ncols     = 1;
pt(224).subsource = 'SS_DOUBLE';
pt(224).ndims     = '2';
pt(224).size      = '[]';
pt(224).isStruct  = false;
pt(224).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit4_P5_m';
pt(224).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit4_P5_m';
pt(224).dtname     = 'real_T';



  
pt(225).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit 4';
pt(225).paramname = 'P6';
pt(225).class     = 'scalar';
pt(225).nrows     = 1;
pt(225).ncols     = 1;
pt(225).subsource = 'SS_DOUBLE';
pt(225).ndims     = '2';
pt(225).size      = '[]';
pt(225).isStruct  = false;
pt(225).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit4_P6_f';
pt(225).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit4_P6_f';
pt(225).dtname     = 'real_T';



  
pt(226).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit 4';
pt(226).paramname = 'P7';
pt(226).class     = 'scalar';
pt(226).nrows     = 1;
pt(226).ncols     = 1;
pt(226).subsource = 'SS_DOUBLE';
pt(226).ndims     = '2';
pt(226).size      = '[]';
pt(226).isStruct  = false;
pt(226).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit4_P7_n';
pt(226).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit4_P7_n';
pt(226).dtname     = 'real_T';



  
pt(227).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit 5';
pt(227).paramname = 'P1';
pt(227).class     = 'vector';
pt(227).nrows     = 1;
pt(227).ncols     = 18;
pt(227).subsource = 'SS_DOUBLE';
pt(227).ndims     = '2';
pt(227).size      = '[]';
pt(227).isStruct  = false;
pt(227).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit5_P1_o';
pt(227).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit5_P1_o[0]';
pt(227).dtname     = 'real_T';



  
pt(228).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit 5';
pt(228).paramname = 'P2';
pt(228).class     = 'scalar';
pt(228).nrows     = 1;
pt(228).ncols     = 1;
pt(228).subsource = 'SS_DOUBLE';
pt(228).ndims     = '2';
pt(228).size      = '[]';
pt(228).isStruct  = false;
pt(228).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit5_P2_c';
pt(228).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit5_P2_c';
pt(228).dtname     = 'real_T';



  
pt(229).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit 5';
pt(229).paramname = 'P3';
pt(229).class     = 'scalar';
pt(229).nrows     = 1;
pt(229).ncols     = 1;
pt(229).subsource = 'SS_DOUBLE';
pt(229).ndims     = '2';
pt(229).size      = '[]';
pt(229).isStruct  = false;
pt(229).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit5_P3_f';
pt(229).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit5_P3_f';
pt(229).dtname     = 'real_T';



  
pt(230).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit 5';
pt(230).paramname = 'P4';
pt(230).class     = 'scalar';
pt(230).nrows     = 1;
pt(230).ncols     = 1;
pt(230).subsource = 'SS_DOUBLE';
pt(230).ndims     = '2';
pt(230).size      = '[]';
pt(230).isStruct  = false;
pt(230).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit5_P4_a';
pt(230).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit5_P4_a';
pt(230).dtname     = 'real_T';



  
pt(231).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit 5';
pt(231).paramname = 'P5';
pt(231).class     = 'scalar';
pt(231).nrows     = 1;
pt(231).ncols     = 1;
pt(231).subsource = 'SS_DOUBLE';
pt(231).ndims     = '2';
pt(231).size      = '[]';
pt(231).isStruct  = false;
pt(231).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit5_P5_e';
pt(231).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit5_P5_e';
pt(231).dtname     = 'real_T';



  
pt(232).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit 5';
pt(232).paramname = 'P6';
pt(232).class     = 'scalar';
pt(232).nrows     = 1;
pt(232).ncols     = 1;
pt(232).subsource = 'SS_DOUBLE';
pt(232).ndims     = '2';
pt(232).size      = '[]';
pt(232).isStruct  = false;
pt(232).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit5_P6_c';
pt(232).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit5_P6_c';
pt(232).dtname     = 'real_T';



  
pt(233).blockname = 'EtherCAT Motor Parameters/LKFE/EtherCAT PDO Transmit 5';
pt(233).paramname = 'P7';
pt(233).class     = 'scalar';
pt(233).nrows     = 1;
pt(233).ncols     = 1;
pt(233).subsource = 'SS_DOUBLE';
pt(233).ndims     = '2';
pt(233).size      = '[]';
pt(233).isStruct  = false;
pt(233).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit5_P7_f';
pt(233).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit5_P7_f';
pt(233).dtname     = 'real_T';



  
pt(234).blockname = 'EtherCAT Motor Parameters/RHFE/Constant';
pt(234).paramname = 'Value';
pt(234).class     = 'scalar';
pt(234).nrows     = 1;
pt(234).ncols     = 1;
pt(234).subsource = 'SS_DOUBLE';
pt(234).ndims     = '2';
pt(234).size      = '[]';
pt(234).isStruct  = false;
pt(234).symbol     = 'MARCH_v1_5_P.Constant_Value_p';
pt(234).baseaddr   = '&MARCH_v1_5_P.Constant_Value_p';
pt(234).dtname     = 'real_T';



  
pt(235).blockname = 'EtherCAT Motor Parameters/RHFE/Constant5';
pt(235).paramname = 'Value';
pt(235).class     = 'scalar';
pt(235).nrows     = 1;
pt(235).ncols     = 1;
pt(235).subsource = 'SS_UINT32';
pt(235).ndims     = '2';
pt(235).size      = '[]';
pt(235).isStruct  = false;
pt(235).symbol     = 'MARCH_v1_5_P.Constant5_Value_h';
pt(235).baseaddr   = '&MARCH_v1_5_P.Constant5_Value_h';
pt(235).dtname     = 'uint32_T';



  
pt(236).blockname = 'EtherCAT Motor Parameters/RHFE/Kd';
pt(236).paramname = 'Value';
pt(236).class     = 'scalar';
pt(236).nrows     = 1;
pt(236).ncols     = 1;
pt(236).subsource = 'SS_DOUBLE';
pt(236).ndims     = '2';
pt(236).size      = '[]';
pt(236).isStruct  = false;
pt(236).symbol     = 'MARCH_v1_5_P.Kd_Value_j';
pt(236).baseaddr   = '&MARCH_v1_5_P.Kd_Value_j';
pt(236).dtname     = 'real_T';



  
pt(237).blockname = 'EtherCAT Motor Parameters/RHFE/Ki';
pt(237).paramname = 'Value';
pt(237).class     = 'scalar';
pt(237).nrows     = 1;
pt(237).ncols     = 1;
pt(237).subsource = 'SS_DOUBLE';
pt(237).ndims     = '2';
pt(237).size      = '[]';
pt(237).isStruct  = false;
pt(237).symbol     = 'MARCH_v1_5_P.Ki_Value_p';
pt(237).baseaddr   = '&MARCH_v1_5_P.Ki_Value_p';
pt(237).dtname     = 'real_T';



  
pt(238).blockname = 'EtherCAT Motor Parameters/RHFE/Kp';
pt(238).paramname = 'Value';
pt(238).class     = 'scalar';
pt(238).nrows     = 1;
pt(238).ncols     = 1;
pt(238).subsource = 'SS_DOUBLE';
pt(238).ndims     = '2';
pt(238).size      = '[]';
pt(238).isStruct  = false;
pt(238).symbol     = 'MARCH_v1_5_P.Kp_Value_f';
pt(238).baseaddr   = '&MARCH_v1_5_P.Kp_Value_f';
pt(238).dtname     = 'real_T';



  
pt(239).blockname = 'EtherCAT Motor Parameters/RHFE/velocity override';
pt(239).paramname = 'Value';
pt(239).class     = 'scalar';
pt(239).nrows     = 1;
pt(239).ncols     = 1;
pt(239).subsource = 'SS_UINT32';
pt(239).ndims     = '2';
pt(239).size      = '[]';
pt(239).isStruct  = false;
pt(239).symbol     = 'MARCH_v1_5_P.velocityoverride_Value_g';
pt(239).baseaddr   = '&MARCH_v1_5_P.velocityoverride_Value_g';
pt(239).dtname     = 'uint32_T';



  
pt(240).blockname = 'EtherCAT Motor Parameters/RHFE/velocity setpoint';
pt(240).paramname = 'Value';
pt(240).class     = 'scalar';
pt(240).nrows     = 1;
pt(240).ncols     = 1;
pt(240).subsource = 'SS_INT16';
pt(240).ndims     = '2';
pt(240).size      = '[]';
pt(240).isStruct  = false;
pt(240).symbol     = 'MARCH_v1_5_P.velocitysetpoint_Value_d';
pt(240).baseaddr   = '&MARCH_v1_5_P.velocitysetpoint_Value_d';
pt(240).dtname     = 'int16_T';



  
pt(241).blockname = 'EtherCAT Motor Parameters/RHFE/Gain';
pt(241).paramname = 'Gain';
pt(241).class     = 'scalar';
pt(241).nrows     = 1;
pt(241).ncols     = 1;
pt(241).subsource = 'SS_DOUBLE';
pt(241).ndims     = '2';
pt(241).size      = '[]';
pt(241).isStruct  = false;
pt(241).symbol     = 'MARCH_v1_5_P.Gain_Gain_a';
pt(241).baseaddr   = '&MARCH_v1_5_P.Gain_Gain_a';
pt(241).dtname     = 'real_T';



  
pt(242).blockname = 'EtherCAT Motor Parameters/RHFE/Gain1';
pt(242).paramname = 'Gain';
pt(242).class     = 'scalar';
pt(242).nrows     = 1;
pt(242).ncols     = 1;
pt(242).subsource = 'SS_DOUBLE';
pt(242).ndims     = '2';
pt(242).size      = '[]';
pt(242).isStruct  = false;
pt(242).symbol     = 'MARCH_v1_5_P.Gain1_Gain_d';
pt(242).baseaddr   = '&MARCH_v1_5_P.Gain1_Gain_d';
pt(242).dtname     = 'real_T';



  
pt(243).blockname = 'EtherCAT Motor Parameters/RHFE/Gain2';
pt(243).paramname = 'Gain';
pt(243).class     = 'scalar';
pt(243).nrows     = 1;
pt(243).ncols     = 1;
pt(243).subsource = 'SS_DOUBLE';
pt(243).ndims     = '2';
pt(243).size      = '[]';
pt(243).isStruct  = false;
pt(243).symbol     = 'MARCH_v1_5_P.Gain2_Gain_n';
pt(243).baseaddr   = '&MARCH_v1_5_P.Gain2_Gain_n';
pt(243).dtname     = 'real_T';



  
pt(244).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit ';
pt(244).paramname = 'P1';
pt(244).class     = 'vector';
pt(244).nrows     = 1;
pt(244).ncols     = 18;
pt(244).subsource = 'SS_DOUBLE';
pt(244).ndims     = '2';
pt(244).size      = '[]';
pt(244).isStruct  = false;
pt(244).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit_P1_p';
pt(244).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit_P1_p[0]';
pt(244).dtname     = 'real_T';



  
pt(245).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit ';
pt(245).paramname = 'P2';
pt(245).class     = 'scalar';
pt(245).nrows     = 1;
pt(245).ncols     = 1;
pt(245).subsource = 'SS_DOUBLE';
pt(245).ndims     = '2';
pt(245).size      = '[]';
pt(245).isStruct  = false;
pt(245).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit_P2_j';
pt(245).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit_P2_j';
pt(245).dtname     = 'real_T';



  
pt(246).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit ';
pt(246).paramname = 'P3';
pt(246).class     = 'scalar';
pt(246).nrows     = 1;
pt(246).ncols     = 1;
pt(246).subsource = 'SS_DOUBLE';
pt(246).ndims     = '2';
pt(246).size      = '[]';
pt(246).isStruct  = false;
pt(246).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit_P3_l';
pt(246).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit_P3_l';
pt(246).dtname     = 'real_T';



  
pt(247).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit ';
pt(247).paramname = 'P4';
pt(247).class     = 'scalar';
pt(247).nrows     = 1;
pt(247).ncols     = 1;
pt(247).subsource = 'SS_DOUBLE';
pt(247).ndims     = '2';
pt(247).size      = '[]';
pt(247).isStruct  = false;
pt(247).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit_P4_cb';
pt(247).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit_P4_cb';
pt(247).dtname     = 'real_T';



  
pt(248).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit ';
pt(248).paramname = 'P5';
pt(248).class     = 'scalar';
pt(248).nrows     = 1;
pt(248).ncols     = 1;
pt(248).subsource = 'SS_DOUBLE';
pt(248).ndims     = '2';
pt(248).size      = '[]';
pt(248).isStruct  = false;
pt(248).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit_P5_j';
pt(248).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit_P5_j';
pt(248).dtname     = 'real_T';



  
pt(249).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit ';
pt(249).paramname = 'P6';
pt(249).class     = 'scalar';
pt(249).nrows     = 1;
pt(249).ncols     = 1;
pt(249).subsource = 'SS_DOUBLE';
pt(249).ndims     = '2';
pt(249).size      = '[]';
pt(249).isStruct  = false;
pt(249).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit_P6_h';
pt(249).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit_P6_h';
pt(249).dtname     = 'real_T';



  
pt(250).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit ';
pt(250).paramname = 'P7';
pt(250).class     = 'scalar';
pt(250).nrows     = 1;
pt(250).ncols     = 1;
pt(250).subsource = 'SS_DOUBLE';
pt(250).ndims     = '2';
pt(250).size      = '[]';
pt(250).isStruct  = false;
pt(250).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit_P7_j';
pt(250).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit_P7_j';
pt(250).dtname     = 'real_T';



  
pt(251).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit 1';
pt(251).paramname = 'P1';
pt(251).class     = 'vector';
pt(251).nrows     = 1;
pt(251).ncols     = 18;
pt(251).subsource = 'SS_DOUBLE';
pt(251).ndims     = '2';
pt(251).size      = '[]';
pt(251).isStruct  = false;
pt(251).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit1_P1_o';
pt(251).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit1_P1_o[0]';
pt(251).dtname     = 'real_T';



  
pt(252).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit 1';
pt(252).paramname = 'P2';
pt(252).class     = 'scalar';
pt(252).nrows     = 1;
pt(252).ncols     = 1;
pt(252).subsource = 'SS_DOUBLE';
pt(252).ndims     = '2';
pt(252).size      = '[]';
pt(252).isStruct  = false;
pt(252).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit1_P2_g';
pt(252).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit1_P2_g';
pt(252).dtname     = 'real_T';



  
pt(253).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit 1';
pt(253).paramname = 'P3';
pt(253).class     = 'scalar';
pt(253).nrows     = 1;
pt(253).ncols     = 1;
pt(253).subsource = 'SS_DOUBLE';
pt(253).ndims     = '2';
pt(253).size      = '[]';
pt(253).isStruct  = false;
pt(253).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit1_P3_is';
pt(253).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit1_P3_is';
pt(253).dtname     = 'real_T';



  
pt(254).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit 1';
pt(254).paramname = 'P4';
pt(254).class     = 'scalar';
pt(254).nrows     = 1;
pt(254).ncols     = 1;
pt(254).subsource = 'SS_DOUBLE';
pt(254).ndims     = '2';
pt(254).size      = '[]';
pt(254).isStruct  = false;
pt(254).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit1_P4_g';
pt(254).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit1_P4_g';
pt(254).dtname     = 'real_T';



  
pt(255).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit 1';
pt(255).paramname = 'P5';
pt(255).class     = 'scalar';
pt(255).nrows     = 1;
pt(255).ncols     = 1;
pt(255).subsource = 'SS_DOUBLE';
pt(255).ndims     = '2';
pt(255).size      = '[]';
pt(255).isStruct  = false;
pt(255).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit1_P5_j';
pt(255).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit1_P5_j';
pt(255).dtname     = 'real_T';



  
pt(256).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit 1';
pt(256).paramname = 'P6';
pt(256).class     = 'scalar';
pt(256).nrows     = 1;
pt(256).ncols     = 1;
pt(256).subsource = 'SS_DOUBLE';
pt(256).ndims     = '2';
pt(256).size      = '[]';
pt(256).isStruct  = false;
pt(256).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit1_P6_n';
pt(256).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit1_P6_n';
pt(256).dtname     = 'real_T';



  
pt(257).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit 1';
pt(257).paramname = 'P7';
pt(257).class     = 'scalar';
pt(257).nrows     = 1;
pt(257).ncols     = 1;
pt(257).subsource = 'SS_DOUBLE';
pt(257).ndims     = '2';
pt(257).size      = '[]';
pt(257).isStruct  = false;
pt(257).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit1_P7_g';
pt(257).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit1_P7_g';
pt(257).dtname     = 'real_T';



  
pt(258).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit 2';
pt(258).paramname = 'P1';
pt(258).class     = 'vector';
pt(258).nrows     = 1;
pt(258).ncols     = 18;
pt(258).subsource = 'SS_DOUBLE';
pt(258).ndims     = '2';
pt(258).size      = '[]';
pt(258).isStruct  = false;
pt(258).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit2_P1_l';
pt(258).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit2_P1_l[0]';
pt(258).dtname     = 'real_T';



  
pt(259).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit 2';
pt(259).paramname = 'P2';
pt(259).class     = 'scalar';
pt(259).nrows     = 1;
pt(259).ncols     = 1;
pt(259).subsource = 'SS_DOUBLE';
pt(259).ndims     = '2';
pt(259).size      = '[]';
pt(259).isStruct  = false;
pt(259).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit2_P2_gi';
pt(259).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit2_P2_gi';
pt(259).dtname     = 'real_T';



  
pt(260).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit 2';
pt(260).paramname = 'P3';
pt(260).class     = 'scalar';
pt(260).nrows     = 1;
pt(260).ncols     = 1;
pt(260).subsource = 'SS_DOUBLE';
pt(260).ndims     = '2';
pt(260).size      = '[]';
pt(260).isStruct  = false;
pt(260).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit2_P3_o';
pt(260).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit2_P3_o';
pt(260).dtname     = 'real_T';



  
pt(261).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit 2';
pt(261).paramname = 'P4';
pt(261).class     = 'scalar';
pt(261).nrows     = 1;
pt(261).ncols     = 1;
pt(261).subsource = 'SS_DOUBLE';
pt(261).ndims     = '2';
pt(261).size      = '[]';
pt(261).isStruct  = false;
pt(261).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit2_P4_c';
pt(261).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit2_P4_c';
pt(261).dtname     = 'real_T';



  
pt(262).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit 2';
pt(262).paramname = 'P5';
pt(262).class     = 'scalar';
pt(262).nrows     = 1;
pt(262).ncols     = 1;
pt(262).subsource = 'SS_DOUBLE';
pt(262).ndims     = '2';
pt(262).size      = '[]';
pt(262).isStruct  = false;
pt(262).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit2_P5_j';
pt(262).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit2_P5_j';
pt(262).dtname     = 'real_T';



  
pt(263).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit 2';
pt(263).paramname = 'P6';
pt(263).class     = 'scalar';
pt(263).nrows     = 1;
pt(263).ncols     = 1;
pt(263).subsource = 'SS_DOUBLE';
pt(263).ndims     = '2';
pt(263).size      = '[]';
pt(263).isStruct  = false;
pt(263).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit2_P6_n';
pt(263).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit2_P6_n';
pt(263).dtname     = 'real_T';



  
pt(264).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit 2';
pt(264).paramname = 'P7';
pt(264).class     = 'scalar';
pt(264).nrows     = 1;
pt(264).ncols     = 1;
pt(264).subsource = 'SS_DOUBLE';
pt(264).ndims     = '2';
pt(264).size      = '[]';
pt(264).isStruct  = false;
pt(264).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit2_P7_j';
pt(264).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit2_P7_j';
pt(264).dtname     = 'real_T';



  
pt(265).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit 3';
pt(265).paramname = 'P1';
pt(265).class     = 'vector';
pt(265).nrows     = 1;
pt(265).ncols     = 18;
pt(265).subsource = 'SS_DOUBLE';
pt(265).ndims     = '2';
pt(265).size      = '[]';
pt(265).isStruct  = false;
pt(265).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit3_P1_f';
pt(265).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit3_P1_f[0]';
pt(265).dtname     = 'real_T';



  
pt(266).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit 3';
pt(266).paramname = 'P2';
pt(266).class     = 'scalar';
pt(266).nrows     = 1;
pt(266).ncols     = 1;
pt(266).subsource = 'SS_DOUBLE';
pt(266).ndims     = '2';
pt(266).size      = '[]';
pt(266).isStruct  = false;
pt(266).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit3_P2_n';
pt(266).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit3_P2_n';
pt(266).dtname     = 'real_T';



  
pt(267).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit 3';
pt(267).paramname = 'P3';
pt(267).class     = 'scalar';
pt(267).nrows     = 1;
pt(267).ncols     = 1;
pt(267).subsource = 'SS_DOUBLE';
pt(267).ndims     = '2';
pt(267).size      = '[]';
pt(267).isStruct  = false;
pt(267).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit3_P3_ga';
pt(267).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit3_P3_ga';
pt(267).dtname     = 'real_T';



  
pt(268).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit 3';
pt(268).paramname = 'P4';
pt(268).class     = 'scalar';
pt(268).nrows     = 1;
pt(268).ncols     = 1;
pt(268).subsource = 'SS_DOUBLE';
pt(268).ndims     = '2';
pt(268).size      = '[]';
pt(268).isStruct  = false;
pt(268).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit3_P4_m';
pt(268).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit3_P4_m';
pt(268).dtname     = 'real_T';



  
pt(269).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit 3';
pt(269).paramname = 'P5';
pt(269).class     = 'scalar';
pt(269).nrows     = 1;
pt(269).ncols     = 1;
pt(269).subsource = 'SS_DOUBLE';
pt(269).ndims     = '2';
pt(269).size      = '[]';
pt(269).isStruct  = false;
pt(269).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit3_P5_j';
pt(269).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit3_P5_j';
pt(269).dtname     = 'real_T';



  
pt(270).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit 3';
pt(270).paramname = 'P6';
pt(270).class     = 'scalar';
pt(270).nrows     = 1;
pt(270).ncols     = 1;
pt(270).subsource = 'SS_DOUBLE';
pt(270).ndims     = '2';
pt(270).size      = '[]';
pt(270).isStruct  = false;
pt(270).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit3_P6_g';
pt(270).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit3_P6_g';
pt(270).dtname     = 'real_T';



  
pt(271).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit 3';
pt(271).paramname = 'P7';
pt(271).class     = 'scalar';
pt(271).nrows     = 1;
pt(271).ncols     = 1;
pt(271).subsource = 'SS_DOUBLE';
pt(271).ndims     = '2';
pt(271).size      = '[]';
pt(271).isStruct  = false;
pt(271).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit3_P7_d';
pt(271).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit3_P7_d';
pt(271).dtname     = 'real_T';



  
pt(272).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit 4';
pt(272).paramname = 'P1';
pt(272).class     = 'vector';
pt(272).nrows     = 1;
pt(272).ncols     = 18;
pt(272).subsource = 'SS_DOUBLE';
pt(272).ndims     = '2';
pt(272).size      = '[]';
pt(272).isStruct  = false;
pt(272).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit4_P1_p';
pt(272).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit4_P1_p[0]';
pt(272).dtname     = 'real_T';



  
pt(273).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit 4';
pt(273).paramname = 'P2';
pt(273).class     = 'scalar';
pt(273).nrows     = 1;
pt(273).ncols     = 1;
pt(273).subsource = 'SS_DOUBLE';
pt(273).ndims     = '2';
pt(273).size      = '[]';
pt(273).isStruct  = false;
pt(273).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit4_P2_n';
pt(273).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit4_P2_n';
pt(273).dtname     = 'real_T';



  
pt(274).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit 4';
pt(274).paramname = 'P3';
pt(274).class     = 'scalar';
pt(274).nrows     = 1;
pt(274).ncols     = 1;
pt(274).subsource = 'SS_DOUBLE';
pt(274).ndims     = '2';
pt(274).size      = '[]';
pt(274).isStruct  = false;
pt(274).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit4_P3_f';
pt(274).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit4_P3_f';
pt(274).dtname     = 'real_T';



  
pt(275).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit 4';
pt(275).paramname = 'P4';
pt(275).class     = 'scalar';
pt(275).nrows     = 1;
pt(275).ncols     = 1;
pt(275).subsource = 'SS_DOUBLE';
pt(275).ndims     = '2';
pt(275).size      = '[]';
pt(275).isStruct  = false;
pt(275).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit4_P4_f';
pt(275).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit4_P4_f';
pt(275).dtname     = 'real_T';



  
pt(276).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit 4';
pt(276).paramname = 'P5';
pt(276).class     = 'scalar';
pt(276).nrows     = 1;
pt(276).ncols     = 1;
pt(276).subsource = 'SS_DOUBLE';
pt(276).ndims     = '2';
pt(276).size      = '[]';
pt(276).isStruct  = false;
pt(276).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit4_P5_b';
pt(276).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit4_P5_b';
pt(276).dtname     = 'real_T';



  
pt(277).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit 4';
pt(277).paramname = 'P6';
pt(277).class     = 'scalar';
pt(277).nrows     = 1;
pt(277).ncols     = 1;
pt(277).subsource = 'SS_DOUBLE';
pt(277).ndims     = '2';
pt(277).size      = '[]';
pt(277).isStruct  = false;
pt(277).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit4_P6_p';
pt(277).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit4_P6_p';
pt(277).dtname     = 'real_T';



  
pt(278).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit 4';
pt(278).paramname = 'P7';
pt(278).class     = 'scalar';
pt(278).nrows     = 1;
pt(278).ncols     = 1;
pt(278).subsource = 'SS_DOUBLE';
pt(278).ndims     = '2';
pt(278).size      = '[]';
pt(278).isStruct  = false;
pt(278).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit4_P7_h';
pt(278).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit4_P7_h';
pt(278).dtname     = 'real_T';



  
pt(279).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit 5';
pt(279).paramname = 'P1';
pt(279).class     = 'vector';
pt(279).nrows     = 1;
pt(279).ncols     = 18;
pt(279).subsource = 'SS_DOUBLE';
pt(279).ndims     = '2';
pt(279).size      = '[]';
pt(279).isStruct  = false;
pt(279).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit5_P1_o0';
pt(279).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit5_P1_o0[0]';
pt(279).dtname     = 'real_T';



  
pt(280).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit 5';
pt(280).paramname = 'P2';
pt(280).class     = 'scalar';
pt(280).nrows     = 1;
pt(280).ncols     = 1;
pt(280).subsource = 'SS_DOUBLE';
pt(280).ndims     = '2';
pt(280).size      = '[]';
pt(280).isStruct  = false;
pt(280).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit5_P2_ca';
pt(280).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit5_P2_ca';
pt(280).dtname     = 'real_T';



  
pt(281).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit 5';
pt(281).paramname = 'P3';
pt(281).class     = 'scalar';
pt(281).nrows     = 1;
pt(281).ncols     = 1;
pt(281).subsource = 'SS_DOUBLE';
pt(281).ndims     = '2';
pt(281).size      = '[]';
pt(281).isStruct  = false;
pt(281).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit5_P3_f5';
pt(281).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit5_P3_f5';
pt(281).dtname     = 'real_T';



  
pt(282).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit 5';
pt(282).paramname = 'P4';
pt(282).class     = 'scalar';
pt(282).nrows     = 1;
pt(282).ncols     = 1;
pt(282).subsource = 'SS_DOUBLE';
pt(282).ndims     = '2';
pt(282).size      = '[]';
pt(282).isStruct  = false;
pt(282).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit5_P4_l';
pt(282).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit5_P4_l';
pt(282).dtname     = 'real_T';



  
pt(283).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit 5';
pt(283).paramname = 'P5';
pt(283).class     = 'scalar';
pt(283).nrows     = 1;
pt(283).ncols     = 1;
pt(283).subsource = 'SS_DOUBLE';
pt(283).ndims     = '2';
pt(283).size      = '[]';
pt(283).isStruct  = false;
pt(283).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit5_P5_p';
pt(283).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit5_P5_p';
pt(283).dtname     = 'real_T';



  
pt(284).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit 5';
pt(284).paramname = 'P6';
pt(284).class     = 'scalar';
pt(284).nrows     = 1;
pt(284).ncols     = 1;
pt(284).subsource = 'SS_DOUBLE';
pt(284).ndims     = '2';
pt(284).size      = '[]';
pt(284).isStruct  = false;
pt(284).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit5_P6_b';
pt(284).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit5_P6_b';
pt(284).dtname     = 'real_T';



  
pt(285).blockname = 'EtherCAT Motor Parameters/RHFE/EtherCAT PDO Transmit 5';
pt(285).paramname = 'P7';
pt(285).class     = 'scalar';
pt(285).nrows     = 1;
pt(285).ncols     = 1;
pt(285).subsource = 'SS_DOUBLE';
pt(285).ndims     = '2';
pt(285).size      = '[]';
pt(285).isStruct  = false;
pt(285).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit5_P7_i';
pt(285).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit5_P7_i';
pt(285).dtname     = 'real_T';



  
pt(286).blockname = 'EtherCAT Motor Parameters/RKFE/Constant';
pt(286).paramname = 'Value';
pt(286).class     = 'scalar';
pt(286).nrows     = 1;
pt(286).ncols     = 1;
pt(286).subsource = 'SS_DOUBLE';
pt(286).ndims     = '2';
pt(286).size      = '[]';
pt(286).isStruct  = false;
pt(286).symbol     = 'MARCH_v1_5_P.Constant_Value_eh';
pt(286).baseaddr   = '&MARCH_v1_5_P.Constant_Value_eh';
pt(286).dtname     = 'real_T';



  
pt(287).blockname = 'EtherCAT Motor Parameters/RKFE/Constant5';
pt(287).paramname = 'Value';
pt(287).class     = 'scalar';
pt(287).nrows     = 1;
pt(287).ncols     = 1;
pt(287).subsource = 'SS_UINT32';
pt(287).ndims     = '2';
pt(287).size      = '[]';
pt(287).isStruct  = false;
pt(287).symbol     = 'MARCH_v1_5_P.Constant5_Value_n';
pt(287).baseaddr   = '&MARCH_v1_5_P.Constant5_Value_n';
pt(287).dtname     = 'uint32_T';



  
pt(288).blockname = 'EtherCAT Motor Parameters/RKFE/Kd';
pt(288).paramname = 'Value';
pt(288).class     = 'scalar';
pt(288).nrows     = 1;
pt(288).ncols     = 1;
pt(288).subsource = 'SS_DOUBLE';
pt(288).ndims     = '2';
pt(288).size      = '[]';
pt(288).isStruct  = false;
pt(288).symbol     = 'MARCH_v1_5_P.Kd_Value_l';
pt(288).baseaddr   = '&MARCH_v1_5_P.Kd_Value_l';
pt(288).dtname     = 'real_T';



  
pt(289).blockname = 'EtherCAT Motor Parameters/RKFE/Ki';
pt(289).paramname = 'Value';
pt(289).class     = 'scalar';
pt(289).nrows     = 1;
pt(289).ncols     = 1;
pt(289).subsource = 'SS_DOUBLE';
pt(289).ndims     = '2';
pt(289).size      = '[]';
pt(289).isStruct  = false;
pt(289).symbol     = 'MARCH_v1_5_P.Ki_Value_j';
pt(289).baseaddr   = '&MARCH_v1_5_P.Ki_Value_j';
pt(289).dtname     = 'real_T';



  
pt(290).blockname = 'EtherCAT Motor Parameters/RKFE/Kp';
pt(290).paramname = 'Value';
pt(290).class     = 'scalar';
pt(290).nrows     = 1;
pt(290).ncols     = 1;
pt(290).subsource = 'SS_DOUBLE';
pt(290).ndims     = '2';
pt(290).size      = '[]';
pt(290).isStruct  = false;
pt(290).symbol     = 'MARCH_v1_5_P.Kp_Value_k';
pt(290).baseaddr   = '&MARCH_v1_5_P.Kp_Value_k';
pt(290).dtname     = 'real_T';



  
pt(291).blockname = 'EtherCAT Motor Parameters/RKFE/velocity override';
pt(291).paramname = 'Value';
pt(291).class     = 'scalar';
pt(291).nrows     = 1;
pt(291).ncols     = 1;
pt(291).subsource = 'SS_UINT32';
pt(291).ndims     = '2';
pt(291).size      = '[]';
pt(291).isStruct  = false;
pt(291).symbol     = 'MARCH_v1_5_P.velocityoverride_Value_k';
pt(291).baseaddr   = '&MARCH_v1_5_P.velocityoverride_Value_k';
pt(291).dtname     = 'uint32_T';



  
pt(292).blockname = 'EtherCAT Motor Parameters/RKFE/velocity setpoint';
pt(292).paramname = 'Value';
pt(292).class     = 'scalar';
pt(292).nrows     = 1;
pt(292).ncols     = 1;
pt(292).subsource = 'SS_INT16';
pt(292).ndims     = '2';
pt(292).size      = '[]';
pt(292).isStruct  = false;
pt(292).symbol     = 'MARCH_v1_5_P.velocitysetpoint_Value_c';
pt(292).baseaddr   = '&MARCH_v1_5_P.velocitysetpoint_Value_c';
pt(292).dtname     = 'int16_T';



  
pt(293).blockname = 'EtherCAT Motor Parameters/RKFE/Gain';
pt(293).paramname = 'Gain';
pt(293).class     = 'scalar';
pt(293).nrows     = 1;
pt(293).ncols     = 1;
pt(293).subsource = 'SS_DOUBLE';
pt(293).ndims     = '2';
pt(293).size      = '[]';
pt(293).isStruct  = false;
pt(293).symbol     = 'MARCH_v1_5_P.Gain_Gain_p';
pt(293).baseaddr   = '&MARCH_v1_5_P.Gain_Gain_p';
pt(293).dtname     = 'real_T';



  
pt(294).blockname = 'EtherCAT Motor Parameters/RKFE/Gain1';
pt(294).paramname = 'Gain';
pt(294).class     = 'scalar';
pt(294).nrows     = 1;
pt(294).ncols     = 1;
pt(294).subsource = 'SS_DOUBLE';
pt(294).ndims     = '2';
pt(294).size      = '[]';
pt(294).isStruct  = false;
pt(294).symbol     = 'MARCH_v1_5_P.Gain1_Gain_l';
pt(294).baseaddr   = '&MARCH_v1_5_P.Gain1_Gain_l';
pt(294).dtname     = 'real_T';



  
pt(295).blockname = 'EtherCAT Motor Parameters/RKFE/Gain2';
pt(295).paramname = 'Gain';
pt(295).class     = 'scalar';
pt(295).nrows     = 1;
pt(295).ncols     = 1;
pt(295).subsource = 'SS_DOUBLE';
pt(295).ndims     = '2';
pt(295).size      = '[]';
pt(295).isStruct  = false;
pt(295).symbol     = 'MARCH_v1_5_P.Gain2_Gain_p';
pt(295).baseaddr   = '&MARCH_v1_5_P.Gain2_Gain_p';
pt(295).dtname     = 'real_T';



  
pt(296).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit ';
pt(296).paramname = 'P1';
pt(296).class     = 'vector';
pt(296).nrows     = 1;
pt(296).ncols     = 18;
pt(296).subsource = 'SS_DOUBLE';
pt(296).ndims     = '2';
pt(296).size      = '[]';
pt(296).isStruct  = false;
pt(296).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit_P1_e';
pt(296).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit_P1_e[0]';
pt(296).dtname     = 'real_T';



  
pt(297).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit ';
pt(297).paramname = 'P2';
pt(297).class     = 'scalar';
pt(297).nrows     = 1;
pt(297).ncols     = 1;
pt(297).subsource = 'SS_DOUBLE';
pt(297).ndims     = '2';
pt(297).size      = '[]';
pt(297).isStruct  = false;
pt(297).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit_P2_l';
pt(297).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit_P2_l';
pt(297).dtname     = 'real_T';



  
pt(298).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit ';
pt(298).paramname = 'P3';
pt(298).class     = 'scalar';
pt(298).nrows     = 1;
pt(298).ncols     = 1;
pt(298).subsource = 'SS_DOUBLE';
pt(298).ndims     = '2';
pt(298).size      = '[]';
pt(298).isStruct  = false;
pt(298).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit_P3_d';
pt(298).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit_P3_d';
pt(298).dtname     = 'real_T';



  
pt(299).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit ';
pt(299).paramname = 'P4';
pt(299).class     = 'scalar';
pt(299).nrows     = 1;
pt(299).ncols     = 1;
pt(299).subsource = 'SS_DOUBLE';
pt(299).ndims     = '2';
pt(299).size      = '[]';
pt(299).isStruct  = false;
pt(299).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit_P4_j';
pt(299).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit_P4_j';
pt(299).dtname     = 'real_T';



  
pt(300).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit ';
pt(300).paramname = 'P5';
pt(300).class     = 'scalar';
pt(300).nrows     = 1;
pt(300).ncols     = 1;
pt(300).subsource = 'SS_DOUBLE';
pt(300).ndims     = '2';
pt(300).size      = '[]';
pt(300).isStruct  = false;
pt(300).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit_P5_k';
pt(300).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit_P5_k';
pt(300).dtname     = 'real_T';



  
pt(301).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit ';
pt(301).paramname = 'P6';
pt(301).class     = 'scalar';
pt(301).nrows     = 1;
pt(301).ncols     = 1;
pt(301).subsource = 'SS_DOUBLE';
pt(301).ndims     = '2';
pt(301).size      = '[]';
pt(301).isStruct  = false;
pt(301).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit_P6_c';
pt(301).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit_P6_c';
pt(301).dtname     = 'real_T';



  
pt(302).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit ';
pt(302).paramname = 'P7';
pt(302).class     = 'scalar';
pt(302).nrows     = 1;
pt(302).ncols     = 1;
pt(302).subsource = 'SS_DOUBLE';
pt(302).ndims     = '2';
pt(302).size      = '[]';
pt(302).isStruct  = false;
pt(302).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit_P7_a';
pt(302).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit_P7_a';
pt(302).dtname     = 'real_T';



  
pt(303).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit 1';
pt(303).paramname = 'P1';
pt(303).class     = 'vector';
pt(303).nrows     = 1;
pt(303).ncols     = 18;
pt(303).subsource = 'SS_DOUBLE';
pt(303).ndims     = '2';
pt(303).size      = '[]';
pt(303).isStruct  = false;
pt(303).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit1_P1_l';
pt(303).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit1_P1_l[0]';
pt(303).dtname     = 'real_T';



  
pt(304).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit 1';
pt(304).paramname = 'P2';
pt(304).class     = 'scalar';
pt(304).nrows     = 1;
pt(304).ncols     = 1;
pt(304).subsource = 'SS_DOUBLE';
pt(304).ndims     = '2';
pt(304).size      = '[]';
pt(304).isStruct  = false;
pt(304).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit1_P2_h';
pt(304).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit1_P2_h';
pt(304).dtname     = 'real_T';



  
pt(305).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit 1';
pt(305).paramname = 'P3';
pt(305).class     = 'scalar';
pt(305).nrows     = 1;
pt(305).ncols     = 1;
pt(305).subsource = 'SS_DOUBLE';
pt(305).ndims     = '2';
pt(305).size      = '[]';
pt(305).isStruct  = false;
pt(305).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit1_P3_f';
pt(305).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit1_P3_f';
pt(305).dtname     = 'real_T';



  
pt(306).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit 1';
pt(306).paramname = 'P4';
pt(306).class     = 'scalar';
pt(306).nrows     = 1;
pt(306).ncols     = 1;
pt(306).subsource = 'SS_DOUBLE';
pt(306).ndims     = '2';
pt(306).size      = '[]';
pt(306).isStruct  = false;
pt(306).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit1_P4_m';
pt(306).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit1_P4_m';
pt(306).dtname     = 'real_T';



  
pt(307).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit 1';
pt(307).paramname = 'P5';
pt(307).class     = 'scalar';
pt(307).nrows     = 1;
pt(307).ncols     = 1;
pt(307).subsource = 'SS_DOUBLE';
pt(307).ndims     = '2';
pt(307).size      = '[]';
pt(307).isStruct  = false;
pt(307).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit1_P5_m';
pt(307).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit1_P5_m';
pt(307).dtname     = 'real_T';



  
pt(308).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit 1';
pt(308).paramname = 'P6';
pt(308).class     = 'scalar';
pt(308).nrows     = 1;
pt(308).ncols     = 1;
pt(308).subsource = 'SS_DOUBLE';
pt(308).ndims     = '2';
pt(308).size      = '[]';
pt(308).isStruct  = false;
pt(308).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit1_P6_k';
pt(308).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit1_P6_k';
pt(308).dtname     = 'real_T';



  
pt(309).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit 1';
pt(309).paramname = 'P7';
pt(309).class     = 'scalar';
pt(309).nrows     = 1;
pt(309).ncols     = 1;
pt(309).subsource = 'SS_DOUBLE';
pt(309).ndims     = '2';
pt(309).size      = '[]';
pt(309).isStruct  = false;
pt(309).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit1_P7_e';
pt(309).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit1_P7_e';
pt(309).dtname     = 'real_T';



  
pt(310).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit 2';
pt(310).paramname = 'P1';
pt(310).class     = 'vector';
pt(310).nrows     = 1;
pt(310).ncols     = 18;
pt(310).subsource = 'SS_DOUBLE';
pt(310).ndims     = '2';
pt(310).size      = '[]';
pt(310).isStruct  = false;
pt(310).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit2_P1_i';
pt(310).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit2_P1_i[0]';
pt(310).dtname     = 'real_T';



  
pt(311).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit 2';
pt(311).paramname = 'P2';
pt(311).class     = 'scalar';
pt(311).nrows     = 1;
pt(311).ncols     = 1;
pt(311).subsource = 'SS_DOUBLE';
pt(311).ndims     = '2';
pt(311).size      = '[]';
pt(311).isStruct  = false;
pt(311).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit2_P2_p';
pt(311).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit2_P2_p';
pt(311).dtname     = 'real_T';



  
pt(312).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit 2';
pt(312).paramname = 'P3';
pt(312).class     = 'scalar';
pt(312).nrows     = 1;
pt(312).ncols     = 1;
pt(312).subsource = 'SS_DOUBLE';
pt(312).ndims     = '2';
pt(312).size      = '[]';
pt(312).isStruct  = false;
pt(312).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit2_P3_oj';
pt(312).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit2_P3_oj';
pt(312).dtname     = 'real_T';



  
pt(313).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit 2';
pt(313).paramname = 'P4';
pt(313).class     = 'scalar';
pt(313).nrows     = 1;
pt(313).ncols     = 1;
pt(313).subsource = 'SS_DOUBLE';
pt(313).ndims     = '2';
pt(313).size      = '[]';
pt(313).isStruct  = false;
pt(313).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit2_P4_o';
pt(313).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit2_P4_o';
pt(313).dtname     = 'real_T';



  
pt(314).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit 2';
pt(314).paramname = 'P5';
pt(314).class     = 'scalar';
pt(314).nrows     = 1;
pt(314).ncols     = 1;
pt(314).subsource = 'SS_DOUBLE';
pt(314).ndims     = '2';
pt(314).size      = '[]';
pt(314).isStruct  = false;
pt(314).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit2_P5_c';
pt(314).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit2_P5_c';
pt(314).dtname     = 'real_T';



  
pt(315).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit 2';
pt(315).paramname = 'P6';
pt(315).class     = 'scalar';
pt(315).nrows     = 1;
pt(315).ncols     = 1;
pt(315).subsource = 'SS_DOUBLE';
pt(315).ndims     = '2';
pt(315).size      = '[]';
pt(315).isStruct  = false;
pt(315).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit2_P6_h';
pt(315).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit2_P6_h';
pt(315).dtname     = 'real_T';



  
pt(316).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit 2';
pt(316).paramname = 'P7';
pt(316).class     = 'scalar';
pt(316).nrows     = 1;
pt(316).ncols     = 1;
pt(316).subsource = 'SS_DOUBLE';
pt(316).ndims     = '2';
pt(316).size      = '[]';
pt(316).isStruct  = false;
pt(316).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit2_P7_l';
pt(316).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit2_P7_l';
pt(316).dtname     = 'real_T';



  
pt(317).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit 3';
pt(317).paramname = 'P1';
pt(317).class     = 'vector';
pt(317).nrows     = 1;
pt(317).ncols     = 18;
pt(317).subsource = 'SS_DOUBLE';
pt(317).ndims     = '2';
pt(317).size      = '[]';
pt(317).isStruct  = false;
pt(317).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit3_P1_g';
pt(317).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit3_P1_g[0]';
pt(317).dtname     = 'real_T';



  
pt(318).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit 3';
pt(318).paramname = 'P2';
pt(318).class     = 'scalar';
pt(318).nrows     = 1;
pt(318).ncols     = 1;
pt(318).subsource = 'SS_DOUBLE';
pt(318).ndims     = '2';
pt(318).size      = '[]';
pt(318).isStruct  = false;
pt(318).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit3_P2_n2';
pt(318).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit3_P2_n2';
pt(318).dtname     = 'real_T';



  
pt(319).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit 3';
pt(319).paramname = 'P3';
pt(319).class     = 'scalar';
pt(319).nrows     = 1;
pt(319).ncols     = 1;
pt(319).subsource = 'SS_DOUBLE';
pt(319).ndims     = '2';
pt(319).size      = '[]';
pt(319).isStruct  = false;
pt(319).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit3_P3_b';
pt(319).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit3_P3_b';
pt(319).dtname     = 'real_T';



  
pt(320).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit 3';
pt(320).paramname = 'P4';
pt(320).class     = 'scalar';
pt(320).nrows     = 1;
pt(320).ncols     = 1;
pt(320).subsource = 'SS_DOUBLE';
pt(320).ndims     = '2';
pt(320).size      = '[]';
pt(320).isStruct  = false;
pt(320).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit3_P4_f';
pt(320).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit3_P4_f';
pt(320).dtname     = 'real_T';



  
pt(321).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit 3';
pt(321).paramname = 'P5';
pt(321).class     = 'scalar';
pt(321).nrows     = 1;
pt(321).ncols     = 1;
pt(321).subsource = 'SS_DOUBLE';
pt(321).ndims     = '2';
pt(321).size      = '[]';
pt(321).isStruct  = false;
pt(321).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit3_P5_e';
pt(321).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit3_P5_e';
pt(321).dtname     = 'real_T';



  
pt(322).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit 3';
pt(322).paramname = 'P6';
pt(322).class     = 'scalar';
pt(322).nrows     = 1;
pt(322).ncols     = 1;
pt(322).subsource = 'SS_DOUBLE';
pt(322).ndims     = '2';
pt(322).size      = '[]';
pt(322).isStruct  = false;
pt(322).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit3_P6_n';
pt(322).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit3_P6_n';
pt(322).dtname     = 'real_T';



  
pt(323).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit 3';
pt(323).paramname = 'P7';
pt(323).class     = 'scalar';
pt(323).nrows     = 1;
pt(323).ncols     = 1;
pt(323).subsource = 'SS_DOUBLE';
pt(323).ndims     = '2';
pt(323).size      = '[]';
pt(323).isStruct  = false;
pt(323).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit3_P7_h';
pt(323).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit3_P7_h';
pt(323).dtname     = 'real_T';



  
pt(324).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit 4';
pt(324).paramname = 'P1';
pt(324).class     = 'vector';
pt(324).nrows     = 1;
pt(324).ncols     = 18;
pt(324).subsource = 'SS_DOUBLE';
pt(324).ndims     = '2';
pt(324).size      = '[]';
pt(324).isStruct  = false;
pt(324).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit4_P1_k';
pt(324).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit4_P1_k[0]';
pt(324).dtname     = 'real_T';



  
pt(325).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit 4';
pt(325).paramname = 'P2';
pt(325).class     = 'scalar';
pt(325).nrows     = 1;
pt(325).ncols     = 1;
pt(325).subsource = 'SS_DOUBLE';
pt(325).ndims     = '2';
pt(325).size      = '[]';
pt(325).isStruct  = false;
pt(325).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit4_P2_i';
pt(325).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit4_P2_i';
pt(325).dtname     = 'real_T';



  
pt(326).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit 4';
pt(326).paramname = 'P3';
pt(326).class     = 'scalar';
pt(326).nrows     = 1;
pt(326).ncols     = 1;
pt(326).subsource = 'SS_DOUBLE';
pt(326).ndims     = '2';
pt(326).size      = '[]';
pt(326).isStruct  = false;
pt(326).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit4_P3_l';
pt(326).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit4_P3_l';
pt(326).dtname     = 'real_T';



  
pt(327).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit 4';
pt(327).paramname = 'P4';
pt(327).class     = 'scalar';
pt(327).nrows     = 1;
pt(327).ncols     = 1;
pt(327).subsource = 'SS_DOUBLE';
pt(327).ndims     = '2';
pt(327).size      = '[]';
pt(327).isStruct  = false;
pt(327).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit4_P4_g';
pt(327).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit4_P4_g';
pt(327).dtname     = 'real_T';



  
pt(328).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit 4';
pt(328).paramname = 'P5';
pt(328).class     = 'scalar';
pt(328).nrows     = 1;
pt(328).ncols     = 1;
pt(328).subsource = 'SS_DOUBLE';
pt(328).ndims     = '2';
pt(328).size      = '[]';
pt(328).isStruct  = false;
pt(328).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit4_P5_i';
pt(328).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit4_P5_i';
pt(328).dtname     = 'real_T';



  
pt(329).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit 4';
pt(329).paramname = 'P6';
pt(329).class     = 'scalar';
pt(329).nrows     = 1;
pt(329).ncols     = 1;
pt(329).subsource = 'SS_DOUBLE';
pt(329).ndims     = '2';
pt(329).size      = '[]';
pt(329).isStruct  = false;
pt(329).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit4_P6_d';
pt(329).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit4_P6_d';
pt(329).dtname     = 'real_T';



  
pt(330).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit 4';
pt(330).paramname = 'P7';
pt(330).class     = 'scalar';
pt(330).nrows     = 1;
pt(330).ncols     = 1;
pt(330).subsource = 'SS_DOUBLE';
pt(330).ndims     = '2';
pt(330).size      = '[]';
pt(330).isStruct  = false;
pt(330).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit4_P7_i';
pt(330).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit4_P7_i';
pt(330).dtname     = 'real_T';



  
pt(331).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit 5';
pt(331).paramname = 'P1';
pt(331).class     = 'vector';
pt(331).nrows     = 1;
pt(331).ncols     = 18;
pt(331).subsource = 'SS_DOUBLE';
pt(331).ndims     = '2';
pt(331).size      = '[]';
pt(331).isStruct  = false;
pt(331).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit5_P1_c';
pt(331).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit5_P1_c[0]';
pt(331).dtname     = 'real_T';



  
pt(332).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit 5';
pt(332).paramname = 'P2';
pt(332).class     = 'scalar';
pt(332).nrows     = 1;
pt(332).ncols     = 1;
pt(332).subsource = 'SS_DOUBLE';
pt(332).ndims     = '2';
pt(332).size      = '[]';
pt(332).isStruct  = false;
pt(332).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit5_P2_i';
pt(332).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit5_P2_i';
pt(332).dtname     = 'real_T';



  
pt(333).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit 5';
pt(333).paramname = 'P3';
pt(333).class     = 'scalar';
pt(333).nrows     = 1;
pt(333).ncols     = 1;
pt(333).subsource = 'SS_DOUBLE';
pt(333).ndims     = '2';
pt(333).size      = '[]';
pt(333).isStruct  = false;
pt(333).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit5_P3_c';
pt(333).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit5_P3_c';
pt(333).dtname     = 'real_T';



  
pt(334).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit 5';
pt(334).paramname = 'P4';
pt(334).class     = 'scalar';
pt(334).nrows     = 1;
pt(334).ncols     = 1;
pt(334).subsource = 'SS_DOUBLE';
pt(334).ndims     = '2';
pt(334).size      = '[]';
pt(334).isStruct  = false;
pt(334).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit5_P4_j';
pt(334).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit5_P4_j';
pt(334).dtname     = 'real_T';



  
pt(335).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit 5';
pt(335).paramname = 'P5';
pt(335).class     = 'scalar';
pt(335).nrows     = 1;
pt(335).ncols     = 1;
pt(335).subsource = 'SS_DOUBLE';
pt(335).ndims     = '2';
pt(335).size      = '[]';
pt(335).isStruct  = false;
pt(335).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit5_P5_j';
pt(335).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit5_P5_j';
pt(335).dtname     = 'real_T';



  
pt(336).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit 5';
pt(336).paramname = 'P6';
pt(336).class     = 'scalar';
pt(336).nrows     = 1;
pt(336).ncols     = 1;
pt(336).subsource = 'SS_DOUBLE';
pt(336).ndims     = '2';
pt(336).size      = '[]';
pt(336).isStruct  = false;
pt(336).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit5_P6_e';
pt(336).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit5_P6_e';
pt(336).dtname     = 'real_T';



  
pt(337).blockname = 'EtherCAT Motor Parameters/RKFE/EtherCAT PDO Transmit 5';
pt(337).paramname = 'P7';
pt(337).class     = 'scalar';
pt(337).nrows     = 1;
pt(337).ncols     = 1;
pt(337).subsource = 'SS_DOUBLE';
pt(337).ndims     = '2';
pt(337).size      = '[]';
pt(337).isStruct  = false;
pt(337).symbol     = 'MARCH_v1_5_P.EtherCATPDOTransmit5_P7_d';
pt(337).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOTransmit5_P7_d';
pt(337).dtname     = 'real_T';



  
pt(338).blockname = 'Input Device/EtherCAT Input Device/EtherCAT PDO Receive';
pt(338).paramname = 'P1';
pt(338).class     = 'vector';
pt(338).nrows     = 1;
pt(338).ncols     = 22;
pt(338).subsource = 'SS_DOUBLE';
pt(338).ndims     = '2';
pt(338).size      = '[]';
pt(338).isStruct  = false;
pt(338).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive_P1';
pt(338).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive_P1[0]';
pt(338).dtname     = 'real_T';



  
pt(339).blockname = 'Input Device/EtherCAT Input Device/EtherCAT PDO Receive';
pt(339).paramname = 'P2';
pt(339).class     = 'scalar';
pt(339).nrows     = 1;
pt(339).ncols     = 1;
pt(339).subsource = 'SS_DOUBLE';
pt(339).ndims     = '2';
pt(339).size      = '[]';
pt(339).isStruct  = false;
pt(339).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive_P2';
pt(339).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive_P2';
pt(339).dtname     = 'real_T';



  
pt(340).blockname = 'Input Device/EtherCAT Input Device/EtherCAT PDO Receive';
pt(340).paramname = 'P3';
pt(340).class     = 'scalar';
pt(340).nrows     = 1;
pt(340).ncols     = 1;
pt(340).subsource = 'SS_DOUBLE';
pt(340).ndims     = '2';
pt(340).size      = '[]';
pt(340).isStruct  = false;
pt(340).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive_P3';
pt(340).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive_P3';
pt(340).dtname     = 'real_T';



  
pt(341).blockname = 'Input Device/EtherCAT Input Device/EtherCAT PDO Receive';
pt(341).paramname = 'P4';
pt(341).class     = 'scalar';
pt(341).nrows     = 1;
pt(341).ncols     = 1;
pt(341).subsource = 'SS_DOUBLE';
pt(341).ndims     = '2';
pt(341).size      = '[]';
pt(341).isStruct  = false;
pt(341).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive_P4';
pt(341).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive_P4';
pt(341).dtname     = 'real_T';



  
pt(342).blockname = 'Input Device/EtherCAT Input Device/EtherCAT PDO Receive';
pt(342).paramname = 'P5';
pt(342).class     = 'scalar';
pt(342).nrows     = 1;
pt(342).ncols     = 1;
pt(342).subsource = 'SS_DOUBLE';
pt(342).ndims     = '2';
pt(342).size      = '[]';
pt(342).isStruct  = false;
pt(342).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive_P5';
pt(342).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive_P5';
pt(342).dtname     = 'real_T';



  
pt(343).blockname = 'Input Device/EtherCAT Input Device/EtherCAT PDO Receive';
pt(343).paramname = 'P6';
pt(343).class     = 'scalar';
pt(343).nrows     = 1;
pt(343).ncols     = 1;
pt(343).subsource = 'SS_DOUBLE';
pt(343).ndims     = '2';
pt(343).size      = '[]';
pt(343).isStruct  = false;
pt(343).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive_P6';
pt(343).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive_P6';
pt(343).dtname     = 'real_T';



  
pt(344).blockname = 'Input Device/EtherCAT Input Device/EtherCAT PDO Receive';
pt(344).paramname = 'P7';
pt(344).class     = 'scalar';
pt(344).nrows     = 1;
pt(344).ncols     = 1;
pt(344).subsource = 'SS_DOUBLE';
pt(344).ndims     = '2';
pt(344).size      = '[]';
pt(344).isStruct  = false;
pt(344).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive_P7';
pt(344).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive_P7';
pt(344).dtname     = 'real_T';



  
pt(345).blockname = 'Input Device/Generate random block signal safety/BlockDuration 1';
pt(345).paramname = 'Mean';
pt(345).class     = 'scalar';
pt(345).nrows     = 1;
pt(345).ncols     = 1;
pt(345).subsource = 'SS_DOUBLE';
pt(345).ndims     = '2';
pt(345).size      = '[]';
pt(345).isStruct  = false;
pt(345).symbol     = 'MARCH_v1_5_P.BlockDuration1_Mean_a';
pt(345).baseaddr   = '&MARCH_v1_5_P.BlockDuration1_Mean_a';
pt(345).dtname     = 'real_T';



  
pt(346).blockname = 'Input Device/Generate random block signal safety/BlockDuration 1';
pt(346).paramname = 'StdDev';
pt(346).class     = 'scalar';
pt(346).nrows     = 1;
pt(346).ncols     = 1;
pt(346).subsource = 'SS_DOUBLE';
pt(346).ndims     = '2';
pt(346).size      = '[]';
pt(346).isStruct  = false;
pt(346).symbol     = 'MARCH_v1_5_P.BlockDuration1_StdDev_o';
pt(346).baseaddr   = '&MARCH_v1_5_P.BlockDuration1_StdDev_o';
pt(346).dtname     = 'real_T';



  
pt(347).blockname = 'Input Device/Generate random block signal safety/BlockDuration 1';
pt(347).paramname = 'Seed';
pt(347).class     = 'scalar';
pt(347).nrows     = 1;
pt(347).ncols     = 1;
pt(347).subsource = 'SS_DOUBLE';
pt(347).ndims     = '2';
pt(347).size      = '[]';
pt(347).isStruct  = false;
pt(347).symbol     = 'MARCH_v1_5_P.BlockDuration1_Seed_n';
pt(347).baseaddr   = '&MARCH_v1_5_P.BlockDuration1_Seed_n';
pt(347).dtname     = 'real_T';



  
pt(348).blockname = 'Input Device/Generate random block signal safety/BlockDuration 2';
pt(348).paramname = 'Mean';
pt(348).class     = 'scalar';
pt(348).nrows     = 1;
pt(348).ncols     = 1;
pt(348).subsource = 'SS_DOUBLE';
pt(348).ndims     = '2';
pt(348).size      = '[]';
pt(348).isStruct  = false;
pt(348).symbol     = 'MARCH_v1_5_P.BlockDuration2_Mean_a';
pt(348).baseaddr   = '&MARCH_v1_5_P.BlockDuration2_Mean_a';
pt(348).dtname     = 'real_T';



  
pt(349).blockname = 'Input Device/Generate random block signal safety/BlockDuration 2';
pt(349).paramname = 'StdDev';
pt(349).class     = 'scalar';
pt(349).nrows     = 1;
pt(349).ncols     = 1;
pt(349).subsource = 'SS_DOUBLE';
pt(349).ndims     = '2';
pt(349).size      = '[]';
pt(349).isStruct  = false;
pt(349).symbol     = 'MARCH_v1_5_P.BlockDuration2_StdDev_d';
pt(349).baseaddr   = '&MARCH_v1_5_P.BlockDuration2_StdDev_d';
pt(349).dtname     = 'real_T';



  
pt(350).blockname = 'Input Device/Generate random block signal safety/BlockDuration 2';
pt(350).paramname = 'Seed';
pt(350).class     = 'scalar';
pt(350).nrows     = 1;
pt(350).ncols     = 1;
pt(350).subsource = 'SS_DOUBLE';
pt(350).ndims     = '2';
pt(350).size      = '[]';
pt(350).isStruct  = false;
pt(350).symbol     = 'MARCH_v1_5_P.BlockDuration2_Seed_l';
pt(350).baseaddr   = '&MARCH_v1_5_P.BlockDuration2_Seed_l';
pt(350).dtname     = 'real_T';



  
pt(351).blockname = 'Input Device/Generate random block signal safety/DelayDuraction 2';
pt(351).paramname = 'Mean';
pt(351).class     = 'scalar';
pt(351).nrows     = 1;
pt(351).ncols     = 1;
pt(351).subsource = 'SS_DOUBLE';
pt(351).ndims     = '2';
pt(351).size      = '[]';
pt(351).isStruct  = false;
pt(351).symbol     = 'MARCH_v1_5_P.DelayDuraction2_Mean_p';
pt(351).baseaddr   = '&MARCH_v1_5_P.DelayDuraction2_Mean_p';
pt(351).dtname     = 'real_T';



  
pt(352).blockname = 'Input Device/Generate random block signal safety/DelayDuraction 2';
pt(352).paramname = 'StdDev';
pt(352).class     = 'scalar';
pt(352).nrows     = 1;
pt(352).ncols     = 1;
pt(352).subsource = 'SS_DOUBLE';
pt(352).ndims     = '2';
pt(352).size      = '[]';
pt(352).isStruct  = false;
pt(352).symbol     = 'MARCH_v1_5_P.DelayDuraction2_StdDev_o';
pt(352).baseaddr   = '&MARCH_v1_5_P.DelayDuraction2_StdDev_o';
pt(352).dtname     = 'real_T';



  
pt(353).blockname = 'Input Device/Generate random block signal safety/DelayDuraction 2';
pt(353).paramname = 'Seed';
pt(353).class     = 'scalar';
pt(353).nrows     = 1;
pt(353).ncols     = 1;
pt(353).subsource = 'SS_DOUBLE';
pt(353).ndims     = '2';
pt(353).size      = '[]';
pt(353).isStruct  = false;
pt(353).symbol     = 'MARCH_v1_5_P.DelayDuraction2_Seed_d';
pt(353).baseaddr   = '&MARCH_v1_5_P.DelayDuraction2_Seed_d';
pt(353).dtname     = 'real_T';



  
pt(354).blockname = 'Input Device/Generate random block signal safety/DelayDuration 1';
pt(354).paramname = 'Mean';
pt(354).class     = 'scalar';
pt(354).nrows     = 1;
pt(354).ncols     = 1;
pt(354).subsource = 'SS_DOUBLE';
pt(354).ndims     = '2';
pt(354).size      = '[]';
pt(354).isStruct  = false;
pt(354).symbol     = 'MARCH_v1_5_P.DelayDuration1_Mean_i';
pt(354).baseaddr   = '&MARCH_v1_5_P.DelayDuration1_Mean_i';
pt(354).dtname     = 'real_T';



  
pt(355).blockname = 'Input Device/Generate random block signal safety/DelayDuration 1';
pt(355).paramname = 'StdDev';
pt(355).class     = 'scalar';
pt(355).nrows     = 1;
pt(355).ncols     = 1;
pt(355).subsource = 'SS_DOUBLE';
pt(355).ndims     = '2';
pt(355).size      = '[]';
pt(355).isStruct  = false;
pt(355).symbol     = 'MARCH_v1_5_P.DelayDuration1_StdDev_j';
pt(355).baseaddr   = '&MARCH_v1_5_P.DelayDuration1_StdDev_j';
pt(355).dtname     = 'real_T';



  
pt(356).blockname = 'Input Device/Generate random block signal safety/DelayDuration 1';
pt(356).paramname = 'Seed';
pt(356).class     = 'scalar';
pt(356).nrows     = 1;
pt(356).ncols     = 1;
pt(356).subsource = 'SS_DOUBLE';
pt(356).ndims     = '2';
pt(356).size      = '[]';
pt(356).isStruct  = false;
pt(356).symbol     = 'MARCH_v1_5_P.DelayDuration1_Seed_i';
pt(356).baseaddr   = '&MARCH_v1_5_P.DelayDuration1_Seed_i';
pt(356).dtname     = 'real_T';



  
pt(357).blockname = 'Input Device/Generate random block signal trigger/BlockDuration 1';
pt(357).paramname = 'Mean';
pt(357).class     = 'scalar';
pt(357).nrows     = 1;
pt(357).ncols     = 1;
pt(357).subsource = 'SS_DOUBLE';
pt(357).ndims     = '2';
pt(357).size      = '[]';
pt(357).isStruct  = false;
pt(357).symbol     = 'MARCH_v1_5_P.BlockDuration1_Mean';
pt(357).baseaddr   = '&MARCH_v1_5_P.BlockDuration1_Mean';
pt(357).dtname     = 'real_T';



  
pt(358).blockname = 'Input Device/Generate random block signal trigger/BlockDuration 1';
pt(358).paramname = 'StdDev';
pt(358).class     = 'scalar';
pt(358).nrows     = 1;
pt(358).ncols     = 1;
pt(358).subsource = 'SS_DOUBLE';
pt(358).ndims     = '2';
pt(358).size      = '[]';
pt(358).isStruct  = false;
pt(358).symbol     = 'MARCH_v1_5_P.BlockDuration1_StdDev';
pt(358).baseaddr   = '&MARCH_v1_5_P.BlockDuration1_StdDev';
pt(358).dtname     = 'real_T';



  
pt(359).blockname = 'Input Device/Generate random block signal trigger/BlockDuration 1';
pt(359).paramname = 'Seed';
pt(359).class     = 'scalar';
pt(359).nrows     = 1;
pt(359).ncols     = 1;
pt(359).subsource = 'SS_DOUBLE';
pt(359).ndims     = '2';
pt(359).size      = '[]';
pt(359).isStruct  = false;
pt(359).symbol     = 'MARCH_v1_5_P.BlockDuration1_Seed';
pt(359).baseaddr   = '&MARCH_v1_5_P.BlockDuration1_Seed';
pt(359).dtname     = 'real_T';



  
pt(360).blockname = 'Input Device/Generate random block signal trigger/BlockDuration 2';
pt(360).paramname = 'Mean';
pt(360).class     = 'scalar';
pt(360).nrows     = 1;
pt(360).ncols     = 1;
pt(360).subsource = 'SS_DOUBLE';
pt(360).ndims     = '2';
pt(360).size      = '[]';
pt(360).isStruct  = false;
pt(360).symbol     = 'MARCH_v1_5_P.BlockDuration2_Mean';
pt(360).baseaddr   = '&MARCH_v1_5_P.BlockDuration2_Mean';
pt(360).dtname     = 'real_T';



  
pt(361).blockname = 'Input Device/Generate random block signal trigger/BlockDuration 2';
pt(361).paramname = 'StdDev';
pt(361).class     = 'scalar';
pt(361).nrows     = 1;
pt(361).ncols     = 1;
pt(361).subsource = 'SS_DOUBLE';
pt(361).ndims     = '2';
pt(361).size      = '[]';
pt(361).isStruct  = false;
pt(361).symbol     = 'MARCH_v1_5_P.BlockDuration2_StdDev';
pt(361).baseaddr   = '&MARCH_v1_5_P.BlockDuration2_StdDev';
pt(361).dtname     = 'real_T';



  
pt(362).blockname = 'Input Device/Generate random block signal trigger/BlockDuration 2';
pt(362).paramname = 'Seed';
pt(362).class     = 'scalar';
pt(362).nrows     = 1;
pt(362).ncols     = 1;
pt(362).subsource = 'SS_DOUBLE';
pt(362).ndims     = '2';
pt(362).size      = '[]';
pt(362).isStruct  = false;
pt(362).symbol     = 'MARCH_v1_5_P.BlockDuration2_Seed';
pt(362).baseaddr   = '&MARCH_v1_5_P.BlockDuration2_Seed';
pt(362).dtname     = 'real_T';



  
pt(363).blockname = 'Input Device/Generate random block signal trigger/DelayDuraction 2';
pt(363).paramname = 'Mean';
pt(363).class     = 'scalar';
pt(363).nrows     = 1;
pt(363).ncols     = 1;
pt(363).subsource = 'SS_DOUBLE';
pt(363).ndims     = '2';
pt(363).size      = '[]';
pt(363).isStruct  = false;
pt(363).symbol     = 'MARCH_v1_5_P.DelayDuraction2_Mean';
pt(363).baseaddr   = '&MARCH_v1_5_P.DelayDuraction2_Mean';
pt(363).dtname     = 'real_T';



  
pt(364).blockname = 'Input Device/Generate random block signal trigger/DelayDuraction 2';
pt(364).paramname = 'StdDev';
pt(364).class     = 'scalar';
pt(364).nrows     = 1;
pt(364).ncols     = 1;
pt(364).subsource = 'SS_DOUBLE';
pt(364).ndims     = '2';
pt(364).size      = '[]';
pt(364).isStruct  = false;
pt(364).symbol     = 'MARCH_v1_5_P.DelayDuraction2_StdDev';
pt(364).baseaddr   = '&MARCH_v1_5_P.DelayDuraction2_StdDev';
pt(364).dtname     = 'real_T';



  
pt(365).blockname = 'Input Device/Generate random block signal trigger/DelayDuraction 2';
pt(365).paramname = 'Seed';
pt(365).class     = 'scalar';
pt(365).nrows     = 1;
pt(365).ncols     = 1;
pt(365).subsource = 'SS_DOUBLE';
pt(365).ndims     = '2';
pt(365).size      = '[]';
pt(365).isStruct  = false;
pt(365).symbol     = 'MARCH_v1_5_P.DelayDuraction2_Seed';
pt(365).baseaddr   = '&MARCH_v1_5_P.DelayDuraction2_Seed';
pt(365).dtname     = 'real_T';



  
pt(366).blockname = 'Input Device/Generate random block signal trigger/DelayDuration 1';
pt(366).paramname = 'Mean';
pt(366).class     = 'scalar';
pt(366).nrows     = 1;
pt(366).ncols     = 1;
pt(366).subsource = 'SS_DOUBLE';
pt(366).ndims     = '2';
pt(366).size      = '[]';
pt(366).isStruct  = false;
pt(366).symbol     = 'MARCH_v1_5_P.DelayDuration1_Mean';
pt(366).baseaddr   = '&MARCH_v1_5_P.DelayDuration1_Mean';
pt(366).dtname     = 'real_T';



  
pt(367).blockname = 'Input Device/Generate random block signal trigger/DelayDuration 1';
pt(367).paramname = 'StdDev';
pt(367).class     = 'scalar';
pt(367).nrows     = 1;
pt(367).ncols     = 1;
pt(367).subsource = 'SS_DOUBLE';
pt(367).ndims     = '2';
pt(367).size      = '[]';
pt(367).isStruct  = false;
pt(367).symbol     = 'MARCH_v1_5_P.DelayDuration1_StdDev';
pt(367).baseaddr   = '&MARCH_v1_5_P.DelayDuration1_StdDev';
pt(367).dtname     = 'real_T';



  
pt(368).blockname = 'Input Device/Generate random block signal trigger/DelayDuration 1';
pt(368).paramname = 'Seed';
pt(368).class     = 'scalar';
pt(368).nrows     = 1;
pt(368).ncols     = 1;
pt(368).subsource = 'SS_DOUBLE';
pt(368).ndims     = '2';
pt(368).size      = '[]';
pt(368).isStruct  = false;
pt(368).symbol     = 'MARCH_v1_5_P.DelayDuration1_Seed';
pt(368).baseaddr   = '&MARCH_v1_5_P.DelayDuration1_Seed';
pt(368).dtname     = 'real_T';



  
pt(369).blockname = 'Point&Go/EtherCAT Point&Go/EtherCAT PDO Receive';
pt(369).paramname = 'P1';
pt(369).class     = 'vector';
pt(369).nrows     = 1;
pt(369).ncols     = 22;
pt(369).subsource = 'SS_DOUBLE';
pt(369).ndims     = '2';
pt(369).size      = '[]';
pt(369).isStruct  = false;
pt(369).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive_P1_a';
pt(369).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive_P1_a[0]';
pt(369).dtname     = 'real_T';



  
pt(370).blockname = 'Point&Go/EtherCAT Point&Go/EtherCAT PDO Receive';
pt(370).paramname = 'P2';
pt(370).class     = 'scalar';
pt(370).nrows     = 1;
pt(370).ncols     = 1;
pt(370).subsource = 'SS_DOUBLE';
pt(370).ndims     = '2';
pt(370).size      = '[]';
pt(370).isStruct  = false;
pt(370).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive_P2_i';
pt(370).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive_P2_i';
pt(370).dtname     = 'real_T';



  
pt(371).blockname = 'Point&Go/EtherCAT Point&Go/EtherCAT PDO Receive';
pt(371).paramname = 'P3';
pt(371).class     = 'scalar';
pt(371).nrows     = 1;
pt(371).ncols     = 1;
pt(371).subsource = 'SS_DOUBLE';
pt(371).ndims     = '2';
pt(371).size      = '[]';
pt(371).isStruct  = false;
pt(371).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive_P3_f';
pt(371).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive_P3_f';
pt(371).dtname     = 'real_T';



  
pt(372).blockname = 'Point&Go/EtherCAT Point&Go/EtherCAT PDO Receive';
pt(372).paramname = 'P4';
pt(372).class     = 'scalar';
pt(372).nrows     = 1;
pt(372).ncols     = 1;
pt(372).subsource = 'SS_DOUBLE';
pt(372).ndims     = '2';
pt(372).size      = '[]';
pt(372).isStruct  = false;
pt(372).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive_P4_p';
pt(372).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive_P4_p';
pt(372).dtname     = 'real_T';



  
pt(373).blockname = 'Point&Go/EtherCAT Point&Go/EtherCAT PDO Receive';
pt(373).paramname = 'P5';
pt(373).class     = 'scalar';
pt(373).nrows     = 1;
pt(373).ncols     = 1;
pt(373).subsource = 'SS_DOUBLE';
pt(373).ndims     = '2';
pt(373).size      = '[]';
pt(373).isStruct  = false;
pt(373).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive_P5_c';
pt(373).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive_P5_c';
pt(373).dtname     = 'real_T';



  
pt(374).blockname = 'Point&Go/EtherCAT Point&Go/EtherCAT PDO Receive';
pt(374).paramname = 'P6';
pt(374).class     = 'scalar';
pt(374).nrows     = 1;
pt(374).ncols     = 1;
pt(374).subsource = 'SS_DOUBLE';
pt(374).ndims     = '2';
pt(374).size      = '[]';
pt(374).isStruct  = false;
pt(374).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive_P6_h';
pt(374).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive_P6_h';
pt(374).dtname     = 'real_T';



  
pt(375).blockname = 'Point&Go/EtherCAT Point&Go/EtherCAT PDO Receive';
pt(375).paramname = 'P7';
pt(375).class     = 'scalar';
pt(375).nrows     = 1;
pt(375).ncols     = 1;
pt(375).subsource = 'SS_DOUBLE';
pt(375).ndims     = '2';
pt(375).size      = '[]';
pt(375).isStruct  = false;
pt(375).symbol     = 'MARCH_v1_5_P.EtherCATPDOReceive_P7_m';
pt(375).baseaddr   = '&MARCH_v1_5_P.EtherCATPDOReceive_P7_m';
pt(375).dtname     = 'real_T';



  
pt(376).blockname = 'State Machine/Create peak3/Delay';
pt(376).paramname = 'DelayLength';
pt(376).class     = 'scalar';
pt(376).nrows     = 1;
pt(376).ncols     = 1;
pt(376).subsource = 'SS_UINT32';
pt(376).ndims     = '2';
pt(376).size      = '[]';
pt(376).isStruct  = false;
pt(376).symbol     = 'MARCH_v1_5_P.Delay_DelayLength_o';
pt(376).baseaddr   = '&MARCH_v1_5_P.Delay_DelayLength_o';
pt(376).dtname     = 'uint32_T';



  
pt(377).blockname = 'State Machine/Create peak3/Delay';
pt(377).paramname = 'InitialCondition';
pt(377).class     = 'scalar';
pt(377).nrows     = 1;
pt(377).ncols     = 1;
pt(377).subsource = 'SS_DOUBLE';
pt(377).ndims     = '2';
pt(377).size      = '[]';
pt(377).isStruct  = false;
pt(377).symbol     = 'MARCH_v1_5_P.Delay_InitialCondition_p';
pt(377).baseaddr   = '&MARCH_v1_5_P.Delay_InitialCondition_p';
pt(377).dtname     = 'real_T';



  
pt(378).blockname = 'Controllers/0-Torque/RHAA/Velocity Override';
pt(378).paramname = 'Value';
pt(378).class     = 'scalar';
pt(378).nrows     = 1;
pt(378).ncols     = 1;
pt(378).subsource = 'SS_UINT32';
pt(378).ndims     = '2';
pt(378).size      = '[]';
pt(378).isStruct  = false;
pt(378).symbol     = 'MARCH_v1_5_P.VelocityOverride_Value';
pt(378).baseaddr   = '&MARCH_v1_5_P.VelocityOverride_Value';
pt(378).dtname     = 'uint32_T';



  
pt(379).blockname = 'Controllers/0-Torque/RHAA/Gain';
pt(379).paramname = 'Gain';
pt(379).class     = 'scalar';
pt(379).nrows     = 1;
pt(379).ncols     = 1;
pt(379).subsource = 'SS_UINT32';
pt(379).ndims     = '2';
pt(379).size      = '[]';
pt(379).isStruct  = false;
pt(379).symbol     = 'MARCH_v1_5_P.Gain_Gain_j';
pt(379).baseaddr   = '&MARCH_v1_5_P.Gain_Gain_j';
pt(379).dtname     = 'uint32_T';



  
pt(380).blockname = 'Controllers/0-Torque/RHAA/EtherCAT Joint Encoder';
pt(380).paramname = 'P1';
pt(380).class     = 'vector';
pt(380).nrows     = 1;
pt(380).ncols     = 22;
pt(380).subsource = 'SS_DOUBLE';
pt(380).ndims     = '2';
pt(380).size      = '[]';
pt(380).isStruct  = false;
pt(380).symbol     = 'MARCH_v1_5_P.EtherCATJointEncoder_P1';
pt(380).baseaddr   = '&MARCH_v1_5_P.EtherCATJointEncoder_P1[0]';
pt(380).dtname     = 'real_T';



  
pt(381).blockname = 'Controllers/0-Torque/RHAA/EtherCAT Joint Encoder';
pt(381).paramname = 'P2';
pt(381).class     = 'scalar';
pt(381).nrows     = 1;
pt(381).ncols     = 1;
pt(381).subsource = 'SS_DOUBLE';
pt(381).ndims     = '2';
pt(381).size      = '[]';
pt(381).isStruct  = false;
pt(381).symbol     = 'MARCH_v1_5_P.EtherCATJointEncoder_P2';
pt(381).baseaddr   = '&MARCH_v1_5_P.EtherCATJointEncoder_P2';
pt(381).dtname     = 'real_T';



  
pt(382).blockname = 'Controllers/0-Torque/RHAA/EtherCAT Joint Encoder';
pt(382).paramname = 'P3';
pt(382).class     = 'scalar';
pt(382).nrows     = 1;
pt(382).ncols     = 1;
pt(382).subsource = 'SS_DOUBLE';
pt(382).ndims     = '2';
pt(382).size      = '[]';
pt(382).isStruct  = false;
pt(382).symbol     = 'MARCH_v1_5_P.EtherCATJointEncoder_P3';
pt(382).baseaddr   = '&MARCH_v1_5_P.EtherCATJointEncoder_P3';
pt(382).dtname     = 'real_T';



  
pt(383).blockname = 'Controllers/0-Torque/RHAA/EtherCAT Joint Encoder';
pt(383).paramname = 'P4';
pt(383).class     = 'scalar';
pt(383).nrows     = 1;
pt(383).ncols     = 1;
pt(383).subsource = 'SS_DOUBLE';
pt(383).ndims     = '2';
pt(383).size      = '[]';
pt(383).isStruct  = false;
pt(383).symbol     = 'MARCH_v1_5_P.EtherCATJointEncoder_P4';
pt(383).baseaddr   = '&MARCH_v1_5_P.EtherCATJointEncoder_P4';
pt(383).dtname     = 'real_T';



  
pt(384).blockname = 'Controllers/0-Torque/RHAA/EtherCAT Joint Encoder';
pt(384).paramname = 'P5';
pt(384).class     = 'scalar';
pt(384).nrows     = 1;
pt(384).ncols     = 1;
pt(384).subsource = 'SS_DOUBLE';
pt(384).ndims     = '2';
pt(384).size      = '[]';
pt(384).isStruct  = false;
pt(384).symbol     = 'MARCH_v1_5_P.EtherCATJointEncoder_P5';
pt(384).baseaddr   = '&MARCH_v1_5_P.EtherCATJointEncoder_P5';
pt(384).dtname     = 'real_T';



  
pt(385).blockname = 'Controllers/0-Torque/RHAA/EtherCAT Joint Encoder';
pt(385).paramname = 'P6';
pt(385).class     = 'scalar';
pt(385).nrows     = 1;
pt(385).ncols     = 1;
pt(385).subsource = 'SS_DOUBLE';
pt(385).ndims     = '2';
pt(385).size      = '[]';
pt(385).isStruct  = false;
pt(385).symbol     = 'MARCH_v1_5_P.EtherCATJointEncoder_P6';
pt(385).baseaddr   = '&MARCH_v1_5_P.EtherCATJointEncoder_P6';
pt(385).dtname     = 'real_T';



  
pt(386).blockname = 'Controllers/0-Torque/RHAA/EtherCAT Joint Encoder';
pt(386).paramname = 'P7';
pt(386).class     = 'scalar';
pt(386).nrows     = 1;
pt(386).ncols     = 1;
pt(386).subsource = 'SS_DOUBLE';
pt(386).ndims     = '2';
pt(386).size      = '[]';
pt(386).isStruct  = false;
pt(386).symbol     = 'MARCH_v1_5_P.EtherCATJointEncoder_P7';
pt(386).baseaddr   = '&MARCH_v1_5_P.EtherCATJointEncoder_P7';
pt(386).dtname     = 'real_T';



  
pt(387).blockname = 'Controllers/0-Torque/RHAA/EtherCAT Motor Velocity Override';
pt(387).paramname = 'P1';
pt(387).class     = 'vector';
pt(387).nrows     = 1;
pt(387).ncols     = 18;
pt(387).subsource = 'SS_DOUBLE';
pt(387).ndims     = '2';
pt(387).size      = '[]';
pt(387).isStruct  = false;
pt(387).symbol     = 'MARCH_v1_5_P.EtherCATMotorVelocityOverride_a';
pt(387).baseaddr   = '&MARCH_v1_5_P.EtherCATMotorVelocityOverride_a[0]';
pt(387).dtname     = 'real_T';



  
pt(388).blockname = 'Controllers/0-Torque/RHAA/EtherCAT Motor Velocity Override';
pt(388).paramname = 'P2';
pt(388).class     = 'scalar';
pt(388).nrows     = 1;
pt(388).ncols     = 1;
pt(388).subsource = 'SS_DOUBLE';
pt(388).ndims     = '2';
pt(388).size      = '[]';
pt(388).isStruct  = false;
pt(388).symbol     = 'MARCH_v1_5_P.EtherCATMotorVelocityOverride_e';
pt(388).baseaddr   = '&MARCH_v1_5_P.EtherCATMotorVelocityOverride_e';
pt(388).dtname     = 'real_T';



  
pt(389).blockname = 'Controllers/0-Torque/RHAA/EtherCAT Motor Velocity Override';
pt(389).paramname = 'P3';
pt(389).class     = 'scalar';
pt(389).nrows     = 1;
pt(389).ncols     = 1;
pt(389).subsource = 'SS_DOUBLE';
pt(389).ndims     = '2';
pt(389).size      = '[]';
pt(389).isStruct  = false;
pt(389).symbol     = 'MARCH_v1_5_P.EtherCATMotorVelocityOverride_m';
pt(389).baseaddr   = '&MARCH_v1_5_P.EtherCATMotorVelocityOverride_m';
pt(389).dtname     = 'real_T';



  
pt(390).blockname = 'Controllers/0-Torque/RHAA/EtherCAT Motor Velocity Override';
pt(390).paramname = 'P4';
pt(390).class     = 'scalar';
pt(390).nrows     = 1;
pt(390).ncols     = 1;
pt(390).subsource = 'SS_DOUBLE';
pt(390).ndims     = '2';
pt(390).size      = '[]';
pt(390).isStruct  = false;
pt(390).symbol     = 'MARCH_v1_5_P.EtherCATMotorVelocityOverrid_eo';
pt(390).baseaddr   = '&MARCH_v1_5_P.EtherCATMotorVelocityOverrid_eo';
pt(390).dtname     = 'real_T';



  
pt(391).blockname = 'Controllers/0-Torque/RHAA/EtherCAT Motor Velocity Override';
pt(391).paramname = 'P5';
pt(391).class     = 'scalar';
pt(391).nrows     = 1;
pt(391).ncols     = 1;
pt(391).subsource = 'SS_DOUBLE';
pt(391).ndims     = '2';
pt(391).size      = '[]';
pt(391).isStruct  = false;
pt(391).symbol     = 'MARCH_v1_5_P.EtherCATMotorVelocityOverride_o';
pt(391).baseaddr   = '&MARCH_v1_5_P.EtherCATMotorVelocityOverride_o';
pt(391).dtname     = 'real_T';



  
pt(392).blockname = 'Controllers/0-Torque/RHAA/EtherCAT Motor Velocity Override';
pt(392).paramname = 'P6';
pt(392).class     = 'scalar';
pt(392).nrows     = 1;
pt(392).ncols     = 1;
pt(392).subsource = 'SS_DOUBLE';
pt(392).ndims     = '2';
pt(392).size      = '[]';
pt(392).isStruct  = false;
pt(392).symbol     = 'MARCH_v1_5_P.EtherCATMotorVelocityOverrid_ap';
pt(392).baseaddr   = '&MARCH_v1_5_P.EtherCATMotorVelocityOverrid_ap';
pt(392).dtname     = 'real_T';



  
pt(393).blockname = 'Controllers/0-Torque/RHAA/EtherCAT Motor Velocity Override';
pt(393).paramname = 'P7';
pt(393).class     = 'scalar';
pt(393).nrows     = 1;
pt(393).ncols     = 1;
pt(393).subsource = 'SS_DOUBLE';
pt(393).ndims     = '2';
pt(393).size      = '[]';
pt(393).isStruct  = false;
pt(393).symbol     = 'MARCH_v1_5_P.EtherCATMotorVelocityOverride_c';
pt(393).baseaddr   = '&MARCH_v1_5_P.EtherCATMotorVelocityOverride_c';
pt(393).dtname     = 'real_T';



  
pt(394).blockname = 'Controllers/0-Torque/RHAA/EtherCAT Motor Velocity Setpoint';
pt(394).paramname = 'P1';
pt(394).class     = 'vector';
pt(394).nrows     = 1;
pt(394).ncols     = 18;
pt(394).subsource = 'SS_DOUBLE';
pt(394).ndims     = '2';
pt(394).size      = '[]';
pt(394).isStruct  = false;
pt(394).symbol     = 'MARCH_v1_5_P.EtherCATMotorVelocitySetpoint_b';
pt(394).baseaddr   = '&MARCH_v1_5_P.EtherCATMotorVelocitySetpoint_b[0]';
pt(394).dtname     = 'real_T';



  
pt(395).blockname = 'Controllers/0-Torque/RHAA/EtherCAT Motor Velocity Setpoint';
pt(395).paramname = 'P2';
pt(395).class     = 'scalar';
pt(395).nrows     = 1;
pt(395).ncols     = 1;
pt(395).subsource = 'SS_DOUBLE';
pt(395).ndims     = '2';
pt(395).size      = '[]';
pt(395).isStruct  = false;
pt(395).symbol     = 'MARCH_v1_5_P.EtherCATMotorVelocitySetpoint_o';
pt(395).baseaddr   = '&MARCH_v1_5_P.EtherCATMotorVelocitySetpoint_o';
pt(395).dtname     = 'real_T';



  
pt(396).blockname = 'Controllers/0-Torque/RHAA/EtherCAT Motor Velocity Setpoint';
pt(396).paramname = 'P3';
pt(396).class     = 'scalar';
pt(396).nrows     = 1;
pt(396).ncols     = 1;
pt(396).subsource = 'SS_DOUBLE';
pt(396).ndims     = '2';
pt(396).size      = '[]';
pt(396).isStruct  = false;
pt(396).symbol     = 'MARCH_v1_5_P.EtherCATMotorVelocitySetpoint_k';
pt(396).baseaddr   = '&MARCH_v1_5_P.EtherCATMotorVelocitySetpoint_k';
pt(396).dtname     = 'real_T';



  
pt(397).blockname = 'Controllers/0-Torque/RHAA/EtherCAT Motor Velocity Setpoint';
pt(397).paramname = 'P4';
pt(397).class     = 'scalar';
pt(397).nrows     = 1;
pt(397).ncols     = 1;
pt(397).subsource = 'SS_DOUBLE';
pt(397).ndims     = '2';
pt(397).size      = '[]';
pt(397).isStruct  = false;
pt(397).symbol     = 'MARCH_v1_5_P.EtherCATMotorVelocitySetpoin_od';
pt(397).baseaddr   = '&MARCH_v1_5_P.EtherCATMotorVelocitySetpoin_od';
pt(397).dtname     = 'real_T';



  
pt(398).blockname = 'Controllers/0-Torque/RHAA/EtherCAT Motor Velocity Setpoint';
pt(398).paramname = 'P5';
pt(398).class     = 'scalar';
pt(398).nrows     = 1;
pt(398).ncols     = 1;
pt(398).subsource = 'SS_DOUBLE';
pt(398).ndims     = '2';
pt(398).size      = '[]';
pt(398).isStruct  = false;
pt(398).symbol     = 'MARCH_v1_5_P.EtherCATMotorVelocitySetpoin_b0';
pt(398).baseaddr   = '&MARCH_v1_5_P.EtherCATMotorVelocitySetpoin_b0';
pt(398).dtname     = 'real_T';



  
pt(399).blockname = 'Controllers/0-Torque/RHAA/EtherCAT Motor Velocity Setpoint';
pt(399).paramname = 'P6';
pt(399).class     = 'scalar';
pt(399).nrows     = 1;
pt(399).ncols     = 1;
pt(399).subsource = 'SS_DOUBLE';
pt(399).ndims     = '2';
pt(399).size      = '[]';
pt(399).isStruct  = false;
pt(399).symbol     = 'MARCH_v1_5_P.EtherCATMotorVelocitySetpoint_a';
pt(399).baseaddr   = '&MARCH_v1_5_P.EtherCATMotorVelocitySetpoint_a';
pt(399).dtname     = 'real_T';



  
pt(400).blockname = 'Controllers/0-Torque/RHAA/EtherCAT Motor Velocity Setpoint';
pt(400).paramname = 'P7';
pt(400).class     = 'scalar';
pt(400).nrows     = 1;
pt(400).ncols     = 1;
pt(400).subsource = 'SS_DOUBLE';
pt(400).ndims     = '2';
pt(400).size      = '[]';
pt(400).isStruct  = false;
pt(400).symbol     = 'MARCH_v1_5_P.EtherCATMotorVelocitySetpoin_kz';
pt(400).baseaddr   = '&MARCH_v1_5_P.EtherCATMotorVelocitySetpoin_kz';
pt(400).dtname     = 'real_T';



  
pt(401).blockname = 'Controllers/0-Torque/RHAA/EtherCAT Spring Encoder';
pt(401).paramname = 'P1';
pt(401).class     = 'vector';
pt(401).nrows     = 1;
pt(401).ncols     = 22;
pt(401).subsource = 'SS_DOUBLE';
pt(401).ndims     = '2';
pt(401).size      = '[]';
pt(401).isStruct  = false;
pt(401).symbol     = 'MARCH_v1_5_P.EtherCATSpringEncoder_P1';
pt(401).baseaddr   = '&MARCH_v1_5_P.EtherCATSpringEncoder_P1[0]';
pt(401).dtname     = 'real_T';



  
pt(402).blockname = 'Controllers/0-Torque/RHAA/EtherCAT Spring Encoder';
pt(402).paramname = 'P2';
pt(402).class     = 'scalar';
pt(402).nrows     = 1;
pt(402).ncols     = 1;
pt(402).subsource = 'SS_DOUBLE';
pt(402).ndims     = '2';
pt(402).size      = '[]';
pt(402).isStruct  = false;
pt(402).symbol     = 'MARCH_v1_5_P.EtherCATSpringEncoder_P2';
pt(402).baseaddr   = '&MARCH_v1_5_P.EtherCATSpringEncoder_P2';
pt(402).dtname     = 'real_T';



  
pt(403).blockname = 'Controllers/0-Torque/RHAA/EtherCAT Spring Encoder';
pt(403).paramname = 'P3';
pt(403).class     = 'scalar';
pt(403).nrows     = 1;
pt(403).ncols     = 1;
pt(403).subsource = 'SS_DOUBLE';
pt(403).ndims     = '2';
pt(403).size      = '[]';
pt(403).isStruct  = false;
pt(403).symbol     = 'MARCH_v1_5_P.EtherCATSpringEncoder_P3';
pt(403).baseaddr   = '&MARCH_v1_5_P.EtherCATSpringEncoder_P3';
pt(403).dtname     = 'real_T';



  
pt(404).blockname = 'Controllers/0-Torque/RHAA/EtherCAT Spring Encoder';
pt(404).paramname = 'P4';
pt(404).class     = 'scalar';
pt(404).nrows     = 1;
pt(404).ncols     = 1;
pt(404).subsource = 'SS_DOUBLE';
pt(404).ndims     = '2';
pt(404).size      = '[]';
pt(404).isStruct  = false;
pt(404).symbol     = 'MARCH_v1_5_P.EtherCATSpringEncoder_P4';
pt(404).baseaddr   = '&MARCH_v1_5_P.EtherCATSpringEncoder_P4';
pt(404).dtname     = 'real_T';



  
pt(405).blockname = 'Controllers/0-Torque/RHAA/EtherCAT Spring Encoder';
pt(405).paramname = 'P5';
pt(405).class     = 'scalar';
pt(405).nrows     = 1;
pt(405).ncols     = 1;
pt(405).subsource = 'SS_DOUBLE';
pt(405).ndims     = '2';
pt(405).size      = '[]';
pt(405).isStruct  = false;
pt(405).symbol     = 'MARCH_v1_5_P.EtherCATSpringEncoder_P5';
pt(405).baseaddr   = '&MARCH_v1_5_P.EtherCATSpringEncoder_P5';
pt(405).dtname     = 'real_T';



  
pt(406).blockname = 'Controllers/0-Torque/RHAA/EtherCAT Spring Encoder';
pt(406).paramname = 'P6';
pt(406).class     = 'scalar';
pt(406).nrows     = 1;
pt(406).ncols     = 1;
pt(406).subsource = 'SS_DOUBLE';
pt(406).ndims     = '2';
pt(406).size      = '[]';
pt(406).isStruct  = false;
pt(406).symbol     = 'MARCH_v1_5_P.EtherCATSpringEncoder_P6';
pt(406).baseaddr   = '&MARCH_v1_5_P.EtherCATSpringEncoder_P6';
pt(406).dtname     = 'real_T';



  
pt(407).blockname = 'Controllers/0-Torque/RHAA/EtherCAT Spring Encoder';
pt(407).paramname = 'P7';
pt(407).class     = 'scalar';
pt(407).nrows     = 1;
pt(407).ncols     = 1;
pt(407).subsource = 'SS_DOUBLE';
pt(407).ndims     = '2';
pt(407).size      = '[]';
pt(407).isStruct  = false;
pt(407).symbol     = 'MARCH_v1_5_P.EtherCATSpringEncoder_P7';
pt(407).baseaddr   = '&MARCH_v1_5_P.EtherCATSpringEncoder_P7';
pt(407).dtname     = 'real_T';



  
pt(408).blockname = 'Input Device/Generate random block signal safety/Create peak1/Delay';
pt(408).paramname = 'DelayLength';
pt(408).class     = 'scalar';
pt(408).nrows     = 1;
pt(408).ncols     = 1;
pt(408).subsource = 'SS_UINT32';
pt(408).ndims     = '2';
pt(408).size      = '[]';
pt(408).isStruct  = false;
pt(408).symbol     = 'MARCH_v1_5_P.Delay_DelayLength_c';
pt(408).baseaddr   = '&MARCH_v1_5_P.Delay_DelayLength_c';
pt(408).dtname     = 'uint32_T';



  
pt(409).blockname = 'Input Device/Generate random block signal safety/Create peak1/Delay';
pt(409).paramname = 'InitialCondition';
pt(409).class     = 'scalar';
pt(409).nrows     = 1;
pt(409).ncols     = 1;
pt(409).subsource = 'SS_DOUBLE';
pt(409).ndims     = '2';
pt(409).size      = '[]';
pt(409).isStruct  = false;
pt(409).symbol     = 'MARCH_v1_5_P.Delay_InitialCondition_o';
pt(409).baseaddr   = '&MARCH_v1_5_P.Delay_InitialCondition_o';
pt(409).dtname     = 'real_T';



  
pt(410).blockname = 'Input Device/Generate random block signal safety/Create peak2/Delay';
pt(410).paramname = 'DelayLength';
pt(410).class     = 'scalar';
pt(410).nrows     = 1;
pt(410).ncols     = 1;
pt(410).subsource = 'SS_UINT32';
pt(410).ndims     = '2';
pt(410).size      = '[]';
pt(410).isStruct  = false;
pt(410).symbol     = 'MARCH_v1_5_P.Delay_DelayLength_i';
pt(410).baseaddr   = '&MARCH_v1_5_P.Delay_DelayLength_i';
pt(410).dtname     = 'uint32_T';



  
pt(411).blockname = 'Input Device/Generate random block signal safety/Create peak2/Delay';
pt(411).paramname = 'InitialCondition';
pt(411).class     = 'scalar';
pt(411).nrows     = 1;
pt(411).ncols     = 1;
pt(411).subsource = 'SS_DOUBLE';
pt(411).ndims     = '2';
pt(411).size      = '[]';
pt(411).isStruct  = false;
pt(411).symbol     = 'MARCH_v1_5_P.Delay_InitialCondition_fr';
pt(411).baseaddr   = '&MARCH_v1_5_P.Delay_InitialCondition_fr';
pt(411).dtname     = 'real_T';



  
pt(412).blockname = 'Input Device/Generate random block signal safety/Create peak3/Delay';
pt(412).paramname = 'DelayLength';
pt(412).class     = 'scalar';
pt(412).nrows     = 1;
pt(412).ncols     = 1;
pt(412).subsource = 'SS_UINT32';
pt(412).ndims     = '2';
pt(412).size      = '[]';
pt(412).isStruct  = false;
pt(412).symbol     = 'MARCH_v1_5_P.Delay_DelayLength_ij';
pt(412).baseaddr   = '&MARCH_v1_5_P.Delay_DelayLength_ij';
pt(412).dtname     = 'uint32_T';



  
pt(413).blockname = 'Input Device/Generate random block signal safety/Create peak3/Delay';
pt(413).paramname = 'InitialCondition';
pt(413).class     = 'scalar';
pt(413).nrows     = 1;
pt(413).ncols     = 1;
pt(413).subsource = 'SS_DOUBLE';
pt(413).ndims     = '2';
pt(413).size      = '[]';
pt(413).isStruct  = false;
pt(413).symbol     = 'MARCH_v1_5_P.Delay_InitialCondition_b';
pt(413).baseaddr   = '&MARCH_v1_5_P.Delay_InitialCondition_b';
pt(413).dtname     = 'real_T';



  
pt(414).blockname = 'Input Device/Generate random block signal trigger/Create peak1/Delay';
pt(414).paramname = 'DelayLength';
pt(414).class     = 'scalar';
pt(414).nrows     = 1;
pt(414).ncols     = 1;
pt(414).subsource = 'SS_UINT32';
pt(414).ndims     = '2';
pt(414).size      = '[]';
pt(414).isStruct  = false;
pt(414).symbol     = 'MARCH_v1_5_P.Delay_DelayLength_d';
pt(414).baseaddr   = '&MARCH_v1_5_P.Delay_DelayLength_d';
pt(414).dtname     = 'uint32_T';



  
pt(415).blockname = 'Input Device/Generate random block signal trigger/Create peak1/Delay';
pt(415).paramname = 'InitialCondition';
pt(415).class     = 'scalar';
pt(415).nrows     = 1;
pt(415).ncols     = 1;
pt(415).subsource = 'SS_DOUBLE';
pt(415).ndims     = '2';
pt(415).size      = '[]';
pt(415).isStruct  = false;
pt(415).symbol     = 'MARCH_v1_5_P.Delay_InitialCondition_i';
pt(415).baseaddr   = '&MARCH_v1_5_P.Delay_InitialCondition_i';
pt(415).dtname     = 'real_T';



  
pt(416).blockname = 'Input Device/Generate random block signal trigger/Create peak2/Delay';
pt(416).paramname = 'DelayLength';
pt(416).class     = 'scalar';
pt(416).nrows     = 1;
pt(416).ncols     = 1;
pt(416).subsource = 'SS_UINT32';
pt(416).ndims     = '2';
pt(416).size      = '[]';
pt(416).isStruct  = false;
pt(416).symbol     = 'MARCH_v1_5_P.Delay_DelayLength_n';
pt(416).baseaddr   = '&MARCH_v1_5_P.Delay_DelayLength_n';
pt(416).dtname     = 'uint32_T';



  
pt(417).blockname = 'Input Device/Generate random block signal trigger/Create peak2/Delay';
pt(417).paramname = 'InitialCondition';
pt(417).class     = 'scalar';
pt(417).nrows     = 1;
pt(417).ncols     = 1;
pt(417).subsource = 'SS_DOUBLE';
pt(417).ndims     = '2';
pt(417).size      = '[]';
pt(417).isStruct  = false;
pt(417).symbol     = 'MARCH_v1_5_P.Delay_InitialCondition_f';
pt(417).baseaddr   = '&MARCH_v1_5_P.Delay_InitialCondition_f';
pt(417).dtname     = 'real_T';



  
pt(418).blockname = 'Input Device/Generate random block signal trigger/Create peak3/Delay';
pt(418).paramname = 'DelayLength';
pt(418).class     = 'scalar';
pt(418).nrows     = 1;
pt(418).ncols     = 1;
pt(418).subsource = 'SS_UINT32';
pt(418).ndims     = '2';
pt(418).size      = '[]';
pt(418).isStruct  = false;
pt(418).symbol     = 'MARCH_v1_5_P.Delay_DelayLength_m';
pt(418).baseaddr   = '&MARCH_v1_5_P.Delay_DelayLength_m';
pt(418).dtname     = 'uint32_T';



  
pt(419).blockname = 'Input Device/Generate random block signal trigger/Create peak3/Delay';
pt(419).paramname = 'InitialCondition';
pt(419).class     = 'scalar';
pt(419).nrows     = 1;
pt(419).ncols     = 1;
pt(419).subsource = 'SS_DOUBLE';
pt(419).ndims     = '2';
pt(419).size      = '[]';
pt(419).isStruct  = false;
pt(419).symbol     = 'MARCH_v1_5_P.Delay_InitialCondition_fm';
pt(419).baseaddr   = '&MARCH_v1_5_P.Delay_InitialCondition_fm';
pt(419).dtname     = 'real_T';



  
pt(420).blockname = '';
pt(420).paramname = 'par';
pt(420).class     = 'scalar';
pt(420).nrows     = 1;
pt(420).ncols     = 1;
pt(420).subsource = '';
pt(420).ndims     = '2';
pt(420).size      = '[]';
pt(420).isStruct  = true;
pt(420).symbol     = 'MARCH_v1_5_P.par';
pt(420).baseaddr   = '&MARCH_v1_5_P.par';
pt(420).dtname     = 'struct_qp5kuiWII5n5rBhED3GonD';
pt(420).elements(1).symbol     = 'dimensions';
pt(420).elements(1).nrows     = 1;
pt(420).elements(1).ncols     = 1;
pt(420).elements(1).dtname     = 'struct_ZpgCdW5JtuB5cVmaeyPorE';
pt(420).elements(2).symbol     = 'encoder_limit';
pt(420).elements(2).nrows     = 1;
pt(420).elements(2).ncols     = 1;
pt(420).elements(2).dtname     = 'struct_OBtc9Z7kNaOBweUN8UV7FC';
pt(420).elements(3).symbol     = 'jointAngle_limit';
pt(420).elements(3).nrows     = 1;
pt(420).elements(3).ncols     = 1;
pt(420).elements(3).dtname     = 'struct_OBtc9Z7kNaOBweUN8UV7FC';
pt(420).elements(4).symbol     = 'joint_limit_min';
pt(420).elements(4).nrows     = 1;
pt(420).elements(4).ncols     = 6;
pt(420).elements(4).dtname     = 'real_T';
pt(420).elements(5).symbol     = 'joint_limit_max';
pt(420).elements(5).nrows     = 1;
pt(420).elements(5).ncols     = 6;
pt(420).elements(5).dtname     = 'real_T';


function len = getlenPT
len = 420;

