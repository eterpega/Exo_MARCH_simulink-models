function pt=MARCH_v1_1pt
pt = [];

  
pt(1).blockname = 'Inverse Kinematics/Constant';
pt(1).paramname = 'Value';
pt(1).class     = 'vector';
pt(1).nrows     = 1;
pt(1).ncols     = 3;
pt(1).subsource = 'SS_DOUBLE';
pt(1).ndims     = '2';
pt(1).size      = '[]';
pt(1).isStruct  = false;
pt(1).symbol     = 'MARCH_v1_1_P.Constant_Value_c';
pt(1).baseaddr   = '&MARCH_v1_1_P.Constant_Value_c[0]';
pt(1).dtname     = 'real_T';

pt(getlenPT) = pt(1);


  
pt(2).blockname = 'State Machine/Constant';
pt(2).paramname = 'Value';
pt(2).class     = 'scalar';
pt(2).nrows     = 1;
pt(2).ncols     = 1;
pt(2).subsource = 'SS_DOUBLE';
pt(2).ndims     = '2';
pt(2).size      = '[]';
pt(2).isStruct  = false;
pt(2).symbol     = 'MARCH_v1_1_P.Constant_Value';
pt(2).baseaddr   = '&MARCH_v1_1_P.Constant_Value';
pt(2).dtname     = 'real_T';


function len = getlenPT
len = 2;

