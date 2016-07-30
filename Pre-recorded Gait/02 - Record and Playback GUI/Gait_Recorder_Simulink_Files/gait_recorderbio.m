function bio=gait_recorderbio
bio = [];
bio(1).blkName='Phaseoffset';
bio(1).sigName='';
bio(1).portIdx=0;
bio(1).dim=[1,1];
bio(1).sigWidth=1;
bio(1).sigAddress='&gait_recorder_B.Phaseoffset';
bio(1).ndims=2;
bio(1).size=[];
bio(1).isStruct=false;
bio(getlenBIO) = bio(1);

bio(2).blkName='EtherCAT Init ';
bio(2).sigName='';
bio(2).portIdx=0;
bio(2).dim=[6,1];
bio(2).sigWidth=6;
bio(2).sigAddress='&gait_recorder_B.EtherCATInit[0]';
bio(2).ndims=2;
bio(2).size=[];
bio(2).isStruct=false;

bio(3).blkName='LHFE & LKFE Motor Data/Data Type Conversion';
bio(3).sigName='LHFE M.V.';
bio(3).portIdx=0;
bio(3).dim=[1,1];
bio(3).sigWidth=1;
bio(3).sigAddress='&gait_recorder_B.LHFEMV';
bio(3).ndims=2;
bio(3).size=[];
bio(3).isStruct=false;

bio(4).blkName='LHFE & LKFE Motor Data/Data Type Conversion1';
bio(4).sigName='LKFE M.V.';
bio(4).portIdx=0;
bio(4).dim=[1,1];
bio(4).sigWidth=1;
bio(4).sigAddress='&gait_recorder_B.LKFEMV';
bio(4).ndims=2;
bio(4).size=[];
bio(4).isStruct=false;

bio(5).blkName='LHFE & LKFE Motor Data/Data Type Conversion2';
bio(5).sigName='LHFE M.A.';
bio(5).portIdx=0;
bio(5).dim=[1,1];
bio(5).sigWidth=1;
bio(5).sigAddress='&gait_recorder_B.LHFEMA';
bio(5).ndims=2;
bio(5).size=[];
bio(5).isStruct=false;

bio(6).blkName='LHFE & LKFE Motor Data/Data Type Conversion3';
bio(6).sigName='LKFE M.A.';
bio(6).portIdx=0;
bio(6).dim=[1,1];
bio(6).sigWidth=1;
bio(6).sigAddress='&gait_recorder_B.LKFEMA';
bio(6).ndims=2;
bio(6).size=[];
bio(6).isStruct=false;

bio(7).blkName='LHFE & LKFE Motor Data/LHFE Motor Angle';
bio(7).sigName='';
bio(7).portIdx=0;
bio(7).dim=[1,1];
bio(7).sigWidth=1;
bio(7).sigAddress='&gait_recorder_B.LHFEMotorAngle';
bio(7).ndims=2;
bio(7).size=[];
bio(7).isStruct=false;

bio(8).blkName='LHFE & LKFE Motor Data/LHFE Motor Velocity';
bio(8).sigName='';
bio(8).portIdx=0;
bio(8).dim=[1,1];
bio(8).sigWidth=1;
bio(8).sigAddress='&gait_recorder_B.LHFEMotorVelocity';
bio(8).ndims=2;
bio(8).size=[];
bio(8).isStruct=false;

bio(9).blkName='LHFE & LKFE Motor Data/LKFE Motor Angle';
bio(9).sigName='';
bio(9).portIdx=0;
bio(9).dim=[1,1];
bio(9).sigWidth=1;
bio(9).sigAddress='&gait_recorder_B.LKFEMotorAngle';
bio(9).ndims=2;
bio(9).size=[];
bio(9).isStruct=false;

bio(10).blkName='LHFE & LKFE Motor Data/LKFE Motor Velocity';
bio(10).sigName='';
bio(10).portIdx=0;
bio(10).dim=[1,1];
bio(10).sigWidth=1;
bio(10).sigAddress='&gait_recorder_B.LKFEMotorVelocity';
bio(10).ndims=2;
bio(10).size=[];
bio(10).isStruct=false;

bio(11).blkName='LHFE Joint Angles/Data Type Conversion';
bio(11).sigName='';
bio(11).portIdx=0;
bio(11).dim=[1,1];
bio(11).sigWidth=1;
bio(11).sigAddress='&gait_recorder_B.DataTypeConversion';
bio(11).ndims=2;
bio(11).size=[];
bio(11).isStruct=false;

bio(12).blkName='LHFE Joint Angles/LHFE Joint Angle';
bio(12).sigName='LHFE Joint Angle';
bio(12).portIdx=0;
bio(12).dim=[1,1];
bio(12).sigWidth=1;
bio(12).sigAddress='&gait_recorder_B.LHFEJointAngle';
bio(12).ndims=2;
bio(12).size=[];
bio(12).isStruct=false;

bio(13).blkName='LHFE Joint Angles/LHFE Setpoint dummy';
bio(13).sigName='LHFE Setpoint dummy ';
bio(13).portIdx=0;
bio(13).dim=[1,1];
bio(13).sigWidth=1;
bio(13).sigAddress='&gait_recorder_B.LHFESetpointdummy';
bio(13).ndims=2;
bio(13).size=[];
bio(13).isStruct=false;

bio(14).blkName='LKFE Joint Angles/Data Type Conversion';
bio(14).sigName='';
bio(14).portIdx=0;
bio(14).dim=[1,1];
bio(14).sigWidth=1;
bio(14).sigAddress='&gait_recorder_B.DataTypeConversion_e';
bio(14).ndims=2;
bio(14).size=[];
bio(14).isStruct=false;

bio(15).blkName='LKFE Joint Angles/LKFE Joint Angle';
bio(15).sigName='LKFE Joint Angle';
bio(15).portIdx=0;
bio(15).dim=[1,1];
bio(15).sigWidth=1;
bio(15).sigAddress='&gait_recorder_B.LKFEJointAngle';
bio(15).ndims=2;
bio(15).size=[];
bio(15).isStruct=false;

bio(16).blkName='LKFE Joint Angles/LKFE Setpoint dummy';
bio(16).sigName='LKFE Setpoint dummy ';
bio(16).portIdx=0;
bio(16).dim=[1,1];
bio(16).sigWidth=1;
bio(16).sigAddress='&gait_recorder_B.LKFESetpointdummy';
bio(16).ndims=2;
bio(16).size=[];
bio(16).isStruct=false;

bio(17).blkName='RHFE & RKFE Motor Data/Data Type Conversion';
bio(17).sigName='RHFE M.V.';
bio(17).portIdx=0;
bio(17).dim=[1,1];
bio(17).sigWidth=1;
bio(17).sigAddress='&gait_recorder_B.RHFEMV';
bio(17).ndims=2;
bio(17).size=[];
bio(17).isStruct=false;

bio(18).blkName='RHFE & RKFE Motor Data/Data Type Conversion1';
bio(18).sigName='RKFE M.V.';
bio(18).portIdx=0;
bio(18).dim=[1,1];
bio(18).sigWidth=1;
bio(18).sigAddress='&gait_recorder_B.RKFEMV';
bio(18).ndims=2;
bio(18).size=[];
bio(18).isStruct=false;

bio(19).blkName='RHFE & RKFE Motor Data/Data Type Conversion2';
bio(19).sigName='RHFE M.A.';
bio(19).portIdx=0;
bio(19).dim=[1,1];
bio(19).sigWidth=1;
bio(19).sigAddress='&gait_recorder_B.RHFEMA';
bio(19).ndims=2;
bio(19).size=[];
bio(19).isStruct=false;

bio(20).blkName='RHFE & RKFE Motor Data/Data Type Conversion3';
bio(20).sigName='RKFE M.A.';
bio(20).portIdx=0;
bio(20).dim=[1,1];
bio(20).sigWidth=1;
bio(20).sigAddress='&gait_recorder_B.RKFEMA';
bio(20).ndims=2;
bio(20).size=[];
bio(20).isStruct=false;

bio(21).blkName='RHFE & RKFE Motor Data/RHFE Motor Angle';
bio(21).sigName='';
bio(21).portIdx=0;
bio(21).dim=[1,1];
bio(21).sigWidth=1;
bio(21).sigAddress='&gait_recorder_B.RHFEMotorAngle';
bio(21).ndims=2;
bio(21).size=[];
bio(21).isStruct=false;

bio(22).blkName='RHFE & RKFE Motor Data/RHFE Motor Velocity';
bio(22).sigName='';
bio(22).portIdx=0;
bio(22).dim=[1,1];
bio(22).sigWidth=1;
bio(22).sigAddress='&gait_recorder_B.RHFEMotorVelocity';
bio(22).ndims=2;
bio(22).size=[];
bio(22).isStruct=false;

bio(23).blkName='RHFE & RKFE Motor Data/RKFE Motor Angle';
bio(23).sigName='';
bio(23).portIdx=0;
bio(23).dim=[1,1];
bio(23).sigWidth=1;
bio(23).sigAddress='&gait_recorder_B.RKFEMotorAngle';
bio(23).ndims=2;
bio(23).size=[];
bio(23).isStruct=false;

bio(24).blkName='RHFE & RKFE Motor Data/RKFE Motor Velocity';
bio(24).sigName='';
bio(24).portIdx=0;
bio(24).dim=[1,1];
bio(24).sigWidth=1;
bio(24).sigAddress='&gait_recorder_B.RKFEMotorVelocity';
bio(24).ndims=2;
bio(24).size=[];
bio(24).isStruct=false;

bio(25).blkName='RHFE Joint Angles/Data Type Conversion';
bio(25).sigName='';
bio(25).portIdx=0;
bio(25).dim=[1,1];
bio(25).sigWidth=1;
bio(25).sigAddress='&gait_recorder_B.DataTypeConversion_h';
bio(25).ndims=2;
bio(25).size=[];
bio(25).isStruct=false;

bio(26).blkName='RHFE Joint Angles/RHFE Joint Angle';
bio(26).sigName='RHFE Joint Angle';
bio(26).portIdx=0;
bio(26).dim=[1,1];
bio(26).sigWidth=1;
bio(26).sigAddress='&gait_recorder_B.RHFEJointAngle';
bio(26).ndims=2;
bio(26).size=[];
bio(26).isStruct=false;

bio(27).blkName='RHFE Joint Angles/Sine Wave';
bio(27).sigName='RHFE Setpoint dummy ';
bio(27).portIdx=0;
bio(27).dim=[1,1];
bio(27).sigWidth=1;
bio(27).sigAddress='&gait_recorder_B.RHFESetpointdummy';
bio(27).ndims=2;
bio(27).size=[];
bio(27).isStruct=false;

bio(28).blkName='RKFE Joint Angles/Data Type Conversion';
bio(28).sigName='';
bio(28).portIdx=0;
bio(28).dim=[1,1];
bio(28).sigWidth=1;
bio(28).sigAddress='&gait_recorder_B.DataTypeConversion_f';
bio(28).ndims=2;
bio(28).size=[];
bio(28).isStruct=false;

bio(29).blkName='RKFE Joint Angles/RKFE Joint Angle';
bio(29).sigName='RKFE Joint Angle';
bio(29).portIdx=0;
bio(29).dim=[1,1];
bio(29).sigWidth=1;
bio(29).sigAddress='&gait_recorder_B.RKFEJointAngle';
bio(29).ndims=2;
bio(29).size=[];
bio(29).isStruct=false;

bio(30).blkName='RKFE Joint Angles/RKFE Setpoint dummy';
bio(30).sigName='RKFE Setpoint dummy ';
bio(30).portIdx=0;
bio(30).dim=[1,1];
bio(30).sigWidth=1;
bio(30).sigAddress='&gait_recorder_B.RKFESetpointdummy';
bio(30).ndims=2;
bio(30).size=[];
bio(30).isStruct=false;

function len = getlenBIO
len = 30;

