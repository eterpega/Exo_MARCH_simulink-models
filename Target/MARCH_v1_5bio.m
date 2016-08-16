function bio=MARCH_v1_5bio
bio = [];
bio(1).blkName='Delay';
bio(1).sigName='';
bio(1).portIdx=0;
bio(1).dim=[1,6];
bio(1).sigWidth=6;
bio(1).sigAddress='&MARCH_v1_5_B.Delay_c[0]';
bio(1).ndims=2;
bio(1).size=[];
bio(1).isStruct=false;
bio(getlenBIO) = bio(1);

bio(2).blkName='Delay1';
bio(2).sigName='';
bio(2).portIdx=0;
bio(2).dim=[1,1];
bio(2).sigWidth=1;
bio(2).sigAddress='&MARCH_v1_5_B.Delay1';
bio(2).ndims=2;
bio(2).size=[];
bio(2).isStruct=false;

bio(3).blkName='Controllers/Switcher/p1';
bio(3).sigName='';
bio(3).portIdx=0;
bio(3).dim=[1,1];
bio(3).sigWidth=1;
bio(3).sigAddress='&MARCH_v1_5_B.index';
bio(3).ndims=2;
bio(3).size=[];
bio(3).isStruct=false;

bio(4).blkName='Controllers/Switcher/p2';
bio(4).sigName='';
bio(4).portIdx=1;
bio(4).dim=[10,1];
bio(4).sigWidth=10;
bio(4).sigAddress='&MARCH_v1_5_B.enable[0]';
bio(4).ndims=2;
bio(4).size=[];
bio(4).isStruct=false;

bio(5).blkName='Controllers/Gain';
bio(5).sigName='RHAA';
bio(5).portIdx=0;
bio(5).dim=[1,1];
bio(5).sigWidth=1;
bio(5).sigAddress='&MARCH_v1_5_B.RHAA';
bio(5).ndims=2;
bio(5).size=[];
bio(5).isStruct=false;

bio(6).blkName='Controllers/Gain1';
bio(6).sigName='RHFE';
bio(6).portIdx=0;
bio(6).dim=[1,1];
bio(6).sigWidth=1;
bio(6).sigAddress='&MARCH_v1_5_B.RHFE';
bio(6).ndims=2;
bio(6).size=[];
bio(6).isStruct=false;

bio(7).blkName='Controllers/Gain2';
bio(7).sigName='RKFE';
bio(7).portIdx=0;
bio(7).dim=[1,1];
bio(7).sigWidth=1;
bio(7).sigAddress='&MARCH_v1_5_B.RKFE';
bio(7).ndims=2;
bio(7).size=[];
bio(7).isStruct=false;

bio(8).blkName='Controllers/Gain3';
bio(8).sigName='LHAA';
bio(8).portIdx=0;
bio(8).dim=[1,1];
bio(8).sigWidth=1;
bio(8).sigAddress='&MARCH_v1_5_B.LHAA';
bio(8).ndims=2;
bio(8).size=[];
bio(8).isStruct=false;

bio(9).blkName='Controllers/Gain4';
bio(9).sigName='LHFE';
bio(9).portIdx=0;
bio(9).dim=[1,1];
bio(9).sigWidth=1;
bio(9).sigAddress='&MARCH_v1_5_B.LHFE';
bio(9).ndims=2;
bio(9).size=[];
bio(9).isStruct=false;

bio(10).blkName='Controllers/Gain5';
bio(10).sigName='LKFE';
bio(10).portIdx=0;
bio(10).dim=[1,1];
bio(10).sigWidth=1;
bio(10).sigAddress='&MARCH_v1_5_B.LKFE';
bio(10).ndims=2;
bio(10).size=[];
bio(10).isStruct=false;

bio(11).blkName='Controllers/Gain6';
bio(11).sigName='done';
bio(11).portIdx=0;
bio(11).dim=[1,1];
bio(11).sigWidth=1;
bio(11).sigAddress='&MARCH_v1_5_B.done';
bio(11).ndims=2;
bio(11).size=[];
bio(11).isStruct=false;

bio(12).blkName='Controllers/Multiport Switch';
bio(12).sigName='';
bio(12).portIdx=0;
bio(12).dim=[1,6];
bio(12).sigWidth=6;
bio(12).sigAddress='&MARCH_v1_5_B.MultiportSwitch[0]';
bio(12).ndims=2;
bio(12).size=[];
bio(12).isStruct=false;

bio(13).blkName='Controllers/Multiport Switch1';
bio(13).sigName='';
bio(13).portIdx=0;
bio(13).dim=[1,1];
bio(13).sigWidth=1;
bio(13).sigAddress='&MARCH_v1_5_B.MultiportSwitch1';
bio(13).ndims=2;
bio(13).size=[];
bio(13).isStruct=false;

bio(14).blkName='Controllers/Saturation';
bio(14).sigName='';
bio(14).portIdx=0;
bio(14).dim=[1,1];
bio(14).sigWidth=1;
bio(14).sigAddress='&MARCH_v1_5_B.Saturation';
bio(14).ndims=2;
bio(14).size=[];
bio(14).isStruct=false;

bio(15).blkName='EtherCAT Initialization/EtherCAT Init';
bio(15).sigName='';
bio(15).portIdx=0;
bio(15).dim=[6,1];
bio(15).sigWidth=6;
bio(15).sigAddress='&MARCH_v1_5_B.EtherCATInit[0]';
bio(15).ndims=2;
bio(15).size=[];
bio(15).isStruct=false;

bio(16).blkName='EtherCAT Joint Data In/MATLAB Function';
bio(16).sigName='';
bio(16).portIdx=0;
bio(16).dim=[6,1];
bio(16).sigWidth=6;
bio(16).sigAddress='&MARCH_v1_5_B.angles[0]';
bio(16).ndims=2;
bio(16).size=[];
bio(16).isStruct=false;

bio(17).blkName='EtherCAT Joint Data In/Data Type Conversion';
bio(17).sigName='';
bio(17).portIdx=0;
bio(17).dim=[6,1];
bio(17).sigWidth=6;
bio(17).sigAddress='&MARCH_v1_5_B.DataTypeConversion[0]';
bio(17).ndims=2;
bio(17).size=[];
bio(17).isStruct=false;

bio(18).blkName='Exoskeleton parameters/Constant';
bio(18).sigName='';
bio(18).portIdx=0;
bio(18).dim=[1,1];
bio(18).sigWidth=1;
bio(18).sigAddress='&MARCH_v1_5_B.Constant';
bio(18).ndims=2;
bio(18).size=[];
bio(18).isStruct=false;

bio(19).blkName='Input Device/Gain';
bio(19).sigName='right trigger';
bio(19).portIdx=0;
bio(19).dim=[1,1];
bio(19).sigWidth=1;
bio(19).sigAddress='&MARCH_v1_5_B.righttrigger';
bio(19).ndims=2;
bio(19).size=[];
bio(19).isStruct=false;

bio(20).blkName='Input Device/Gain1';
bio(20).sigName='left trigger';
bio(20).portIdx=0;
bio(20).dim=[1,1];
bio(20).sigWidth=1;
bio(20).sigAddress='&MARCH_v1_5_B.lefttrigger';
bio(20).ndims=2;
bio(20).size=[];
bio(20).isStruct=false;

bio(21).blkName='Input Device/Gain2';
bio(21).sigName='right safety';
bio(21).portIdx=0;
bio(21).dim=[1,1];
bio(21).sigWidth=1;
bio(21).sigAddress='&MARCH_v1_5_B.rightsafety';
bio(21).ndims=2;
bio(21).size=[];
bio(21).isStruct=false;

bio(22).blkName='Input Device/Gain3';
bio(22).sigName='left safety';
bio(22).portIdx=0;
bio(22).dim=[1,1];
bio(22).sigWidth=1;
bio(22).sigAddress='&MARCH_v1_5_B.leftsafety';
bio(22).ndims=2;
bio(22).size=[];
bio(22).isStruct=false;

bio(23).blkName='Input Device/Gain4';
bio(23).sigName='Right Scroll Mode';
bio(23).portIdx=0;
bio(23).dim=[1,1];
bio(23).sigWidth=1;
bio(23).sigAddress='&MARCH_v1_5_B.RightScrollMode';
bio(23).ndims=2;
bio(23).size=[];
bio(23).isStruct=false;

bio(24).blkName='Input Device/Gain5';
bio(24).sigName='Richt Scroll Click';
bio(24).portIdx=0;
bio(24).dim=[1,1];
bio(24).sigWidth=1;
bio(24).sigAddress='&MARCH_v1_5_B.RichtScrollClick';
bio(24).ndims=2;
bio(24).size=[];
bio(24).isStruct=false;

bio(25).blkName='Input Device/Switch';
bio(25).sigName='';
bio(25).portIdx=0;
bio(25).dim=[6,1];
bio(25).sigWidth=6;
bio(25).sigAddress='&MARCH_v1_5_B.Switch[0]';
bio(25).ndims=2;
bio(25).size=[];
bio(25).isStruct=false;

bio(26).blkName='Joint Angle Feedback Switch/Switch';
bio(26).sigName='';
bio(26).portIdx=0;
bio(26).dim=[1,6];
bio(26).sigWidth=6;
bio(26).sigAddress='&MARCH_v1_5_B.Switch_m[0]';
bio(26).ndims=2;
bio(26).size=[];
bio(26).isStruct=false;

bio(27).blkName='Point&Go/Switch';
bio(27).sigName='';
bio(27).portIdx=0;
bio(27).dim=[3,1];
bio(27).sigWidth=3;
bio(27).sigAddress='&MARCH_v1_5_B.Switch_b[0]';
bio(27).ndims=2;
bio(27).size=[];
bio(27).isStruct=false;

bio(28).blkName='Reachability/Data Type Conversion';
bio(28).sigName='';
bio(28).portIdx=0;
bio(28).dim=[1,6];
bio(28).sigWidth=6;
bio(28).sigAddress='&MARCH_v1_5_B.DataTypeConversion_h[0]';
bio(28).ndims=2;
bio(28).size=[];
bio(28).isStruct=false;

bio(29).blkName='State Machine/Input Interpreter Safety/p1';
bio(29).sigName='';
bio(29).portIdx=0;
bio(29).dim=[1,1];
bio(29).sigWidth=1;
bio(29).sigAddress='&MARCH_v1_5_B.sf_InputInterpreterSafety.rightOut';
bio(29).ndims=2;
bio(29).size=[];
bio(29).isStruct=false;

bio(30).blkName='State Machine/Input Interpreter Safety/p2';
bio(30).sigName='';
bio(30).portIdx=1;
bio(30).dim=[1,1];
bio(30).sigWidth=1;
bio(30).sigAddress='&MARCH_v1_5_B.sf_InputInterpreterSafety.leftOut';
bio(30).ndims=2;
bio(30).size=[];
bio(30).isStruct=false;

bio(31).blkName='State Machine/Input Interpreter Safety/p3';
bio(31).sigName='';
bio(31).portIdx=2;
bio(31).dim=[1,1];
bio(31).sigWidth=1;
bio(31).sigAddress='&MARCH_v1_5_B.sf_InputInterpreterSafety.bothOut';
bio(31).ndims=2;
bio(31).size=[];
bio(31).isStruct=false;

bio(32).blkName='State Machine/Input Interpreter Triggers/p1';
bio(32).sigName='right';
bio(32).portIdx=0;
bio(32).dim=[1,1];
bio(32).sigWidth=1;
bio(32).sigAddress='&MARCH_v1_5_B.sf_InputInterpreterTriggers.rightOut';
bio(32).ndims=2;
bio(32).size=[];
bio(32).isStruct=false;

bio(33).blkName='State Machine/Input Interpreter Triggers/p2';
bio(33).sigName='left';
bio(33).portIdx=1;
bio(33).dim=[1,1];
bio(33).sigWidth=1;
bio(33).sigAddress='&MARCH_v1_5_B.sf_InputInterpreterTriggers.leftOut';
bio(33).ndims=2;
bio(33).size=[];
bio(33).isStruct=false;

bio(34).blkName='State Machine/Input Interpreter Triggers/p3';
bio(34).sigName='both';
bio(34).portIdx=2;
bio(34).dim=[1,1];
bio(34).sigWidth=1;
bio(34).sigAddress='&MARCH_v1_5_B.sf_InputInterpreterTriggers.bothOut';
bio(34).ndims=2;
bio(34).size=[];
bio(34).isStruct=false;

bio(35).blkName='State Machine/State Machine/p1';
bio(35).sigName='controlIndex';
bio(35).portIdx=0;
bio(35).dim=[1,1];
bio(35).sigWidth=1;
bio(35).sigAddress='&MARCH_v1_5_B.controllerIndex';
bio(35).ndims=2;
bio(35).size=[];
bio(35).isStruct=false;

bio(36).blkName='State Machine/State Machine/p2';
bio(36).sigName='Action';
bio(36).portIdx=1;
bio(36).dim=[1,1];
bio(36).sigWidth=1;
bio(36).sigAddress='&MARCH_v1_5_B.action';
bio(36).ndims=2;
bio(36).size=[];
bio(36).isStruct=false;

bio(37).blkName='State Machine/State Machine/p3';
bio(37).sigName='base';
bio(37).portIdx=2;
bio(37).dim=[1,1];
bio(37).sigWidth=1;
bio(37).sigAddress='&MARCH_v1_5_B.base';
bio(37).ndims=2;
bio(37).size=[];
bio(37).isStruct=false;

bio(38).blkName='State Machine/State Machine/p4';
bio(38).sigName='stepType';
bio(38).portIdx=3;
bio(38).dim=[1,1];
bio(38).sigWidth=1;
bio(38).sigAddress='&MARCH_v1_5_B.stepType';
bio(38).ndims=2;
bio(38).size=[];
bio(38).isStruct=false;

bio(39).blkName='State Machine/State Machine/p5';
bio(39).sigName='state';
bio(39).portIdx=4;
bio(39).dim=[1,1];
bio(39).sigWidth=1;
bio(39).sigAddress='&MARCH_v1_5_B.state';
bio(39).ndims=2;
bio(39).size=[];
bio(39).isStruct=false;

bio(40).blkName='Controllers/Continuous Gait/Torso Trajectory';
bio(40).sigName='';
bio(40).portIdx=0;
bio(40).dim=[1,1];
bio(40).sigWidth=1;
bio(40).sigAddress='&MARCH_v1_5_B.z';
bio(40).ndims=2;
bio(40).size=[];
bio(40).isStruct=false;

bio(41).blkName='Controllers/Continuous Gait/Trajectory/p1';
bio(41).sigName='';
bio(41).portIdx=0;
bio(41).dim=[1,6];
bio(41).sigWidth=6;
bio(41).sigAddress='&MARCH_v1_5_B.q_p[0]';
bio(41).ndims=2;
bio(41).size=[];
bio(41).isStruct=false;

bio(42).blkName='Controllers/Continuous Gait/Trajectory/p2';
bio(42).sigName='';
bio(42).portIdx=1;
bio(42).dim=[1,1];
bio(42).sigWidth=1;
bio(42).sigAddress='&MARCH_v1_5_B.done_b3';
bio(42).ndims=2;
bio(42).size=[];
bio(42).isStruct=false;

bio(43).blkName='Controllers/Continuous Gait/Trajectory/p3';
bio(43).sigName='';
bio(43).portIdx=2;
bio(43).dim=[1,1];
bio(43).sigWidth=1;
bio(43).sigAddress='&MARCH_v1_5_B.torso_z';
bio(43).ndims=2;
bio(43).size=[];
bio(43).isStruct=false;

bio(44).blkName='Controllers/Continuous Gait/Trajectory/p4';
bio(44).sigName='';
bio(44).portIdx=3;
bio(44).dim=[1,1];
bio(44).sigWidth=1;
bio(44).sigAddress='&MARCH_v1_5_B.base_k';
bio(44).ndims=2;
bio(44).size=[];
bio(44).isStruct=false;

bio(45).blkName='Controllers/Continuous Gait/Trajectory/p5';
bio(45).sigName='';
bio(45).portIdx=4;
bio(45).dim=[1,3];
bio(45).sigWidth=3;
bio(45).sigAddress='&MARCH_v1_5_B.debug[0]';
bio(45).ndims=2;
bio(45).size=[];
bio(45).isStruct=false;

bio(46).blkName='Controllers/Continuous Gait/Delay';
bio(46).sigName='';
bio(46).portIdx=0;
bio(46).dim=[1,1];
bio(46).sigWidth=1;
bio(46).sigAddress='&MARCH_v1_5_B.Delay_b0';
bio(46).ndims=2;
bio(46).size=[];
bio(46).isStruct=false;

bio(47).blkName='Controllers/Hold/MATLAB Function';
bio(47).sigName='';
bio(47).portIdx=0;
bio(47).dim=[1,6];
bio(47).sigWidth=6;
bio(47).sigAddress='&MARCH_v1_5_B.q_out[0]';
bio(47).ndims=2;
bio(47).size=[];
bio(47).isStruct=false;

bio(48).blkName='Controllers/Point & Go/Trajectory/p1';
bio(48).sigName='';
bio(48).portIdx=0;
bio(48).dim=[1,6];
bio(48).sigWidth=6;
bio(48).sigAddress='&MARCH_v1_5_B.q_k[0]';
bio(48).ndims=2;
bio(48).size=[];
bio(48).isStruct=false;

bio(49).blkName='Controllers/Point & Go/Trajectory/p2';
bio(49).sigName='';
bio(49).portIdx=1;
bio(49).dim=[1,1];
bio(49).sigWidth=1;
bio(49).sigAddress='&MARCH_v1_5_B.debugOut';
bio(49).ndims=2;
bio(49).size=[];
bio(49).isStruct=false;

bio(50).blkName='Controllers/SitDown/Trajectory';
bio(50).sigName='';
bio(50).portIdx=0;
bio(50).dim=[1,6];
bio(50).sigWidth=6;
bio(50).sigAddress='&MARCH_v1_5_B.q_c[0]';
bio(50).ndims=2;
bio(50).size=[];
bio(50).isStruct=false;

bio(51).blkName='Controllers/Stairs/Trajectory';
bio(51).sigName='';
bio(51).portIdx=0;
bio(51).dim=[1,6];
bio(51).sigWidth=6;
bio(51).sigAddress='&MARCH_v1_5_B.q_d[0]';
bio(51).ndims=2;
bio(51).size=[];
bio(51).isStruct=false;

bio(52).blkName='Controllers/StandUp/Trajectory/p1';
bio(52).sigName='';
bio(52).portIdx=0;
bio(52).dim=[1,1];
bio(52).sigWidth=1;
bio(52).sigAddress='&MARCH_v1_5_B.done_c';
bio(52).ndims=2;
bio(52).size=[];
bio(52).isStruct=false;

bio(53).blkName='Controllers/StandUp/Trajectory/p2';
bio(53).sigName='';
bio(53).portIdx=1;
bio(53).dim=[1,6];
bio(53).sigWidth=6;
bio(53).sigAddress='&MARCH_v1_5_B.q_b[0]';
bio(53).ndims=2;
bio(53).size=[];
bio(53).isStruct=false;

bio(54).blkName='Controllers/StandUp/Simulation Q';
bio(54).sigName='';
bio(54).portIdx=0;
bio(54).dim=[6,1];
bio(54).sigWidth=6;
bio(54).sigAddress='&MARCH_v1_5_B.SimulationQ[0]';
bio(54).ndims=2;
bio(54).size=[];
bio(54).isStruct=false;

bio(55).blkName='Controllers/Walking/Trajectory/p1';
bio(55).sigName='';
bio(55).portIdx=0;
bio(55).dim=[1,6];
bio(55).sigWidth=6;
bio(55).sigAddress='&MARCH_v1_5_B.q[0]';
bio(55).ndims=2;
bio(55).size=[];
bio(55).isStruct=false;

bio(56).blkName='Controllers/Walking/Trajectory/p2';
bio(56).sigName='';
bio(56).portIdx=1;
bio(56).dim=[1,1];
bio(56).sigWidth=1;
bio(56).sigAddress='&MARCH_v1_5_B.done_b';
bio(56).ndims=2;
bio(56).size=[];
bio(56).isStruct=false;

bio(57).blkName='EtherCAT Joint Data In/Joint Encoder EtherCAT/EtherCAT PDO Receive10';
bio(57).sigName='';
bio(57).portIdx=0;
bio(57).dim=[1,1];
bio(57).sigWidth=1;
bio(57).sigAddress='&MARCH_v1_5_B.EtherCATPDOReceive10';
bio(57).ndims=2;
bio(57).size=[];
bio(57).isStruct=false;

bio(58).blkName='EtherCAT Joint Data In/Joint Encoder EtherCAT/EtherCAT PDO Receive11';
bio(58).sigName='';
bio(58).portIdx=0;
bio(58).dim=[1,1];
bio(58).sigWidth=1;
bio(58).sigAddress='&MARCH_v1_5_B.EtherCATPDOReceive11';
bio(58).ndims=2;
bio(58).size=[];
bio(58).isStruct=false;

bio(59).blkName='EtherCAT Joint Data In/Joint Encoder EtherCAT/EtherCAT PDO Receive6';
bio(59).sigName='';
bio(59).portIdx=0;
bio(59).dim=[1,1];
bio(59).sigWidth=1;
bio(59).sigAddress='&MARCH_v1_5_B.EtherCATPDOReceive6';
bio(59).ndims=2;
bio(59).size=[];
bio(59).isStruct=false;

bio(60).blkName='EtherCAT Joint Data In/Joint Encoder EtherCAT/EtherCAT PDO Receive7';
bio(60).sigName='';
bio(60).portIdx=0;
bio(60).dim=[1,1];
bio(60).sigWidth=1;
bio(60).sigAddress='&MARCH_v1_5_B.EtherCATPDOReceive7';
bio(60).ndims=2;
bio(60).size=[];
bio(60).isStruct=false;

bio(61).blkName='EtherCAT Joint Data In/Joint Encoder EtherCAT/EtherCAT PDO Receive8';
bio(61).sigName='';
bio(61).portIdx=0;
bio(61).dim=[1,1];
bio(61).sigWidth=1;
bio(61).sigAddress='&MARCH_v1_5_B.EtherCATPDOReceive8';
bio(61).ndims=2;
bio(61).size=[];
bio(61).isStruct=false;

bio(62).blkName='EtherCAT Joint Data In/Joint Encoder EtherCAT/EtherCAT PDO Receive9';
bio(62).sigName='';
bio(62).portIdx=0;
bio(62).dim=[1,1];
bio(62).sigWidth=1;
bio(62).sigAddress='&MARCH_v1_5_B.EtherCATPDOReceive9';
bio(62).ndims=2;
bio(62).size=[];
bio(62).isStruct=false;

bio(63).blkName='EtherCAT Joint Data In/Spring Encoder EtherCAT/EtherCAT PDO Receive';
bio(63).sigName='';
bio(63).portIdx=0;
bio(63).dim=[1,1];
bio(63).sigWidth=1;
bio(63).sigAddress='&MARCH_v1_5_B.EtherCATPDOReceive_e';
bio(63).ndims=2;
bio(63).size=[];
bio(63).isStruct=false;

bio(64).blkName='EtherCAT Joint Data In/Spring Encoder EtherCAT/EtherCAT PDO Receive1';
bio(64).sigName='';
bio(64).portIdx=0;
bio(64).dim=[1,1];
bio(64).sigWidth=1;
bio(64).sigAddress='&MARCH_v1_5_B.EtherCATPDOReceive1';
bio(64).ndims=2;
bio(64).size=[];
bio(64).isStruct=false;

bio(65).blkName='EtherCAT Joint Data In/Spring Encoder EtherCAT/EtherCAT PDO Receive2';
bio(65).sigName='';
bio(65).portIdx=0;
bio(65).dim=[1,1];
bio(65).sigWidth=1;
bio(65).sigAddress='&MARCH_v1_5_B.EtherCATPDOReceive2';
bio(65).ndims=2;
bio(65).size=[];
bio(65).isStruct=false;

bio(66).blkName='EtherCAT Joint Data In/Spring Encoder EtherCAT/EtherCAT PDO Receive3';
bio(66).sigName='';
bio(66).portIdx=0;
bio(66).dim=[1,1];
bio(66).sigWidth=1;
bio(66).sigAddress='&MARCH_v1_5_B.EtherCATPDOReceive3';
bio(66).ndims=2;
bio(66).size=[];
bio(66).isStruct=false;

bio(67).blkName='EtherCAT Joint Data In/Spring Encoder EtherCAT/EtherCAT PDO Receive4';
bio(67).sigName='';
bio(67).portIdx=0;
bio(67).dim=[1,1];
bio(67).sigWidth=1;
bio(67).sigAddress='&MARCH_v1_5_B.EtherCATPDOReceive4';
bio(67).ndims=2;
bio(67).size=[];
bio(67).isStruct=false;

bio(68).blkName='EtherCAT Joint Data In/Spring Encoder EtherCAT/EtherCAT PDO Receive5';
bio(68).sigName='';
bio(68).portIdx=0;
bio(68).dim=[1,1];
bio(68).sigWidth=1;
bio(68).sigAddress='&MARCH_v1_5_B.EtherCATPDOReceive5';
bio(68).ndims=2;
bio(68).size=[];
bio(68).isStruct=false;

bio(69).blkName='EtherCAT Joint Setpoints/Subsystem/Data Type Conversion';
bio(69).sigName='';
bio(69).portIdx=0;
bio(69).dim=[1,6];
bio(69).sigWidth=6;
bio(69).sigAddress='&MARCH_v1_5_B.DataTypeConversion_c[0]';
bio(69).ndims=2;
bio(69).size=[];
bio(69).isStruct=false;

bio(70).blkName='EtherCAT Joint Setpoints/Subsystem/Data Type Conversion1';
bio(70).sigName='';
bio(70).portIdx=0;
bio(70).dim=[1,1];
bio(70).sigWidth=1;
bio(70).sigAddress='&MARCH_v1_5_B.DataTypeConversion1';
bio(70).ndims=2;
bio(70).size=[];
bio(70).isStruct=false;

bio(71).blkName='EtherCAT Joint Setpoints/exoskeleton/Data Type Conversion';
bio(71).sigName='';
bio(71).portIdx=0;
bio(71).dim=[1,6];
bio(71).sigWidth=6;
bio(71).sigAddress='&MARCH_v1_5_B.DataTypeConversion_j[0]';
bio(71).ndims=2;
bio(71).size=[];
bio(71).isStruct=false;

bio(72).blkName='Input Device/EtherCAT Input Device/EtherCAT PDO Receive';
bio(72).sigName='';
bio(72).portIdx=0;
bio(72).dim=[1,1];
bio(72).sigWidth=1;
bio(72).sigAddress='&MARCH_v1_5_B.EtherCATPDOReceive_b';
bio(72).ndims=2;
bio(72).size=[];
bio(72).isStruct=false;

bio(73).blkName='Input Device/Generate random block signal safety/Rand. Block Func. Gen.1';
bio(73).sigName='';
bio(73).portIdx=0;
bio(73).dim=[1,1];
bio(73).sigWidth=1;
bio(73).sigAddress='&MARCH_v1_5_B.sf_RandBlockFuncGen1_k.output';
bio(73).ndims=2;
bio(73).size=[];
bio(73).isStruct=false;

bio(74).blkName='Input Device/Generate random block signal safety/Rand. Block Func. Gen.4';
bio(74).sigName='';
bio(74).portIdx=0;
bio(74).dim=[1,1];
bio(74).sigWidth=1;
bio(74).sigAddress='&MARCH_v1_5_B.output_f';
bio(74).ndims=2;
bio(74).size=[];
bio(74).isStruct=false;

bio(75).blkName='Input Device/Generate random block signal safety/Saturation 2';
bio(75).sigName='';
bio(75).portIdx=0;
bio(75).dim=[1,1];
bio(75).sigWidth=1;
bio(75).sigAddress='&MARCH_v1_5_B.sf_Saturation2_l.y';
bio(75).ndims=2;
bio(75).size=[];
bio(75).isStruct=false;

bio(76).blkName='Input Device/Generate random block signal safety/Saturation1';
bio(76).sigName='';
bio(76).portIdx=0;
bio(76).dim=[1,1];
bio(76).sigWidth=1;
bio(76).sigAddress='&MARCH_v1_5_B.sf_Saturation1_g.y';
bio(76).ndims=2;
bio(76).size=[];
bio(76).isStruct=false;

bio(77).blkName='Input Device/Generate random block signal safety/Saturation3 ';
bio(77).sigName='';
bio(77).portIdx=0;
bio(77).dim=[1,1];
bio(77).sigWidth=1;
bio(77).sigAddress='&MARCH_v1_5_B.sf_Saturation3_f.y';
bio(77).ndims=2;
bio(77).size=[];
bio(77).isStruct=false;

bio(78).blkName='Input Device/Generate random block signal safety/Saturation4';
bio(78).sigName='';
bio(78).portIdx=0;
bio(78).dim=[1,1];
bio(78).sigWidth=1;
bio(78).sigAddress='&MARCH_v1_5_B.sf_Saturation4_e.y';
bio(78).ndims=2;
bio(78).size=[];
bio(78).isStruct=false;

bio(79).blkName='Input Device/Generate random block signal safety/BlockDuration 1';
bio(79).sigName='';
bio(79).portIdx=0;
bio(79).dim=[1,1];
bio(79).sigWidth=1;
bio(79).sigAddress='&MARCH_v1_5_B.BlockDuration1_i';
bio(79).ndims=2;
bio(79).size=[];
bio(79).isStruct=false;

bio(80).blkName='Input Device/Generate random block signal safety/BlockDuration 2';
bio(80).sigName='';
bio(80).portIdx=0;
bio(80).dim=[1,1];
bio(80).sigWidth=1;
bio(80).sigAddress='&MARCH_v1_5_B.BlockDuration2_l';
bio(80).ndims=2;
bio(80).size=[];
bio(80).isStruct=false;

bio(81).blkName='Input Device/Generate random block signal safety/DelayDuraction 2';
bio(81).sigName='';
bio(81).portIdx=0;
bio(81).dim=[1,1];
bio(81).sigWidth=1;
bio(81).sigAddress='&MARCH_v1_5_B.DelayDuraction2_a';
bio(81).ndims=2;
bio(81).size=[];
bio(81).isStruct=false;

bio(82).blkName='Input Device/Generate random block signal safety/DelayDuration 1';
bio(82).sigName='';
bio(82).portIdx=0;
bio(82).dim=[1,1];
bio(82).sigWidth=1;
bio(82).sigAddress='&MARCH_v1_5_B.DelayDuration1_m';
bio(82).ndims=2;
bio(82).size=[];
bio(82).isStruct=false;

bio(83).blkName='Input Device/Generate random block signal safety/Sum';
bio(83).sigName='';
bio(83).portIdx=0;
bio(83).dim=[1,1];
bio(83).sigWidth=1;
bio(83).sigAddress='&MARCH_v1_5_B.Sum_c';
bio(83).ndims=2;
bio(83).size=[];
bio(83).isStruct=false;

bio(84).blkName='Input Device/Generate random block signal safety/Sum1';
bio(84).sigName='';
bio(84).portIdx=0;
bio(84).dim=[1,1];
bio(84).sigWidth=1;
bio(84).sigAddress='&MARCH_v1_5_B.Sum1_f';
bio(84).ndims=2;
bio(84).size=[];
bio(84).isStruct=false;

bio(85).blkName='Input Device/Generate random block signal trigger/Rand. Block Func. Gen.1';
bio(85).sigName='';
bio(85).portIdx=0;
bio(85).dim=[1,1];
bio(85).sigWidth=1;
bio(85).sigAddress='&MARCH_v1_5_B.sf_RandBlockFuncGen1.output';
bio(85).ndims=2;
bio(85).size=[];
bio(85).isStruct=false;

bio(86).blkName='Input Device/Generate random block signal trigger/Rand. Block Func. Gen.4';
bio(86).sigName='';
bio(86).portIdx=0;
bio(86).dim=[1,1];
bio(86).sigWidth=1;
bio(86).sigAddress='&MARCH_v1_5_B.output';
bio(86).ndims=2;
bio(86).size=[];
bio(86).isStruct=false;

bio(87).blkName='Input Device/Generate random block signal trigger/Saturation 2';
bio(87).sigName='';
bio(87).portIdx=0;
bio(87).dim=[1,1];
bio(87).sigWidth=1;
bio(87).sigAddress='&MARCH_v1_5_B.sf_Saturation2.y';
bio(87).ndims=2;
bio(87).size=[];
bio(87).isStruct=false;

bio(88).blkName='Input Device/Generate random block signal trigger/Saturation1';
bio(88).sigName='';
bio(88).portIdx=0;
bio(88).dim=[1,1];
bio(88).sigWidth=1;
bio(88).sigAddress='&MARCH_v1_5_B.sf_Saturation1.y';
bio(88).ndims=2;
bio(88).size=[];
bio(88).isStruct=false;

bio(89).blkName='Input Device/Generate random block signal trigger/Saturation3 ';
bio(89).sigName='';
bio(89).portIdx=0;
bio(89).dim=[1,1];
bio(89).sigWidth=1;
bio(89).sigAddress='&MARCH_v1_5_B.sf_Saturation3.y';
bio(89).ndims=2;
bio(89).size=[];
bio(89).isStruct=false;

bio(90).blkName='Input Device/Generate random block signal trigger/Saturation4';
bio(90).sigName='';
bio(90).portIdx=0;
bio(90).dim=[1,1];
bio(90).sigWidth=1;
bio(90).sigAddress='&MARCH_v1_5_B.sf_Saturation4.y';
bio(90).ndims=2;
bio(90).size=[];
bio(90).isStruct=false;

bio(91).blkName='Input Device/Generate random block signal trigger/BlockDuration 1';
bio(91).sigName='';
bio(91).portIdx=0;
bio(91).dim=[1,1];
bio(91).sigWidth=1;
bio(91).sigAddress='&MARCH_v1_5_B.BlockDuration1';
bio(91).ndims=2;
bio(91).size=[];
bio(91).isStruct=false;

bio(92).blkName='Input Device/Generate random block signal trigger/BlockDuration 2';
bio(92).sigName='';
bio(92).portIdx=0;
bio(92).dim=[1,1];
bio(92).sigWidth=1;
bio(92).sigAddress='&MARCH_v1_5_B.BlockDuration2';
bio(92).ndims=2;
bio(92).size=[];
bio(92).isStruct=false;

bio(93).blkName='Input Device/Generate random block signal trigger/DelayDuraction 2';
bio(93).sigName='';
bio(93).portIdx=0;
bio(93).dim=[1,1];
bio(93).sigWidth=1;
bio(93).sigAddress='&MARCH_v1_5_B.DelayDuraction2';
bio(93).ndims=2;
bio(93).size=[];
bio(93).isStruct=false;

bio(94).blkName='Input Device/Generate random block signal trigger/DelayDuration 1';
bio(94).sigName='';
bio(94).portIdx=0;
bio(94).dim=[1,1];
bio(94).sigWidth=1;
bio(94).sigAddress='&MARCH_v1_5_B.DelayDuration1';
bio(94).ndims=2;
bio(94).size=[];
bio(94).isStruct=false;

bio(95).blkName='Input Device/Generate random block signal trigger/Sum';
bio(95).sigName='';
bio(95).portIdx=0;
bio(95).dim=[1,1];
bio(95).sigWidth=1;
bio(95).sigAddress='&MARCH_v1_5_B.Sum_d';
bio(95).ndims=2;
bio(95).size=[];
bio(95).isStruct=false;

bio(96).blkName='Input Device/Generate random block signal trigger/Sum1';
bio(96).sigName='';
bio(96).portIdx=0;
bio(96).dim=[1,1];
bio(96).sigWidth=1;
bio(96).sigAddress='&MARCH_v1_5_B.Sum1';
bio(96).ndims=2;
bio(96).size=[];
bio(96).isStruct=false;

bio(97).blkName='Point&Go/EtherCAT Point&Go/EtherCAT PDO Receive';
bio(97).sigName='';
bio(97).portIdx=0;
bio(97).dim=[1,1];
bio(97).sigWidth=1;
bio(97).sigAddress='&MARCH_v1_5_B.EtherCATPDOReceive';
bio(97).ndims=2;
bio(97).size=[];
bio(97).isStruct=false;

bio(98).blkName='State Machine/Create peak3/Greater than 0';
bio(98).sigName='';
bio(98).portIdx=0;
bio(98).dim=[1,1];
bio(98).sigWidth=1;
bio(98).sigAddress='&MARCH_v1_5_B.signal';
bio(98).ndims=2;
bio(98).size=[];
bio(98).isStruct=false;

bio(99).blkName='State Machine/Create peak3/Sum';
bio(99).sigName='';
bio(99).portIdx=0;
bio(99).dim=[1,1];
bio(99).sigWidth=1;
bio(99).sigAddress='&MARCH_v1_5_B.Sum_i';
bio(99).ndims=2;
bio(99).size=[];
bio(99).isStruct=false;

bio(100).blkName='State Machine/Create peak3/Delay';
bio(100).sigName='';
bio(100).portIdx=0;
bio(100).dim=[1,1];
bio(100).sigWidth=1;
bio(100).sigAddress='&MARCH_v1_5_B.Delay_p';
bio(100).ndims=2;
bio(100).size=[];
bio(100).isStruct=false;

bio(101).blkName='Controllers/0-Torque/RHFE/Sample and Hold';
bio(101).sigName='Reference';
bio(101).portIdx=0;
bio(101).dim=[1,1];
bio(101).sigWidth=1;
bio(101).sigAddress='&MARCH_v1_5_B.reference';
bio(101).ndims=2;
bio(101).size=[];
bio(101).isStruct=false;

bio(102).blkName='Controllers/0-Torque/RHFE/Velocity Override';
bio(102).sigName='';
bio(102).portIdx=0;
bio(102).dim=[1,1];
bio(102).sigWidth=1;
bio(102).sigAddress='&MARCH_v1_5_B.VelocityOverride';
bio(102).ndims=2;
bio(102).size=[];
bio(102).isStruct=false;

bio(103).blkName='Controllers/0-Torque/RHFE/motor enable';
bio(103).sigName='';
bio(103).portIdx=0;
bio(103).dim=[1,1];
bio(103).sigWidth=1;
bio(103).sigAddress='&MARCH_v1_5_B.motorenable';
bio(103).ndims=2;
bio(103).size=[];
bio(103).isStruct=false;

bio(104).blkName='Controllers/0-Torque/RHFE/Data Type Conversion';
bio(104).sigName='';
bio(104).portIdx=0;
bio(104).dim=[1,1];
bio(104).sigWidth=1;
bio(104).sigAddress='&MARCH_v1_5_B.DataTypeConversion_m';
bio(104).ndims=2;
bio(104).size=[];
bio(104).isStruct=false;

bio(105).blkName='Controllers/0-Torque/RHFE/Data Type Conversion1';
bio(105).sigName='';
bio(105).portIdx=0;
bio(105).dim=[1,1];
bio(105).sigWidth=1;
bio(105).sigAddress='&MARCH_v1_5_B.DataTypeConversion1_n';
bio(105).ndims=2;
bio(105).size=[];
bio(105).isStruct=false;

bio(106).blkName='Controllers/0-Torque/RHFE/Error ';
bio(106).sigName='';
bio(106).portIdx=0;
bio(106).dim=[1,1];
bio(106).sigWidth=1;
bio(106).sigAddress='&MARCH_v1_5_B.Error_g';
bio(106).ndims=2;
bio(106).size=[];
bio(106).isStruct=false;

bio(107).blkName='Controllers/0-Torque/RHFE/Joint Encoder';
bio(107).sigName='';
bio(107).portIdx=0;
bio(107).dim=[1,1];
bio(107).sigWidth=1;
bio(107).sigAddress='&MARCH_v1_5_B.JointEncoder';
bio(107).ndims=2;
bio(107).size=[];
bio(107).isStruct=false;

bio(108).blkName='Controllers/0-Torque/RHFE/Reference Offset1';
bio(108).sigName='';
bio(108).portIdx=0;
bio(108).dim=[1,1];
bio(108).sigWidth=1;
bio(108).sigAddress='&MARCH_v1_5_B.ReferenceOffset1';
bio(108).ndims=2;
bio(108).size=[];
bio(108).isStruct=false;

bio(109).blkName='Controllers/0-Torque/RHFE/Spring Encoder';
bio(109).sigName='';
bio(109).portIdx=0;
bio(109).dim=[1,1];
bio(109).sigWidth=1;
bio(109).sigAddress='&MARCH_v1_5_B.SpringEncoder';
bio(109).ndims=2;
bio(109).size=[];
bio(109).isStruct=false;

bio(110).blkName='Controllers/0-Torque/RHFE/Torque Offset';
bio(110).sigName='';
bio(110).portIdx=0;
bio(110).dim=[1,1];
bio(110).sigWidth=1;
bio(110).sigAddress='&MARCH_v1_5_B.TorqueOffset';
bio(110).ndims=2;
bio(110).size=[];
bio(110).isStruct=false;

bio(111).blkName='Controllers/0-Torque/RHFE/EtherCAT Joint Encoder';
bio(111).sigName='';
bio(111).portIdx=0;
bio(111).dim=[1,1];
bio(111).sigWidth=1;
bio(111).sigAddress='&MARCH_v1_5_B.EtherCATJointEncoder';
bio(111).ndims=2;
bio(111).size=[];
bio(111).isStruct=false;

bio(112).blkName='Controllers/0-Torque/RHFE/EtherCAT Spring Encoder';
bio(112).sigName='';
bio(112).portIdx=0;
bio(112).dim=[1,1];
bio(112).sigWidth=1;
bio(112).sigAddress='&MARCH_v1_5_B.EtherCATSpringEncoder';
bio(112).ndims=2;
bio(112).size=[];
bio(112).isStruct=false;

bio(113).blkName='Controllers/0-Torque/RHFE/Offset';
bio(113).sigName='0-Torque Offset';
bio(113).portIdx=0;
bio(113).dim=[1,1];
bio(113).sigWidth=1;
bio(113).sigAddress='&MARCH_v1_5_B.uTorqueOffset';
bio(113).ndims=2;
bio(113).size=[];
bio(113).isStruct=false;

bio(114).blkName='Controllers/0-Torque/RHFE/Sum';
bio(114).sigName='Error';
bio(114).portIdx=0;
bio(114).dim=[1,1];
bio(114).sigWidth=1;
bio(114).sigAddress='&MARCH_v1_5_B.Error';
bio(114).ndims=2;
bio(114).size=[];
bio(114).isStruct=false;

bio(115).blkName='Controllers/0-Torque/RHFE/Sum1';
bio(115).sigName='';
bio(115).portIdx=0;
bio(115).dim=[1,1];
bio(115).sigWidth=1;
bio(115).sigAddress='&MARCH_v1_5_B.Sum1_h';
bio(115).ndims=2;
bio(115).size=[];
bio(115).isStruct=false;

bio(116).blkName='Input Device/Generate random block signal safety/Create peak1/Greater than 0';
bio(116).sigName='';
bio(116).portIdx=0;
bio(116).dim=[1,1];
bio(116).sigWidth=1;
bio(116).sigAddress='&MARCH_v1_5_B.sf_Greaterthan0_f.signal';
bio(116).ndims=2;
bio(116).size=[];
bio(116).isStruct=false;

bio(117).blkName='Input Device/Generate random block signal safety/Create peak1/Sum';
bio(117).sigName='';
bio(117).portIdx=0;
bio(117).dim=[1,1];
bio(117).sigWidth=1;
bio(117).sigAddress='&MARCH_v1_5_B.Sum_o';
bio(117).ndims=2;
bio(117).size=[];
bio(117).isStruct=false;

bio(118).blkName='Input Device/Generate random block signal safety/Create peak1/Delay';
bio(118).sigName='';
bio(118).portIdx=0;
bio(118).dim=[1,1];
bio(118).sigWidth=1;
bio(118).sigAddress='&MARCH_v1_5_B.Delay_b';
bio(118).ndims=2;
bio(118).size=[];
bio(118).isStruct=false;

bio(119).blkName='Input Device/Generate random block signal safety/Create peak2/Greater than 0';
bio(119).sigName='';
bio(119).portIdx=0;
bio(119).dim=[1,1];
bio(119).sigWidth=1;
bio(119).sigAddress='&MARCH_v1_5_B.sf_Greaterthan0_n.signal';
bio(119).ndims=2;
bio(119).size=[];
bio(119).isStruct=false;

bio(120).blkName='Input Device/Generate random block signal safety/Create peak2/Sum';
bio(120).sigName='';
bio(120).portIdx=0;
bio(120).dim=[1,1];
bio(120).sigWidth=1;
bio(120).sigAddress='&MARCH_v1_5_B.Sum_h';
bio(120).ndims=2;
bio(120).size=[];
bio(120).isStruct=false;

bio(121).blkName='Input Device/Generate random block signal safety/Create peak2/Delay';
bio(121).sigName='';
bio(121).portIdx=0;
bio(121).dim=[1,1];
bio(121).sigWidth=1;
bio(121).sigAddress='&MARCH_v1_5_B.Delay_ox';
bio(121).ndims=2;
bio(121).size=[];
bio(121).isStruct=false;

bio(122).blkName='Input Device/Generate random block signal safety/Create peak3/Greater than 0';
bio(122).sigName='';
bio(122).portIdx=0;
bio(122).dim=[1,1];
bio(122).sigWidth=1;
bio(122).sigAddress='&MARCH_v1_5_B.sf_Greaterthan0_fu.signal';
bio(122).ndims=2;
bio(122).size=[];
bio(122).isStruct=false;

bio(123).blkName='Input Device/Generate random block signal safety/Create peak3/Sum';
bio(123).sigName='';
bio(123).portIdx=0;
bio(123).dim=[1,1];
bio(123).sigWidth=1;
bio(123).sigAddress='&MARCH_v1_5_B.Sum_a';
bio(123).ndims=2;
bio(123).size=[];
bio(123).isStruct=false;

bio(124).blkName='Input Device/Generate random block signal safety/Create peak3/Delay';
bio(124).sigName='';
bio(124).portIdx=0;
bio(124).dim=[1,1];
bio(124).sigWidth=1;
bio(124).sigAddress='&MARCH_v1_5_B.Delay_om';
bio(124).ndims=2;
bio(124).size=[];
bio(124).isStruct=false;

bio(125).blkName='Input Device/Generate random block signal trigger/Create peak1/Greater than 0';
bio(125).sigName='';
bio(125).portIdx=0;
bio(125).dim=[1,1];
bio(125).sigWidth=1;
bio(125).sigAddress='&MARCH_v1_5_B.sf_Greaterthan0.signal';
bio(125).ndims=2;
bio(125).size=[];
bio(125).isStruct=false;

bio(126).blkName='Input Device/Generate random block signal trigger/Create peak1/Sum';
bio(126).sigName='';
bio(126).portIdx=0;
bio(126).dim=[1,1];
bio(126).sigWidth=1;
bio(126).sigAddress='&MARCH_v1_5_B.Sum';
bio(126).ndims=2;
bio(126).size=[];
bio(126).isStruct=false;

bio(127).blkName='Input Device/Generate random block signal trigger/Create peak1/Delay';
bio(127).sigName='';
bio(127).portIdx=0;
bio(127).dim=[1,1];
bio(127).sigWidth=1;
bio(127).sigAddress='&MARCH_v1_5_B.Delay';
bio(127).ndims=2;
bio(127).size=[];
bio(127).isStruct=false;

bio(128).blkName='Input Device/Generate random block signal trigger/Create peak2/Greater than 0';
bio(128).sigName='';
bio(128).portIdx=0;
bio(128).dim=[1,1];
bio(128).sigWidth=1;
bio(128).sigAddress='&MARCH_v1_5_B.sf_Greaterthan0_o.signal';
bio(128).ndims=2;
bio(128).size=[];
bio(128).isStruct=false;

bio(129).blkName='Input Device/Generate random block signal trigger/Create peak2/Sum';
bio(129).sigName='';
bio(129).portIdx=0;
bio(129).dim=[1,1];
bio(129).sigWidth=1;
bio(129).sigAddress='&MARCH_v1_5_B.Sum_g';
bio(129).ndims=2;
bio(129).size=[];
bio(129).isStruct=false;

bio(130).blkName='Input Device/Generate random block signal trigger/Create peak2/Delay';
bio(130).sigName='';
bio(130).portIdx=0;
bio(130).dim=[1,1];
bio(130).sigWidth=1;
bio(130).sigAddress='&MARCH_v1_5_B.Delay_e';
bio(130).ndims=2;
bio(130).size=[];
bio(130).isStruct=false;

bio(131).blkName='Input Device/Generate random block signal trigger/Create peak3/Greater than 0';
bio(131).sigName='';
bio(131).portIdx=0;
bio(131).dim=[1,1];
bio(131).sigWidth=1;
bio(131).sigAddress='&MARCH_v1_5_B.sf_Greaterthan0_e.signal';
bio(131).ndims=2;
bio(131).size=[];
bio(131).isStruct=false;

bio(132).blkName='Input Device/Generate random block signal trigger/Create peak3/Sum';
bio(132).sigName='';
bio(132).portIdx=0;
bio(132).dim=[1,1];
bio(132).sigWidth=1;
bio(132).sigAddress='&MARCH_v1_5_B.Sum_p';
bio(132).ndims=2;
bio(132).size=[];
bio(132).isStruct=false;

bio(133).blkName='Input Device/Generate random block signal trigger/Create peak3/Delay';
bio(133).sigName='';
bio(133).portIdx=0;
bio(133).dim=[1,1];
bio(133).sigWidth=1;
bio(133).sigAddress='&MARCH_v1_5_B.Delay_o';
bio(133).ndims=2;
bio(133).size=[];
bio(133).isStruct=false;

bio(134).blkName='Controllers/0-Torque/RHFE/Discrete PID Controller/Integrator';
bio(134).sigName='';
bio(134).portIdx=0;
bio(134).dim=[1,1];
bio(134).sigWidth=1;
bio(134).sigAddress='&MARCH_v1_5_B.Integrator';
bio(134).ndims=2;
bio(134).size=[];
bio(134).isStruct=false;

bio(135).blkName='Controllers/0-Torque/RHFE/Discrete PID Controller/DOut';
bio(135).sigName='';
bio(135).portIdx=0;
bio(135).dim=[1,1];
bio(135).sigWidth=1;
bio(135).sigAddress='&MARCH_v1_5_B.DOut';
bio(135).ndims=2;
bio(135).size=[];
bio(135).isStruct=false;

bio(136).blkName='Controllers/0-Torque/RHFE/Discrete PID Controller/IOut';
bio(136).sigName='';
bio(136).portIdx=0;
bio(136).dim=[1,1];
bio(136).sigWidth=1;
bio(136).sigAddress='&MARCH_v1_5_B.IOut';
bio(136).ndims=2;
bio(136).size=[];
bio(136).isStruct=false;

bio(137).blkName='Controllers/0-Torque/RHFE/Discrete PID Controller/POut';
bio(137).sigName='';
bio(137).portIdx=0;
bio(137).dim=[1,1];
bio(137).sigWidth=1;
bio(137).sigAddress='&MARCH_v1_5_B.POut';
bio(137).ndims=2;
bio(137).size=[];
bio(137).isStruct=false;

bio(138).blkName='Controllers/0-Torque/RHFE/Discrete PID Controller/Saturate';
bio(138).sigName='';
bio(138).portIdx=0;
bio(138).dim=[1,1];
bio(138).sigWidth=1;
bio(138).sigAddress='&MARCH_v1_5_B.Saturate';
bio(138).ndims=2;
bio(138).size=[];
bio(138).isStruct=false;

bio(139).blkName='Controllers/0-Torque/RHFE/Discrete PID Controller/Sum';
bio(139).sigName='';
bio(139).portIdx=0;
bio(139).dim=[1,1];
bio(139).sigWidth=1;
bio(139).sigAddress='&MARCH_v1_5_B.Sum_l';
bio(139).ndims=2;
bio(139).size=[];
bio(139).isStruct=false;

bio(140).blkName='Controllers/0-Torque/RHFE/Discrete PID Controller/Differentiator/Diff';
bio(140).sigName='';
bio(140).portIdx=0;
bio(140).dim=[1,1];
bio(140).sigWidth=1;
bio(140).sigAddress='&MARCH_v1_5_B.Diff';
bio(140).ndims=2;
bio(140).size=[];
bio(140).isStruct=false;

bio(141).blkName='Controllers/0-Torque/RHFE/Discrete PID Controller/Differentiator/TSamp';
bio(141).sigName='';
bio(141).portIdx=0;
bio(141).dim=[1,1];
bio(141).sigWidth=1;
bio(141).sigAddress='&MARCH_v1_5_B.TSamp';
bio(141).ndims=2;
bio(141).size=[];
bio(141).isStruct=false;

bio(142).blkName='Controllers/0-Torque/RHFE/Discrete PID Controller/Differentiator/UD';
bio(142).sigName='';
bio(142).portIdx=0;
bio(142).dim=[1,1];
bio(142).sigWidth=1;
bio(142).sigAddress='&MARCH_v1_5_B.UD';
bio(142).ndims=2;
bio(142).size=[];
bio(142).isStruct=false;

function len = getlenBIO
len = 142;

