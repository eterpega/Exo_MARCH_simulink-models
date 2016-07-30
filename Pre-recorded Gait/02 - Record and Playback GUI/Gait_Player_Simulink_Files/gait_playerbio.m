function bio=gait_playerbio
bio = [];
bio(1).blkName='Sat LHFE';
bio(1).sigName='LHFE Setpoint';
bio(1).portIdx=0;
bio(1).dim=[1,1];
bio(1).sigWidth=1;
bio(1).sigAddress='&gait_player_B.LHFESetpoint';
bio(1).ndims=2;
bio(1).size=[];
bio(1).isStruct=false;
bio(getlenBIO) = bio(1);

bio(2).blkName='Sat LKFE';
bio(2).sigName='LKFE Setpoint';
bio(2).portIdx=0;
bio(2).dim=[1,1];
bio(2).sigWidth=1;
bio(2).sigAddress='&gait_player_B.LKFESetpoint';
bio(2).ndims=2;
bio(2).size=[];
bio(2).isStruct=false;

bio(3).blkName='Sat RHFE';
bio(3).sigName='RHFE Setpoint';
bio(3).portIdx=0;
bio(3).dim=[1,1];
bio(3).sigWidth=1;
bio(3).sigAddress='&gait_player_B.RHFESetpoint';
bio(3).ndims=2;
bio(3).size=[];
bio(3).isStruct=false;

bio(4).blkName='Sat RKFE';
bio(4).sigName='RKFE Setpoint';
bio(4).portIdx=0;
bio(4).dim=[1,1];
bio(4).sigWidth=1;
bio(4).sigAddress='&gait_player_B.RKFESetpoint';
bio(4).ndims=2;
bio(4).size=[];
bio(4).isStruct=false;

bio(5).blkName='EtherCAT Init ';
bio(5).sigName='';
bio(5).portIdx=0;
bio(5).dim=[6,1];
bio(5).sigWidth=6;
bio(5).sigAddress='&gait_player_B.EtherCATInit[0]';
bio(5).ndims=2;
bio(5).size=[];
bio(5).isStruct=false;

bio(6).blkName='Instrument Panel LHFE/velocityOverrideFlag';
bio(6).sigName='';
bio(6).portIdx=0;
bio(6).dim=[1,1];
bio(6).sigWidth=1;
bio(6).sigAddress='&gait_player_B.velocityOverrideFlag';
bio(6).ndims=2;
bio(6).size=[];
bio(6).isStruct=false;

bio(7).blkName='Instrument Panel LHFE/phaseoffset2';
bio(7).sigName='';
bio(7).portIdx=0;
bio(7).dim=[1,1];
bio(7).sigWidth=1;
bio(7).sigAddress='&gait_player_B.phaseoffset2';
bio(7).ndims=2;
bio(7).size=[];
bio(7).isStruct=false;

bio(8).blkName='Instrument Panel LHFE/Gain';
bio(8).sigName='';
bio(8).portIdx=0;
bio(8).dim=[1,1];
bio(8).sigWidth=1;
bio(8).sigAddress='&gait_player_B.Gain';
bio(8).ndims=2;
bio(8).size=[];
bio(8).isStruct=false;

bio(9).blkName='Instrument Panel LHFE/Gain1';
bio(9).sigName='';
bio(9).portIdx=0;
bio(9).dim=[1,1];
bio(9).sigWidth=1;
bio(9).sigAddress='&gait_player_B.Gain1';
bio(9).ndims=2;
bio(9).size=[];
bio(9).isStruct=false;

bio(10).blkName='Instrument Panel LHFE/Gain2';
bio(10).sigName='';
bio(10).portIdx=0;
bio(10).dim=[1,1];
bio(10).sigWidth=1;
bio(10).sigAddress='&gait_player_B.Gain2';
bio(10).ndims=2;
bio(10).size=[];
bio(10).isStruct=false;

bio(11).blkName='Instrument Panel LHFE/Sum1';
bio(11).sigName='';
bio(11).portIdx=0;
bio(11).dim=[1,1];
bio(11).sigWidth=1;
bio(11).sigAddress='&gait_player_B.Sum1';
bio(11).ndims=2;
bio(11).size=[];
bio(11).isStruct=false;

bio(12).blkName='Instrument Panel LKFE/velocityOverrideFlag';
bio(12).sigName='';
bio(12).portIdx=0;
bio(12).dim=[1,1];
bio(12).sigWidth=1;
bio(12).sigAddress='&gait_player_B.velocityOverrideFlag_c';
bio(12).ndims=2;
bio(12).size=[];
bio(12).isStruct=false;

bio(13).blkName='Instrument Panel LKFE/phaseoffset1';
bio(13).sigName='';
bio(13).portIdx=0;
bio(13).dim=[1,1];
bio(13).sigWidth=1;
bio(13).sigAddress='&gait_player_B.phaseoffset1';
bio(13).ndims=2;
bio(13).size=[];
bio(13).isStruct=false;

bio(14).blkName='Instrument Panel LKFE/Gain3';
bio(14).sigName='';
bio(14).portIdx=0;
bio(14).dim=[1,1];
bio(14).sigWidth=1;
bio(14).sigAddress='&gait_player_B.Gain3';
bio(14).ndims=2;
bio(14).size=[];
bio(14).isStruct=false;

bio(15).blkName='Instrument Panel LKFE/Gain4';
bio(15).sigName='';
bio(15).portIdx=0;
bio(15).dim=[1,1];
bio(15).sigWidth=1;
bio(15).sigAddress='&gait_player_B.Gain4';
bio(15).ndims=2;
bio(15).size=[];
bio(15).isStruct=false;

bio(16).blkName='Instrument Panel LKFE/Gain5';
bio(16).sigName='';
bio(16).portIdx=0;
bio(16).dim=[1,1];
bio(16).sigWidth=1;
bio(16).sigAddress='&gait_player_B.Gain5';
bio(16).ndims=2;
bio(16).size=[];
bio(16).isStruct=false;

bio(17).blkName='Instrument Panel LKFE/Sum2';
bio(17).sigName='';
bio(17).portIdx=0;
bio(17).dim=[1,1];
bio(17).sigWidth=1;
bio(17).sigAddress='&gait_player_B.Sum2';
bio(17).ndims=2;
bio(17).size=[];
bio(17).isStruct=false;

bio(18).blkName='Instrument Panel RHFE/velocityOverrideFlag';
bio(18).sigName='';
bio(18).portIdx=0;
bio(18).dim=[1,1];
bio(18).sigWidth=1;
bio(18).sigAddress='&gait_player_B.velocityOverrideFlag_k';
bio(18).ndims=2;
bio(18).size=[];
bio(18).isStruct=false;

bio(19).blkName='Instrument Panel RHFE/phaseoffset2';
bio(19).sigName='';
bio(19).portIdx=0;
bio(19).dim=[1,1];
bio(19).sigWidth=1;
bio(19).sigAddress='&gait_player_B.phaseoffset2_c';
bio(19).ndims=2;
bio(19).size=[];
bio(19).isStruct=false;

bio(20).blkName='Instrument Panel RHFE/Gain';
bio(20).sigName='';
bio(20).portIdx=0;
bio(20).dim=[1,1];
bio(20).sigWidth=1;
bio(20).sigAddress='&gait_player_B.Gain_d';
bio(20).ndims=2;
bio(20).size=[];
bio(20).isStruct=false;

bio(21).blkName='Instrument Panel RHFE/Gain1';
bio(21).sigName='';
bio(21).portIdx=0;
bio(21).dim=[1,1];
bio(21).sigWidth=1;
bio(21).sigAddress='&gait_player_B.Gain1_m';
bio(21).ndims=2;
bio(21).size=[];
bio(21).isStruct=false;

bio(22).blkName='Instrument Panel RHFE/Gain2';
bio(22).sigName='';
bio(22).portIdx=0;
bio(22).dim=[1,1];
bio(22).sigWidth=1;
bio(22).sigAddress='&gait_player_B.Gain2_k';
bio(22).ndims=2;
bio(22).size=[];
bio(22).isStruct=false;

bio(23).blkName='Instrument Panel RHFE/Sum1';
bio(23).sigName='';
bio(23).portIdx=0;
bio(23).dim=[1,1];
bio(23).sigWidth=1;
bio(23).sigAddress='&gait_player_B.Sum1_k';
bio(23).ndims=2;
bio(23).size=[];
bio(23).isStruct=false;

bio(24).blkName='Instrument Panel RKFE/velocityOverrideFlag';
bio(24).sigName='';
bio(24).portIdx=0;
bio(24).dim=[1,1];
bio(24).sigWidth=1;
bio(24).sigAddress='&gait_player_B.velocityOverrideFlag_l';
bio(24).ndims=2;
bio(24).size=[];
bio(24).isStruct=false;

bio(25).blkName='Instrument Panel RKFE/phaseoffset1';
bio(25).sigName='';
bio(25).portIdx=0;
bio(25).dim=[1,1];
bio(25).sigWidth=1;
bio(25).sigAddress='&gait_player_B.phaseoffset1_i';
bio(25).ndims=2;
bio(25).size=[];
bio(25).isStruct=false;

bio(26).blkName='Instrument Panel RKFE/Gain3';
bio(26).sigName='';
bio(26).portIdx=0;
bio(26).dim=[1,1];
bio(26).sigWidth=1;
bio(26).sigAddress='&gait_player_B.Gain3_g';
bio(26).ndims=2;
bio(26).size=[];
bio(26).isStruct=false;

bio(27).blkName='Instrument Panel RKFE/Gain4';
bio(27).sigName='';
bio(27).portIdx=0;
bio(27).dim=[1,1];
bio(27).sigWidth=1;
bio(27).sigAddress='&gait_player_B.Gain4_j';
bio(27).ndims=2;
bio(27).size=[];
bio(27).isStruct=false;

bio(28).blkName='Instrument Panel RKFE/Gain5';
bio(28).sigName='';
bio(28).portIdx=0;
bio(28).dim=[1,1];
bio(28).sigWidth=1;
bio(28).sigAddress='&gait_player_B.Gain5_c';
bio(28).ndims=2;
bio(28).size=[];
bio(28).isStruct=false;

bio(29).blkName='Instrument Panel RKFE/Sum2';
bio(29).sigName='';
bio(29).portIdx=0;
bio(29).dim=[1,1];
bio(29).sigWidth=1;
bio(29).sigAddress='&gait_player_B.Sum2_e';
bio(29).ndims=2;
bio(29).size=[];
bio(29).isStruct=false;

bio(30).blkName='LHFE/Data Type Conversion';
bio(30).sigName='LHFE M.A.';
bio(30).portIdx=0;
bio(30).dim=[1,1];
bio(30).sigWidth=1;
bio(30).sigAddress='&gait_player_B.LHFEMA';
bio(30).ndims=2;
bio(30).size=[];
bio(30).isStruct=false;

bio(31).blkName='LHFE/Data Type Conversion1';
bio(31).sigName='LHFE M.V.';
bio(31).portIdx=0;
bio(31).dim=[1,1];
bio(31).sigWidth=1;
bio(31).sigAddress='&gait_player_B.LHFEMV';
bio(31).ndims=2;
bio(31).size=[];
bio(31).isStruct=false;

bio(32).blkName='LHFE/EtherCAT PDO Receive';
bio(32).sigName='LHFE jointAngle';
bio(32).portIdx=0;
bio(32).dim=[1,1];
bio(32).sigWidth=1;
bio(32).sigAddress='&gait_player_B.LHFEjointAngle';
bio(32).ndims=2;
bio(32).size=[];
bio(32).isStruct=false;

bio(33).blkName='LHFE/EtherCAT PDO Receive1';
bio(33).sigName='LHFE M.A.';
bio(33).portIdx=0;
bio(33).dim=[1,1];
bio(33).sigWidth=1;
bio(33).sigAddress='&gait_player_B.LHFEMA_m';
bio(33).ndims=2;
bio(33).size=[];
bio(33).isStruct=false;

bio(34).blkName='LHFE/EtherCAT PDO Receive2';
bio(34).sigName='LHFE M.V.';
bio(34).portIdx=0;
bio(34).dim=[1,1];
bio(34).sigWidth=1;
bio(34).sigAddress='&gait_player_B.LHFEMV_k';
bio(34).ndims=2;
bio(34).size=[];
bio(34).isStruct=false;

bio(35).blkName='LHFE Gait Generation/RKFE home and walk1';
bio(35).sigName='';
bio(35).portIdx=0;
bio(35).dim=[1,1];
bio(35).sigWidth=1;
bio(35).sigAddress='&gait_player_B.sf_RKFEhomeandwalk1.jointSetpoint';
bio(35).ndims=2;
bio(35).size=[];
bio(35).isStruct=false;

bio(36).blkName='LHFE Gait Generation/Clock';
bio(36).sigName='';
bio(36).portIdx=0;
bio(36).dim=[1,1];
bio(36).sigWidth=1;
bio(36).sigAddress='&gait_player_B.Clock';
bio(36).ndims=2;
bio(36).size=[];
bio(36).isStruct=false;

bio(37).blkName='LHFE Gait Generation/Data Type Conversion';
bio(37).sigName='';
bio(37).portIdx=0;
bio(37).dim=[1,1];
bio(37).sigWidth=1;
bio(37).sigAddress='&gait_player_B.DataTypeConversion';
bio(37).ndims=2;
bio(37).size=[];
bio(37).isStruct=false;

bio(38).blkName='LHFE Gait Generation/Data Type Conversion1';
bio(38).sigName='';
bio(38).portIdx=0;
bio(38).dim=[1,1];
bio(38).sigWidth=1;
bio(38).sigAddress='&gait_player_B.DataTypeConversion1';
bio(38).ndims=2;
bio(38).size=[];
bio(38).isStruct=false;

bio(39).blkName='LKFE/Data Type Conversion';
bio(39).sigName='LKFE M.A.';
bio(39).portIdx=0;
bio(39).dim=[1,1];
bio(39).sigWidth=1;
bio(39).sigAddress='&gait_player_B.LKFEMA';
bio(39).ndims=2;
bio(39).size=[];
bio(39).isStruct=false;

bio(40).blkName='LKFE/Data Type Conversion1';
bio(40).sigName='LKFE M.V.';
bio(40).portIdx=0;
bio(40).dim=[1,1];
bio(40).sigWidth=1;
bio(40).sigAddress='&gait_player_B.LKFEMV';
bio(40).ndims=2;
bio(40).size=[];
bio(40).isStruct=false;

bio(41).blkName='LKFE/EtherCAT PDO Receive';
bio(41).sigName='LKFE jointAngle';
bio(41).portIdx=0;
bio(41).dim=[1,1];
bio(41).sigWidth=1;
bio(41).sigAddress='&gait_player_B.LKFEjointAngle';
bio(41).ndims=2;
bio(41).size=[];
bio(41).isStruct=false;

bio(42).blkName='LKFE/LKFE Motor Angle';
bio(42).sigName='LKFE motorAngle';
bio(42).portIdx=0;
bio(42).dim=[1,1];
bio(42).sigWidth=1;
bio(42).sigAddress='&gait_player_B.LKFEmotorAngle';
bio(42).ndims=2;
bio(42).size=[];
bio(42).isStruct=false;

bio(43).blkName='LKFE/LKFE Motor Velocity';
bio(43).sigName='LKFE motorVelocity';
bio(43).portIdx=0;
bio(43).dim=[1,1];
bio(43).sigWidth=1;
bio(43).sigAddress='&gait_player_B.LKFEmotorVelocity';
bio(43).ndims=2;
bio(43).size=[];
bio(43).isStruct=false;

bio(44).blkName='LKFE Gait Generation /RKFE home and walk1';
bio(44).sigName='';
bio(44).portIdx=0;
bio(44).dim=[1,1];
bio(44).sigWidth=1;
bio(44).sigAddress='&gait_player_B.sf_RKFEhomeandwalk1_i.jointSetpoint';
bio(44).ndims=2;
bio(44).size=[];
bio(44).isStruct=false;

bio(45).blkName='LKFE Gait Generation /Clock';
bio(45).sigName='';
bio(45).portIdx=0;
bio(45).dim=[1,1];
bio(45).sigWidth=1;
bio(45).sigAddress='&gait_player_B.Clock_b';
bio(45).ndims=2;
bio(45).size=[];
bio(45).isStruct=false;

bio(46).blkName='LKFE Gait Generation /Data Type Conversion';
bio(46).sigName='';
bio(46).portIdx=0;
bio(46).dim=[1,1];
bio(46).sigWidth=1;
bio(46).sigAddress='&gait_player_B.DataTypeConversion_m';
bio(46).ndims=2;
bio(46).size=[];
bio(46).isStruct=false;

bio(47).blkName='LKFE Gait Generation /Data Type Conversion1';
bio(47).sigName='';
bio(47).portIdx=0;
bio(47).dim=[1,1];
bio(47).sigWidth=1;
bio(47).sigAddress='&gait_player_B.DataTypeConversion1_b';
bio(47).ndims=2;
bio(47).size=[];
bio(47).isStruct=false;

bio(48).blkName='RHFE/Data Type Conversion';
bio(48).sigName='RHFE M.A.';
bio(48).portIdx=0;
bio(48).dim=[1,1];
bio(48).sigWidth=1;
bio(48).sigAddress='&gait_player_B.RHFEMA';
bio(48).ndims=2;
bio(48).size=[];
bio(48).isStruct=false;

bio(49).blkName='RHFE/Data Type Conversion1';
bio(49).sigName='RHFE M.V.';
bio(49).portIdx=0;
bio(49).dim=[1,1];
bio(49).sigWidth=1;
bio(49).sigAddress='&gait_player_B.RHFEMV';
bio(49).ndims=2;
bio(49).size=[];
bio(49).isStruct=false;

bio(50).blkName='RHFE/EtherCAT PDO Receive';
bio(50).sigName='RHFE jointAngle';
bio(50).portIdx=0;
bio(50).dim=[1,1];
bio(50).sigWidth=1;
bio(50).sigAddress='&gait_player_B.RHFEjointAngle';
bio(50).ndims=2;
bio(50).size=[];
bio(50).isStruct=false;

bio(51).blkName='RHFE/EtherCAT PDO Receive1';
bio(51).sigName='RHFE motorAngle';
bio(51).portIdx=0;
bio(51).dim=[1,1];
bio(51).sigWidth=1;
bio(51).sigAddress='&gait_player_B.RHFEmotorAngle';
bio(51).ndims=2;
bio(51).size=[];
bio(51).isStruct=false;

bio(52).blkName='RHFE/EtherCAT PDO Receive2';
bio(52).sigName='RHFE motorVelocity';
bio(52).portIdx=0;
bio(52).dim=[1,1];
bio(52).sigWidth=1;
bio(52).sigAddress='&gait_player_B.RHFEmotorVelocity';
bio(52).ndims=2;
bio(52).size=[];
bio(52).isStruct=false;

bio(53).blkName='RHFE Gait Generation/RKFE home and walk1';
bio(53).sigName='';
bio(53).portIdx=0;
bio(53).dim=[1,1];
bio(53).sigWidth=1;
bio(53).sigAddress='&gait_player_B.sf_RKFEhomeandwalk1_k.jointSetpoint';
bio(53).ndims=2;
bio(53).size=[];
bio(53).isStruct=false;

bio(54).blkName='RHFE Gait Generation/Clock';
bio(54).sigName='';
bio(54).portIdx=0;
bio(54).dim=[1,1];
bio(54).sigWidth=1;
bio(54).sigAddress='&gait_player_B.Clock_p';
bio(54).ndims=2;
bio(54).size=[];
bio(54).isStruct=false;

bio(55).blkName='RHFE Gait Generation/Data Type Conversion';
bio(55).sigName='';
bio(55).portIdx=0;
bio(55).dim=[1,1];
bio(55).sigWidth=1;
bio(55).sigAddress='&gait_player_B.DataTypeConversion_d';
bio(55).ndims=2;
bio(55).size=[];
bio(55).isStruct=false;

bio(56).blkName='RHFE Gait Generation/Data Type Conversion1';
bio(56).sigName='';
bio(56).portIdx=0;
bio(56).dim=[1,1];
bio(56).sigWidth=1;
bio(56).sigAddress='&gait_player_B.DataTypeConversion1_c';
bio(56).ndims=2;
bio(56).size=[];
bio(56).isStruct=false;

bio(57).blkName='RKFE/Data Type Conversion';
bio(57).sigName='RKFE M.A.';
bio(57).portIdx=0;
bio(57).dim=[1,1];
bio(57).sigWidth=1;
bio(57).sigAddress='&gait_player_B.RKFEMA';
bio(57).ndims=2;
bio(57).size=[];
bio(57).isStruct=false;

bio(58).blkName='RKFE/Data Type Conversion1';
bio(58).sigName='RKFE M.V.';
bio(58).portIdx=0;
bio(58).dim=[1,1];
bio(58).sigWidth=1;
bio(58).sigAddress='&gait_player_B.RKFEMV';
bio(58).ndims=2;
bio(58).size=[];
bio(58).isStruct=false;

bio(59).blkName='RKFE/EtherCAT PDO Receive';
bio(59).sigName='RKFE jointAngle';
bio(59).portIdx=0;
bio(59).dim=[1,1];
bio(59).sigWidth=1;
bio(59).sigAddress='&gait_player_B.RKFEjointAngle';
bio(59).ndims=2;
bio(59).size=[];
bio(59).isStruct=false;

bio(60).blkName='RKFE/EtherCAT PDO Receive1';
bio(60).sigName='RKFE motorAngle';
bio(60).portIdx=0;
bio(60).dim=[1,1];
bio(60).sigWidth=1;
bio(60).sigAddress='&gait_player_B.RKFEmotorAngle';
bio(60).ndims=2;
bio(60).size=[];
bio(60).isStruct=false;

bio(61).blkName='RKFE/EtherCAT PDO Receive2';
bio(61).sigName='RKFE motorVelocity';
bio(61).portIdx=0;
bio(61).dim=[1,1];
bio(61).sigWidth=1;
bio(61).sigAddress='&gait_player_B.RKFEmotorVelocity';
bio(61).ndims=2;
bio(61).size=[];
bio(61).isStruct=false;

bio(62).blkName='RKFE Gait Generation/RKFE home and walk1';
bio(62).sigName='';
bio(62).portIdx=0;
bio(62).dim=[1,1];
bio(62).sigWidth=1;
bio(62).sigAddress='&gait_player_B.sf_RKFEhomeandwalk1_e.jointSetpoint';
bio(62).ndims=2;
bio(62).size=[];
bio(62).isStruct=false;

bio(63).blkName='RKFE Gait Generation/Clock';
bio(63).sigName='';
bio(63).portIdx=0;
bio(63).dim=[1,1];
bio(63).sigWidth=1;
bio(63).sigAddress='&gait_player_B.Clock_h';
bio(63).ndims=2;
bio(63).size=[];
bio(63).isStruct=false;

bio(64).blkName='RKFE Gait Generation/Data Type Conversion';
bio(64).sigName='';
bio(64).portIdx=0;
bio(64).dim=[1,1];
bio(64).sigWidth=1;
bio(64).sigAddress='&gait_player_B.DataTypeConversion_c';
bio(64).ndims=2;
bio(64).size=[];
bio(64).isStruct=false;

bio(65).blkName='RKFE Gait Generation/Data Type Conversion1';
bio(65).sigName='';
bio(65).portIdx=0;
bio(65).dim=[1,1];
bio(65).sigWidth=1;
bio(65).sigAddress='&gait_player_B.DataTypeConversion1_k';
bio(65).ndims=2;
bio(65).size=[];
bio(65).isStruct=false;

function len = getlenBIO
len = 65;

