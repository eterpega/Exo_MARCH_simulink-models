function bio=MARCH_v1_1bio
bio = [];
bio(1).blkName='Database/Database Interface';
bio(1).sigName='';
bio(1).portIdx=0;
bio(1).dim=[3,1];
bio(1).sigWidth=3;
bio(1).sigAddress='&MARCH_v1_1_B.spline[0]';
bio(1).ndims=2;
bio(1).size=[];
bio(1).isStruct=false;
bio(getlenBIO) = bio(1);

bio(2).blkName='Inverse Kinematics/MATLAB Function/p1';
bio(2).sigName='';
bio(2).portIdx=0;
bio(2).dim=[1,6];
bio(2).sigWidth=6;
bio(2).sigAddress='&MARCH_v1_1_B.q[0]';
bio(2).ndims=2;
bio(2).size=[];
bio(2).isStruct=false;

bio(3).blkName='Inverse Kinematics/MATLAB Function/p2';
bio(3).sigName='';
bio(3).portIdx=1;
bio(3).dim=[1,1];
bio(3).sigWidth=1;
bio(3).sigAddress='&MARCH_v1_1_B.err';
bio(3).ndims=2;
bio(3).size=[];
bio(3).isStruct=false;

bio(4).blkName='Reachability/MATLAB Function/p1';
bio(4).sigName='';
bio(4).portIdx=0;
bio(4).dim=[1,6];
bio(4).sigWidth=6;
bio(4).sigAddress='&MARCH_v1_1_B.q_out[0]';
bio(4).ndims=2;
bio(4).size=[];
bio(4).isStruct=false;

bio(5).blkName='Reachability/MATLAB Function/p2';
bio(5).sigName='';
bio(5).portIdx=1;
bio(5).dim=[1,6];
bio(5).sigWidth=6;
bio(5).sigAddress='&MARCH_v1_1_B.err_g[0]';
bio(5).ndims=2;
bio(5).size=[];
bio(5).isStruct=false;

function len = getlenBIO
len = 5;

