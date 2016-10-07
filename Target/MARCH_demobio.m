function bio=MARCH_demobio
bio = [];
bio(1).blkName='ManualControl';
bio(1).sigName='';
bio(1).portIdx=0;
bio(1).dim=[1,1];
bio(1).sigWidth=1;
bio(1).sigAddress='&MARCH_demo_B.ManualControl';
bio(1).ndims=2;
bio(1).size=[];
bio(1).isStruct=false;
bio(getlenBIO) = bio(1);

bio(2).blkName='LHAA';
bio(2).sigName='';
bio(2).portIdx=0;
bio(2).dim=[1,1];
bio(2).sigWidth=1;
bio(2).sigAddress='&MARCH_demo_B.LHAA';
bio(2).ndims=2;
bio(2).size=[];
bio(2).isStruct=false;

bio(3).blkName='LHAA1';
bio(3).sigName='';
bio(3).portIdx=0;
bio(3).dim=[1,1];
bio(3).sigWidth=1;
bio(3).sigAddress='&MARCH_demo_B.LHAA1';
bio(3).ndims=2;
bio(3).size=[];
bio(3).isStruct=false;

bio(4).blkName='LHFE';
bio(4).sigName='';
bio(4).portIdx=0;
bio(4).dim=[1,1];
bio(4).sigWidth=1;
bio(4).sigAddress='&MARCH_demo_B.LHFE';
bio(4).ndims=2;
bio(4).size=[];
bio(4).isStruct=false;

bio(5).blkName='LHFE1';
bio(5).sigName='';
bio(5).portIdx=0;
bio(5).dim=[1,1];
bio(5).sigWidth=1;
bio(5).sigAddress='&MARCH_demo_B.LHFE1';
bio(5).ndims=2;
bio(5).size=[];
bio(5).isStruct=false;

bio(6).blkName='LKFE';
bio(6).sigName='';
bio(6).portIdx=0;
bio(6).dim=[1,1];
bio(6).sigWidth=1;
bio(6).sigAddress='&MARCH_demo_B.LKFE';
bio(6).ndims=2;
bio(6).size=[];
bio(6).isStruct=false;

bio(7).blkName='LKFE1';
bio(7).sigName='';
bio(7).portIdx=0;
bio(7).dim=[1,1];
bio(7).sigWidth=1;
bio(7).sigAddress='&MARCH_demo_B.LKFE1';
bio(7).ndims=2;
bio(7).size=[];
bio(7).isStruct=false;

bio(8).blkName='RHAA';
bio(8).sigName='';
bio(8).portIdx=0;
bio(8).dim=[1,1];
bio(8).sigWidth=1;
bio(8).sigAddress='&MARCH_demo_B.RHAA';
bio(8).ndims=2;
bio(8).size=[];
bio(8).isStruct=false;

bio(9).blkName='RHAA1';
bio(9).sigName='';
bio(9).portIdx=0;
bio(9).dim=[1,1];
bio(9).sigWidth=1;
bio(9).sigAddress='&MARCH_demo_B.RHAA1';
bio(9).ndims=2;
bio(9).size=[];
bio(9).isStruct=false;

bio(10).blkName='RHFE';
bio(10).sigName='';
bio(10).portIdx=0;
bio(10).dim=[1,1];
bio(10).sigWidth=1;
bio(10).sigAddress='&MARCH_demo_B.RHFE';
bio(10).ndims=2;
bio(10).size=[];
bio(10).isStruct=false;

bio(11).blkName='RHFE1';
bio(11).sigName='';
bio(11).portIdx=0;
bio(11).dim=[1,1];
bio(11).sigWidth=1;
bio(11).sigAddress='&MARCH_demo_B.RHFE1';
bio(11).ndims=2;
bio(11).size=[];
bio(11).isStruct=false;

bio(12).blkName='RKFE';
bio(12).sigName='';
bio(12).portIdx=0;
bio(12).dim=[1,1];
bio(12).sigWidth=1;
bio(12).sigAddress='&MARCH_demo_B.RKFE';
bio(12).ndims=2;
bio(12).size=[];
bio(12).isStruct=false;

bio(13).blkName='RKFE1';
bio(13).sigName='';
bio(13).portIdx=0;
bio(13).dim=[1,1];
bio(13).sigWidth=1;
bio(13).sigAddress='&MARCH_demo_B.RKFE1';
bio(13).ndims=2;
bio(13).size=[];
bio(13).isStruct=false;

bio(14).blkName='Delay';
bio(14).sigName='';
bio(14).portIdx=0;
bio(14).dim=[6,1];
bio(14).sigWidth=6;
bio(14).sigAddress='&MARCH_demo_B.Delay_c[0]';
bio(14).ndims=2;
bio(14).size=[];
bio(14).isStruct=false;

bio(15).blkName='Delay1';
bio(15).sigName='';
bio(15).portIdx=0;
bio(15).dim=[1,1];
bio(15).sigWidth=1;
bio(15).sigAddress='&MARCH_demo_B.Delay1';
bio(15).ndims=2;
bio(15).size=[];
bio(15).isStruct=false;

bio(16).blkName='Controllers/Switcher/p1';
bio(16).sigName='';
bio(16).portIdx=0;
bio(16).dim=[1,1];
bio(16).sigWidth=1;
bio(16).sigAddress='&MARCH_demo_B.index';
bio(16).ndims=2;
bio(16).size=[];
bio(16).isStruct=false;

bio(17).blkName='Controllers/Switcher/p2';
bio(17).sigName='';
bio(17).portIdx=1;
bio(17).dim=[10,1];
bio(17).sigWidth=10;
bio(17).sigAddress='&MARCH_demo_B.enable[0]';
bio(17).ndims=2;
bio(17).size=[];
bio(17).isStruct=false;

bio(18).blkName='Controllers/Gain';
bio(18).sigName='RHAA';
bio(18).portIdx=0;
bio(18).dim=[1,1];
bio(18).sigWidth=1;
bio(18).sigAddress='&MARCH_demo_B.RHAA_e';
bio(18).ndims=2;
bio(18).size=[];
bio(18).isStruct=false;

bio(19).blkName='Controllers/Gain1';
bio(19).sigName='RHFE';
bio(19).portIdx=0;
bio(19).dim=[1,1];
bio(19).sigWidth=1;
bio(19).sigAddress='&MARCH_demo_B.RHFE_o';
bio(19).ndims=2;
bio(19).size=[];
bio(19).isStruct=false;

bio(20).blkName='Controllers/Gain2';
bio(20).sigName='RKFE';
bio(20).portIdx=0;
bio(20).dim=[1,1];
bio(20).sigWidth=1;
bio(20).sigAddress='&MARCH_demo_B.RKFE_c';
bio(20).ndims=2;
bio(20).size=[];
bio(20).isStruct=false;

bio(21).blkName='Controllers/Gain3';
bio(21).sigName='LHAA';
bio(21).portIdx=0;
bio(21).dim=[1,1];
bio(21).sigWidth=1;
bio(21).sigAddress='&MARCH_demo_B.LHAA_e';
bio(21).ndims=2;
bio(21).size=[];
bio(21).isStruct=false;

bio(22).blkName='Controllers/Gain4';
bio(22).sigName='LHFE';
bio(22).portIdx=0;
bio(22).dim=[1,1];
bio(22).sigWidth=1;
bio(22).sigAddress='&MARCH_demo_B.LHFE_b';
bio(22).ndims=2;
bio(22).size=[];
bio(22).isStruct=false;

bio(23).blkName='Controllers/Gain5';
bio(23).sigName='LKFE';
bio(23).portIdx=0;
bio(23).dim=[1,1];
bio(23).sigWidth=1;
bio(23).sigAddress='&MARCH_demo_B.LKFE_l';
bio(23).ndims=2;
bio(23).size=[];
bio(23).isStruct=false;

bio(24).blkName='Controllers/Gain6';
bio(24).sigName='done';
bio(24).portIdx=0;
bio(24).dim=[1,1];
bio(24).sigWidth=1;
bio(24).sigAddress='&MARCH_demo_B.done';
bio(24).ndims=2;
bio(24).size=[];
bio(24).isStruct=false;

bio(25).blkName='Controllers/Multiport Switch';
bio(25).sigName='';
bio(25).portIdx=0;
bio(25).dim=[1,6];
bio(25).sigWidth=6;
bio(25).sigAddress='&MARCH_demo_B.MultiportSwitch[0]';
bio(25).ndims=2;
bio(25).size=[];
bio(25).isStruct=false;

bio(26).blkName='Controllers/Multiport Switch1';
bio(26).sigName='';
bio(26).portIdx=0;
bio(26).dim=[1,1];
bio(26).sigWidth=1;
bio(26).sigAddress='&MARCH_demo_B.MultiportSwitch1';
bio(26).ndims=2;
bio(26).size=[];
bio(26).isStruct=false;

bio(27).blkName='Controllers/Saturation';
bio(27).sigName='';
bio(27).portIdx=0;
bio(27).dim=[1,1];
bio(27).sigWidth=1;
bio(27).sigAddress='&MARCH_demo_B.Saturation';
bio(27).ndims=2;
bio(27).size=[];
bio(27).isStruct=false;

bio(28).blkName='Exoskeleton parameters/Constant';
bio(28).sigName='';
bio(28).portIdx=0;
bio(28).dim=[1,1];
bio(28).sigWidth=1;
bio(28).sigAddress='&MARCH_demo_B.Constant';
bio(28).ndims=2;
bio(28).size=[];
bio(28).isStruct=false;

bio(29).blkName='Input Device/Gain';
bio(29).sigName='right trigger';
bio(29).portIdx=0;
bio(29).dim=[1,1];
bio(29).sigWidth=1;
bio(29).sigAddress='&MARCH_demo_B.righttrigger';
bio(29).ndims=2;
bio(29).size=[];
bio(29).isStruct=false;

bio(30).blkName='Input Device/Gain2';
bio(30).sigName='right safety';
bio(30).portIdx=0;
bio(30).dim=[1,1];
bio(30).sigWidth=1;
bio(30).sigAddress='&MARCH_demo_B.rightsafety';
bio(30).ndims=2;
bio(30).size=[];
bio(30).isStruct=false;

bio(31).blkName='Input Device/Gain4';
bio(31).sigName='Right Scroll Mode';
bio(31).portIdx=0;
bio(31).dim=[1,1];
bio(31).sigWidth=1;
bio(31).sigAddress='&MARCH_demo_B.RightScrollMode';
bio(31).ndims=2;
bio(31).size=[];
bio(31).isStruct=false;

bio(32).blkName='Input Device/Gain5';
bio(32).sigName='Richt Scroll Click';
bio(32).portIdx=0;
bio(32).dim=[1,1];
bio(32).sigWidth=1;
bio(32).sigAddress='&MARCH_demo_B.RichtScrollClick';
bio(32).ndims=2;
bio(32).size=[];
bio(32).isStruct=false;

bio(33).blkName='Input Device/Switch';
bio(33).sigName='';
bio(33).portIdx=0;
bio(33).dim=[4,1];
bio(33).sigWidth=4;
bio(33).sigAddress='&MARCH_demo_B.Switch[0]';
bio(33).ndims=2;
bio(33).size=[];
bio(33).isStruct=false;

bio(34).blkName='Joint Angle Feedback Switch/Switch';
bio(34).sigName='';
bio(34).portIdx=0;
bio(34).dim=[6,1];
bio(34).sigWidth=6;
bio(34).sigAddress='&MARCH_demo_B.Switch_m[0]';
bio(34).ndims=2;
bio(34).size=[];
bio(34).isStruct=false;

bio(35).blkName='Point&Go/Switch';
bio(35).sigName='';
bio(35).portIdx=0;
bio(35).dim=[3,1];
bio(35).sigWidth=3;
bio(35).sigAddress='&MARCH_demo_B.Switch_b[0]';
bio(35).ndims=2;
bio(35).size=[];
bio(35).isStruct=false;

bio(36).blkName='Reachability/Data Type Conversion';
bio(36).sigName='';
bio(36).portIdx=0;
bio(36).dim=[6,1];
bio(36).sigWidth=6;
bio(36).sigAddress='&MARCH_demo_B.DataTypeConversion[0]';
bio(36).ndims=2;
bio(36).size=[];
bio(36).isStruct=false;

bio(37).blkName='State Machine/State Machine/p1';
bio(37).sigName='controlIndex';
bio(37).portIdx=0;
bio(37).dim=[1,1];
bio(37).sigWidth=1;
bio(37).sigAddress='&MARCH_demo_B.controllerIndex';
bio(37).ndims=2;
bio(37).size=[];
bio(37).isStruct=false;

bio(38).blkName='State Machine/State Machine/p2';
bio(38).sigName='Action';
bio(38).portIdx=1;
bio(38).dim=[1,1];
bio(38).sigWidth=1;
bio(38).sigAddress='&MARCH_demo_B.action';
bio(38).ndims=2;
bio(38).size=[];
bio(38).isStruct=false;

bio(39).blkName='State Machine/State Machine/p3';
bio(39).sigName='base';
bio(39).portIdx=2;
bio(39).dim=[1,1];
bio(39).sigWidth=1;
bio(39).sigAddress='&MARCH_demo_B.base';
bio(39).ndims=2;
bio(39).size=[];
bio(39).isStruct=false;

bio(40).blkName='State Machine/State Machine/p4';
bio(40).sigName='stepType';
bio(40).portIdx=3;
bio(40).dim=[1,1];
bio(40).sigWidth=1;
bio(40).sigAddress='&MARCH_demo_B.stepType';
bio(40).ndims=2;
bio(40).size=[];
bio(40).isStruct=false;

bio(41).blkName='State Machine/State Machine/p5';
bio(41).sigName='state';
bio(41).portIdx=4;
bio(41).dim=[1,1];
bio(41).sigWidth=1;
bio(41).sigAddress='&MARCH_demo_B.state';
bio(41).ndims=2;
bio(41).size=[];
bio(41).isStruct=false;

bio(42).blkName='Torque compensation controller/Gain';
bio(42).sigName='';
bio(42).portIdx=0;
bio(42).dim=[1,1];
bio(42).sigWidth=1;
bio(42).sigAddress='&MARCH_demo_B.Gain';
bio(42).ndims=2;
bio(42).size=[];
bio(42).isStruct=false;

bio(43).blkName='Torque compensation controller/rad2deg';
bio(43).sigName='';
bio(43).portIdx=0;
bio(43).dim=[1,1];
bio(43).sigWidth=1;
bio(43).sigAddress='&MARCH_demo_B.rad2deg';
bio(43).ndims=2;
bio(43).size=[];
bio(43).isStruct=false;

bio(44).blkName='Torque compensation controller/rad2deg1';
bio(44).sigName='';
bio(44).portIdx=0;
bio(44).dim=[1,1];
bio(44).sigWidth=1;
bio(44).sigAddress='&MARCH_demo_B.rad2deg1';
bio(44).ndims=2;
bio(44).size=[];
bio(44).isStruct=false;

bio(45).blkName='Torque compensation controller/Sum';
bio(45).sigName='';
bio(45).portIdx=0;
bio(45).dim=[1,1];
bio(45).sigWidth=1;
bio(45).sigAddress='&MARCH_demo_B.Sum_a';
bio(45).ndims=2;
bio(45).size=[];
bio(45).isStruct=false;

bio(46).blkName='Torque compensation controller/Sum1';
bio(46).sigName='';
bio(46).portIdx=0;
bio(46).dim=[1,1];
bio(46).sigWidth=1;
bio(46).sigAddress='&MARCH_demo_B.Sum1';
bio(46).ndims=2;
bio(46).size=[];
bio(46).isStruct=false;

bio(47).blkName='Torque compensation controller/Sum2';
bio(47).sigName='';
bio(47).portIdx=0;
bio(47).dim=[1,1];
bio(47).sigWidth=1;
bio(47).sigAddress='&MARCH_demo_B.Sum2';
bio(47).ndims=2;
bio(47).size=[];
bio(47).isStruct=false;

bio(48).blkName='Torque compensation controller/Sum3';
bio(48).sigName='';
bio(48).portIdx=0;
bio(48).dim=[1,1];
bio(48).sigWidth=1;
bio(48).sigAddress='&MARCH_demo_B.Sum3';
bio(48).ndims=2;
bio(48).size=[];
bio(48).isStruct=false;

bio(49).blkName='Controllers/0-Torque/Q_in';
bio(49).sigName='';
bio(49).portIdx=0;
bio(49).dim=[1,6];
bio(49).sigWidth=6;
bio(49).sigAddress='&MARCH_demo_B.Q_in[0]';
bio(49).ndims=2;
bio(49).size=[];
bio(49).isStruct=false;

bio(50).blkName='Controllers/0-Torque/Constant1';
bio(50).sigName='';
bio(50).portIdx=0;
bio(50).dim=[6,1];
bio(50).sigWidth=6;
bio(50).sigAddress='&MARCH_demo_B.Constant1[0]';
bio(50).ndims=2;
bio(50).size=[];
bio(50).isStruct=false;

bio(51).blkName='Controllers/Home/MATLAB Function/p1';
bio(51).sigName='';
bio(51).portIdx=0;
bio(51).dim=[1,1];
bio(51).sigWidth=1;
bio(51).sigAddress='&MARCH_demo_B.done_n';
bio(51).ndims=2;
bio(51).size=[];
bio(51).isStruct=false;

bio(52).blkName='Controllers/Home/MATLAB Function/p2';
bio(52).sigName='';
bio(52).portIdx=1;
bio(52).dim=[1,6];
bio(52).sigWidth=6;
bio(52).sigAddress='&MARCH_demo_B.q_c[0]';
bio(52).ndims=2;
bio(52).size=[];
bio(52).isStruct=false;

bio(53).blkName='Controllers/Home/samples1';
bio(53).sigName='';
bio(53).portIdx=0;
bio(53).dim=[6,1];
bio(53).sigWidth=6;
bio(53).sigAddress='&MARCH_demo_B.samples1[0]';
bio(53).ndims=2;
bio(53).size=[];
bio(53).isStruct=false;

bio(54).blkName='Controllers/Walking/Trajectory/p1';
bio(54).sigName='';
bio(54).portIdx=0;
bio(54).dim=[1,6];
bio(54).sigWidth=6;
bio(54).sigAddress='&MARCH_demo_B.q[0]';
bio(54).ndims=2;
bio(54).size=[];
bio(54).isStruct=false;

bio(55).blkName='Controllers/Walking/Trajectory/p2';
bio(55).sigName='';
bio(55).portIdx=1;
bio(55).dim=[1,1];
bio(55).sigWidth=1;
bio(55).sigAddress='&MARCH_demo_B.done_b';
bio(55).ndims=2;
bio(55).size=[];
bio(55).isStruct=false;

bio(56).blkName='State Machine/Create peak3/Greater than 0';
bio(56).sigName='';
bio(56).portIdx=0;
bio(56).dim=[1,1];
bio(56).sigWidth=1;
bio(56).sigAddress='&MARCH_demo_B.signal';
bio(56).ndims=2;
bio(56).size=[];
bio(56).isStruct=false;

bio(57).blkName='State Machine/Create peak3/Sum';
bio(57).sigName='';
bio(57).portIdx=0;
bio(57).dim=[1,1];
bio(57).sigWidth=1;
bio(57).sigAddress='&MARCH_demo_B.Sum';
bio(57).ndims=2;
bio(57).size=[];
bio(57).isStruct=false;

bio(58).blkName='State Machine/Create peak3/Delay';
bio(58).sigName='';
bio(58).portIdx=0;
bio(58).dim=[1,1];
bio(58).sigWidth=1;
bio(58).sigAddress='&MARCH_demo_B.Delay';
bio(58).ndims=2;
bio(58).size=[];
bio(58).isStruct=false;

function len = getlenBIO
len = 58;

