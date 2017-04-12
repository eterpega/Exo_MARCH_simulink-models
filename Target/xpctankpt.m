function pt=xpctankpt
pt = [];

  
pt(1).blockname = 'PumpSwitch';
pt(1).paramname = 'Value';
pt(1).class     = 'scalar';
pt(1).nrows     = 1;
pt(1).ncols     = 1;
pt(1).subsource = 'SS_DOUBLE';
pt(1).ndims     = '2';
pt(1).size      = '[]';
pt(1).isStruct  = false;
pt(1).symbol     = 'xpctank_P.PumpSwitch_Value';
pt(1).baseaddr   = '&xpctank_P.PumpSwitch_Value';
pt(1).dtname     = 'real_T';

pt(getlenPT) = pt(1);


  
pt(2).blockname = 'SetPoint';
pt(2).paramname = 'Value';
pt(2).class     = 'scalar';
pt(2).nrows     = 1;
pt(2).ncols     = 1;
pt(2).subsource = 'SS_DOUBLE';
pt(2).ndims     = '2';
pt(2).size      = '[]';
pt(2).isStruct  = false;
pt(2).symbol     = 'xpctank_P.SetPoint_Value';
pt(2).baseaddr   = '&xpctank_P.SetPoint_Value';
pt(2).dtname     = 'real_T';



  
pt(3).blockname = 'ValveSwitch';
pt(3).paramname = 'Value';
pt(3).class     = 'scalar';
pt(3).nrows     = 1;
pt(3).ncols     = 1;
pt(3).subsource = 'SS_DOUBLE';
pt(3).ndims     = '2';
pt(3).size      = '[]';
pt(3).isStruct  = false;
pt(3).symbol     = 'xpctank_P.ValveSwitch_Value';
pt(3).baseaddr   = '&xpctank_P.ValveSwitch_Value';
pt(3).dtname     = 'real_T';



  
pt(4).blockname = 'Gain';
pt(4).paramname = 'Gain';
pt(4).class     = 'scalar';
pt(4).nrows     = 1;
pt(4).ncols     = 1;
pt(4).subsource = 'SS_DOUBLE';
pt(4).ndims     = '2';
pt(4).size      = '[]';
pt(4).isStruct  = false;
pt(4).symbol     = 'xpctank_P.Gain_Gain';
pt(4).baseaddr   = '&xpctank_P.Gain_Gain';
pt(4).dtname     = 'real_T';



  
pt(5).blockname = 'Gain1';
pt(5).paramname = 'Gain';
pt(5).class     = 'scalar';
pt(5).nrows     = 1;
pt(5).ncols     = 1;
pt(5).subsource = 'SS_DOUBLE';
pt(5).ndims     = '2';
pt(5).size      = '[]';
pt(5).isStruct  = false;
pt(5).symbol     = 'xpctank_P.Gain1_Gain';
pt(5).baseaddr   = '&xpctank_P.Gain1_Gain';
pt(5).dtname     = 'real_T';



  
pt(6).blockname = 'Gain2';
pt(6).paramname = 'Gain';
pt(6).class     = 'scalar';
pt(6).nrows     = 1;
pt(6).ncols     = 1;
pt(6).subsource = 'SS_DOUBLE';
pt(6).ndims     = '2';
pt(6).size      = '[]';
pt(6).isStruct  = false;
pt(6).symbol     = 'xpctank_P.Gain2_Gain';
pt(6).baseaddr   = '&xpctank_P.Gain2_Gain';
pt(6).dtname     = 'real_T';



  
pt(7).blockname = 'TankLevel';
pt(7).paramname = 'InitialCondition';
pt(7).class     = 'scalar';
pt(7).nrows     = 1;
pt(7).ncols     = 1;
pt(7).subsource = 'SS_DOUBLE';
pt(7).ndims     = '2';
pt(7).size      = '[]';
pt(7).isStruct  = false;
pt(7).symbol     = 'xpctank_P.TankLevel_IC';
pt(7).baseaddr   = '&xpctank_P.TankLevel_IC';
pt(7).dtname     = 'real_T';



  
pt(8).blockname = 'TankLevel';
pt(8).paramname = 'UpperSaturationLimit';
pt(8).class     = 'scalar';
pt(8).nrows     = 1;
pt(8).ncols     = 1;
pt(8).subsource = 'SS_DOUBLE';
pt(8).ndims     = '2';
pt(8).size      = '[]';
pt(8).isStruct  = false;
pt(8).symbol     = 'xpctank_P.TankLevel_UpperSat';
pt(8).baseaddr   = '&xpctank_P.TankLevel_UpperSat';
pt(8).dtname     = 'real_T';



  
pt(9).blockname = 'TankLevel';
pt(9).paramname = 'LowerSaturationLimit';
pt(9).class     = 'scalar';
pt(9).nrows     = 1;
pt(9).ncols     = 1;
pt(9).subsource = 'SS_DOUBLE';
pt(9).ndims     = '2';
pt(9).size      = '[]';
pt(9).isStruct  = false;
pt(9).symbol     = 'xpctank_P.TankLevel_LowerSat';
pt(9).baseaddr   = '&xpctank_P.TankLevel_LowerSat';
pt(9).dtname     = 'real_T';



  
pt(10).blockname = 'Controller';
pt(10).paramname = 'OnSwitchValue';
pt(10).class     = 'scalar';
pt(10).nrows     = 1;
pt(10).ncols     = 1;
pt(10).subsource = 'SS_DOUBLE';
pt(10).ndims     = '2';
pt(10).size      = '[]';
pt(10).isStruct  = false;
pt(10).symbol     = 'xpctank_P.Controller_OnVal';
pt(10).baseaddr   = '&xpctank_P.Controller_OnVal';
pt(10).dtname     = 'real_T';



  
pt(11).blockname = 'Controller';
pt(11).paramname = 'OffSwitchValue';
pt(11).class     = 'scalar';
pt(11).nrows     = 1;
pt(11).ncols     = 1;
pt(11).subsource = 'SS_DOUBLE';
pt(11).ndims     = '2';
pt(11).size      = '[]';
pt(11).isStruct  = false;
pt(11).symbol     = 'xpctank_P.Controller_OffVal';
pt(11).baseaddr   = '&xpctank_P.Controller_OffVal';
pt(11).dtname     = 'real_T';



  
pt(12).blockname = 'Controller';
pt(12).paramname = 'OnOutputValue';
pt(12).class     = 'scalar';
pt(12).nrows     = 1;
pt(12).ncols     = 1;
pt(12).subsource = 'SS_DOUBLE';
pt(12).ndims     = '2';
pt(12).size      = '[]';
pt(12).isStruct  = false;
pt(12).symbol     = 'xpctank_P.Controller_YOn';
pt(12).baseaddr   = '&xpctank_P.Controller_YOn';
pt(12).dtname     = 'real_T';



  
pt(13).blockname = 'Controller';
pt(13).paramname = 'OffOutputValue';
pt(13).class     = 'scalar';
pt(13).nrows     = 1;
pt(13).ncols     = 1;
pt(13).subsource = 'SS_DOUBLE';
pt(13).ndims     = '2';
pt(13).size      = '[]';
pt(13).isStruct  = false;
pt(13).symbol     = 'xpctank_P.Controller_YOff';
pt(13).baseaddr   = '&xpctank_P.Controller_YOff';
pt(13).dtname     = 'real_T';


function len = getlenPT
len = 13;

