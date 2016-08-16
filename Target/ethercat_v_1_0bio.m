function bio=ethercat_v_1_0bio
bio = [];
bio(1).blkName='EtherCAT Init ';
bio(1).sigName='';
bio(1).portIdx=0;
bio(1).dim=[6,1];
bio(1).sigWidth=6;
bio(1).sigAddress='&ethercat_v_1_0_B.EtherCATInit[0]';
bio(1).ndims=2;
bio(1).size=[];
bio(1).isStruct=false;
bio(getlenBIO) = bio(1);

bio(2).blkName='LHAA/Motor Enable';
bio(2).sigName='';
bio(2).portIdx=0;
bio(2).dim=[1,1];
bio(2).sigWidth=1;
bio(2).sigAddress='&ethercat_v_1_0_B.MotorEnable';
bio(2).ndims=2;
bio(2).size=[];
bio(2).isStruct=false;

bio(3).blkName='LHAA/Velocity';
bio(3).sigName='';
bio(3).portIdx=0;
bio(3).dim=[1,1];
bio(3).sigWidth=1;
bio(3).sigAddress='&ethercat_v_1_0_B.Velocity';
bio(3).ndims=2;
bio(3).size=[];
bio(3).isStruct=false;

bio(4).blkName='LHAA/Velocity Override';
bio(4).sigName='';
bio(4).portIdx=0;
bio(4).dim=[1,1];
bio(4).sigWidth=1;
bio(4).sigAddress='&ethercat_v_1_0_B.VelocityOverride';
bio(4).ndims=2;
bio(4).size=[];
bio(4).isStruct=false;

bio(5).blkName='LHAA/Gain1';
bio(5).sigName='';
bio(5).portIdx=0;
bio(5).dim=[1,1];
bio(5).sigWidth=1;
bio(5).sigAddress='&ethercat_v_1_0_B.Gain1';
bio(5).ndims=2;
bio(5).size=[];
bio(5).isStruct=false;

bio(6).blkName='LHAA/EtherCAT PDO Receive';
bio(6).sigName='';
bio(6).portIdx=0;
bio(6).dim=[1,1];
bio(6).sigWidth=1;
bio(6).sigAddress='&ethercat_v_1_0_B.EtherCATPDOReceive';
bio(6).ndims=2;
bio(6).size=[];
bio(6).isStruct=false;

bio(7).blkName='LHAA/EtherCAT PDO Receive1';
bio(7).sigName='';
bio(7).portIdx=0;
bio(7).dim=[1,1];
bio(7).sigWidth=1;
bio(7).sigAddress='&ethercat_v_1_0_B.EtherCATPDOReceive1';
bio(7).ndims=2;
bio(7).size=[];
bio(7).isStruct=false;

bio(8).blkName='LHAA/EtherCAT PDO Receive2';
bio(8).sigName='';
bio(8).portIdx=0;
bio(8).dim=[1,1];
bio(8).sigWidth=1;
bio(8).sigAddress='&ethercat_v_1_0_B.EtherCATPDOReceive2';
bio(8).ndims=2;
bio(8).size=[];
bio(8).isStruct=false;

bio(9).blkName='LHFE/Gain1';
bio(9).sigName='';
bio(9).portIdx=0;
bio(9).dim=[1,1];
bio(9).sigWidth=1;
bio(9).sigAddress='&ethercat_v_1_0_B.Gain1_b';
bio(9).ndims=2;
bio(9).size=[];
bio(9).isStruct=false;

bio(10).blkName='LHFE/EtherCAT PDO Receive';
bio(10).sigName='';
bio(10).portIdx=0;
bio(10).dim=[1,1];
bio(10).sigWidth=1;
bio(10).sigAddress='&ethercat_v_1_0_B.EtherCATPDOReceive_i';
bio(10).ndims=2;
bio(10).size=[];
bio(10).isStruct=false;

bio(11).blkName='LHFE/EtherCAT PDO Receive1';
bio(11).sigName='';
bio(11).portIdx=0;
bio(11).dim=[1,1];
bio(11).sigWidth=1;
bio(11).sigAddress='&ethercat_v_1_0_B.EtherCATPDOReceive1_h';
bio(11).ndims=2;
bio(11).size=[];
bio(11).isStruct=false;

bio(12).blkName='LHFE/EtherCAT PDO Receive2';
bio(12).sigName='';
bio(12).portIdx=0;
bio(12).dim=[1,1];
bio(12).sigWidth=1;
bio(12).sigAddress='&ethercat_v_1_0_B.EtherCATPDOReceive2_f';
bio(12).ndims=2;
bio(12).size=[];
bio(12).isStruct=false;

bio(13).blkName='RHAA/Gain1';
bio(13).sigName='';
bio(13).portIdx=0;
bio(13).dim=[1,1];
bio(13).sigWidth=1;
bio(13).sigAddress='&ethercat_v_1_0_B.Gain1_j';
bio(13).ndims=2;
bio(13).size=[];
bio(13).isStruct=false;

bio(14).blkName='RHAA/EtherCAT PDO Receive';
bio(14).sigName='';
bio(14).portIdx=0;
bio(14).dim=[1,1];
bio(14).sigWidth=1;
bio(14).sigAddress='&ethercat_v_1_0_B.EtherCATPDOReceive_d';
bio(14).ndims=2;
bio(14).size=[];
bio(14).isStruct=false;

bio(15).blkName='RHAA/EtherCAT PDO Receive1';
bio(15).sigName='';
bio(15).portIdx=0;
bio(15).dim=[1,1];
bio(15).sigWidth=1;
bio(15).sigAddress='&ethercat_v_1_0_B.EtherCATPDOReceive1_f';
bio(15).ndims=2;
bio(15).size=[];
bio(15).isStruct=false;

bio(16).blkName='RHAA/EtherCAT PDO Receive2';
bio(16).sigName='';
bio(16).portIdx=0;
bio(16).dim=[1,1];
bio(16).sigWidth=1;
bio(16).sigAddress='&ethercat_v_1_0_B.EtherCATPDOReceive2_e';
bio(16).ndims=2;
bio(16).size=[];
bio(16).isStruct=false;

bio(17).blkName='RHFE/Gain1';
bio(17).sigName='';
bio(17).portIdx=0;
bio(17).dim=[1,1];
bio(17).sigWidth=1;
bio(17).sigAddress='&ethercat_v_1_0_B.Gain1_l';
bio(17).ndims=2;
bio(17).size=[];
bio(17).isStruct=false;

bio(18).blkName='RHFE/EtherCAT PDO Receive';
bio(18).sigName='';
bio(18).portIdx=0;
bio(18).dim=[1,1];
bio(18).sigWidth=1;
bio(18).sigAddress='&ethercat_v_1_0_B.EtherCATPDOReceive_p';
bio(18).ndims=2;
bio(18).size=[];
bio(18).isStruct=false;

bio(19).blkName='RHFE/EtherCAT PDO Receive1';
bio(19).sigName='';
bio(19).portIdx=0;
bio(19).dim=[1,1];
bio(19).sigWidth=1;
bio(19).sigAddress='&ethercat_v_1_0_B.EtherCATPDOReceive1_hr';
bio(19).ndims=2;
bio(19).size=[];
bio(19).isStruct=false;

bio(20).blkName='RHFE/EtherCAT PDO Receive2';
bio(20).sigName='';
bio(20).portIdx=0;
bio(20).dim=[1,1];
bio(20).sigWidth=1;
bio(20).sigAddress='&ethercat_v_1_0_B.EtherCATPDOReceive2_m';
bio(20).ndims=2;
bio(20).size=[];
bio(20).isStruct=false;

function len = getlenBIO
len = 20;

