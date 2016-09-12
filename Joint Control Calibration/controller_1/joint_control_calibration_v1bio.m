function bio=joint_control_calibration_v1bio
bio = [];
bio(1).blkName='Motor Enable';
bio(1).sigName='';
bio(1).portIdx=0;
bio(1).dim=[1,1];
bio(1).sigWidth=1;
bio(1).sigAddress='&joint_control_calibration_v1_B.MotorEnable';
bio(1).ndims=2;
bio(1).size=[];
bio(1).isStruct=false;
bio(getlenBIO) = bio(1);

bio(2).blkName='Velocity Override';
bio(2).sigName='';
bio(2).portIdx=0;
bio(2).dim=[1,1];
bio(2).sigWidth=1;
bio(2).sigAddress='&joint_control_calibration_v1_B.VelocityOverride';
bio(2).ndims=2;
bio(2).size=[];
bio(2).isStruct=false;

bio(3).blkName='EtherCAT Init ';
bio(3).sigName='';
bio(3).portIdx=0;
bio(3).dim=[6,1];
bio(3).sigWidth=6;
bio(3).sigAddress='&joint_control_calibration_v1_B.EtherCATInit[0]';
bio(3).ndims=2;
bio(3).size=[];
bio(3).isStruct=false;

bio(4).blkName='EtherCAT PDO Receive Joint Angle';
bio(4).sigName='';
bio(4).portIdx=0;
bio(4).dim=[1,1];
bio(4).sigWidth=1;
bio(4).sigAddress='&joint_control_calibration_v1_B.EtherCATPDOReceiveJointAngle';
bio(4).ndims=2;
bio(4).size=[];
bio(4).isStruct=false;

bio(5).blkName='EtherCAT PDO Receive Spring Angle';
bio(5).sigName='';
bio(5).portIdx=0;
bio(5).dim=[1,1];
bio(5).sigWidth=1;
bio(5).sigAddress='&joint_control_calibration_v1_B.EtherCATPDOReceiveSpringAngle';
bio(5).ndims=2;
bio(5).size=[];
bio(5).isStruct=false;

bio(6).blkName='Sum';
bio(6).sigName='';
bio(6).portIdx=0;
bio(6).dim=[1,1];
bio(6).sigWidth=1;
bio(6).sigAddress='&joint_control_calibration_v1_B.Sum_e';
bio(6).ndims=2;
bio(6).size=[];
bio(6).isStruct=false;

bio(7).blkName='Sum1';
bio(7).sigName='';
bio(7).portIdx=0;
bio(7).dim=[1,1];
bio(7).sigWidth=1;
bio(7).sigAddress='&joint_control_calibration_v1_B.Sum1';
bio(7).ndims=2;
bio(7).size=[];
bio(7).isStruct=false;

bio(8).blkName='Sum2';
bio(8).sigName='';
bio(8).portIdx=0;
bio(8).dim=[1,1];
bio(8).sigWidth=1;
bio(8).sigAddress='&joint_control_calibration_v1_B.Sum2';
bio(8).ndims=2;
bio(8).size=[];
bio(8).isStruct=false;

bio(9).blkName='Sum3';
bio(9).sigName='';
bio(9).portIdx=0;
bio(9).dim=[1,1];
bio(9).sigWidth=1;
bio(9).sigAddress='&joint_control_calibration_v1_B.Sum3';
bio(9).ndims=2;
bio(9).size=[];
bio(9).isStruct=false;

bio(10).blkName='Discrete Derivative/Diff';
bio(10).sigName='';
bio(10).portIdx=0;
bio(10).dim=[1,1];
bio(10).sigWidth=1;
bio(10).sigAddress='&joint_control_calibration_v1_B.Diff';
bio(10).ndims=2;
bio(10).size=[];
bio(10).isStruct=false;

bio(11).blkName='Discrete Derivative/TSamp';
bio(11).sigName='';
bio(11).portIdx=0;
bio(11).dim=[1,1];
bio(11).sigWidth=1;
bio(11).sigAddress='&joint_control_calibration_v1_B.TSamp';
bio(11).ndims=2;
bio(11).size=[];
bio(11).isStruct=false;

bio(12).blkName='Discrete Derivative/UD';
bio(12).sigName='U(k-1)';
bio(12).portIdx=0;
bio(12).dim=[1,1];
bio(12).sigWidth=1;
bio(12).sigAddress='&joint_control_calibration_v1_B.Uk1';
bio(12).ndims=2;
bio(12).size=[];
bio(12).isStruct=false;

bio(13).blkName='Joint Position to Velocity Controller/Integrator';
bio(13).sigName='';
bio(13).portIdx=0;
bio(13).dim=[1,1];
bio(13).sigWidth=1;
bio(13).sigAddress='&joint_control_calibration_v1_B.Integrator';
bio(13).ndims=2;
bio(13).size=[];
bio(13).isStruct=false;

bio(14).blkName='Joint Position to Velocity Controller/IOut';
bio(14).sigName='';
bio(14).portIdx=0;
bio(14).dim=[1,1];
bio(14).sigWidth=1;
bio(14).sigAddress='&joint_control_calibration_v1_B.IOut';
bio(14).ndims=2;
bio(14).size=[];
bio(14).isStruct=false;

bio(15).blkName='Joint Position to Velocity Controller/POut';
bio(15).sigName='';
bio(15).portIdx=0;
bio(15).dim=[1,1];
bio(15).sigWidth=1;
bio(15).sigAddress='&joint_control_calibration_v1_B.POut';
bio(15).ndims=2;
bio(15).size=[];
bio(15).isStruct=false;

bio(16).blkName='Joint Position to Velocity Controller/Sum';
bio(16).sigName='';
bio(16).portIdx=0;
bio(16).dim=[1,1];
bio(16).sigWidth=1;
bio(16).sigAddress='&joint_control_calibration_v1_B.Sum';
bio(16).ndims=2;
bio(16).size=[];
bio(16).isStruct=false;

bio(17).blkName='Joint Torque to Velocity Controller/Integrator';
bio(17).sigName='';
bio(17).portIdx=0;
bio(17).dim=[1,1];
bio(17).sigWidth=1;
bio(17).sigAddress='&joint_control_calibration_v1_B.Integrator_p';
bio(17).ndims=2;
bio(17).size=[];
bio(17).isStruct=false;

bio(18).blkName='Joint Torque to Velocity Controller/IOut';
bio(18).sigName='';
bio(18).portIdx=0;
bio(18).dim=[1,1];
bio(18).sigWidth=1;
bio(18).sigAddress='&joint_control_calibration_v1_B.IOut_i';
bio(18).ndims=2;
bio(18).size=[];
bio(18).isStruct=false;

bio(19).blkName='Joint Torque to Velocity Controller/POut';
bio(19).sigName='';
bio(19).portIdx=0;
bio(19).dim=[1,1];
bio(19).sigWidth=1;
bio(19).sigAddress='&joint_control_calibration_v1_B.POut_b';
bio(19).ndims=2;
bio(19).size=[];
bio(19).isStruct=false;

bio(20).blkName='Joint Torque to Velocity Controller/Sum';
bio(20).sigName='';
bio(20).portIdx=0;
bio(20).dim=[1,1];
bio(20).sigWidth=1;
bio(20).sigAddress='&joint_control_calibration_v1_B.Sum_a';
bio(20).ndims=2;
bio(20).size=[];
bio(20).isStruct=false;

bio(21).blkName='Joint Velocity to Torque Controller/Integrator';
bio(21).sigName='';
bio(21).portIdx=0;
bio(21).dim=[1,1];
bio(21).sigWidth=1;
bio(21).sigAddress='&joint_control_calibration_v1_B.Integrator_o';
bio(21).ndims=2;
bio(21).size=[];
bio(21).isStruct=false;

bio(22).blkName='Joint Velocity to Torque Controller/IOut';
bio(22).sigName='';
bio(22).portIdx=0;
bio(22).dim=[1,1];
bio(22).sigWidth=1;
bio(22).sigAddress='&joint_control_calibration_v1_B.IOut_g';
bio(22).ndims=2;
bio(22).size=[];
bio(22).isStruct=false;

bio(23).blkName='Joint Velocity to Torque Controller/POut';
bio(23).sigName='';
bio(23).portIdx=0;
bio(23).dim=[1,1];
bio(23).sigWidth=1;
bio(23).sigAddress='&joint_control_calibration_v1_B.POut_n';
bio(23).ndims=2;
bio(23).size=[];
bio(23).isStruct=false;

bio(24).blkName='Joint Velocity to Torque Controller/Sum';
bio(24).sigName='';
bio(24).portIdx=0;
bio(24).dim=[1,1];
bio(24).sigWidth=1;
bio(24).sigAddress='&joint_control_calibration_v1_B.Sum_o';
bio(24).ndims=2;
bio(24).size=[];
bio(24).isStruct=false;

function len = getlenBIO
len = 24;

