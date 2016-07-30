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

bio(3).blkName='EtherCAT PDO Receive';
bio(3).sigName='RHFE';
bio(3).portIdx=0;
bio(3).dim=[1,1];
bio(3).sigWidth=1;
bio(3).sigAddress='&gait_recorder_B.RHFE';
bio(3).ndims=2;
bio(3).size=[];
bio(3).isStruct=false;

bio(4).blkName='EtherCAT PDO Receive1';
bio(4).sigName='RKFE';
bio(4).portIdx=0;
bio(4).dim=[1,1];
bio(4).sigWidth=1;
bio(4).sigAddress='&gait_recorder_B.RKFE';
bio(4).ndims=2;
bio(4).size=[];
bio(4).isStruct=false;

bio(5).blkName='EtherCAT PDO Receive2';
bio(5).sigName='LHFE';
bio(5).portIdx=0;
bio(5).dim=[1,1];
bio(5).sigWidth=1;
bio(5).sigAddress='&gait_recorder_B.LHFE';
bio(5).ndims=2;
bio(5).size=[];
bio(5).isStruct=false;

bio(6).blkName='EtherCAT PDO Receive3';
bio(6).sigName='LKFE';
bio(6).portIdx=0;
bio(6).dim=[1,1];
bio(6).sigWidth=1;
bio(6).sigAddress='&gait_recorder_B.LKFE';
bio(6).ndims=2;
bio(6).size=[];
bio(6).isStruct=false;

function len = getlenBIO
len = 6;

