function pt=testpt
pt = [];

  
pt(1).blockname = 'Uniform Random Number';
pt(1).paramname = 'Minimum';
pt(1).class     = 'scalar';
pt(1).nrows     = 1;
pt(1).ncols     = 1;
pt(1).subsource = 'SS_DOUBLE';
pt(1).ndims     = '2';
pt(1).size      = '[]';
pt(1).isStruct  =false;
pt(getlenPT) = pt(1);


  
pt(2).blockname = 'Uniform Random Number';
pt(2).paramname = 'Maximum';
pt(2).class     = 'scalar';
pt(2).nrows     = 1;
pt(2).ncols     = 1;
pt(2).subsource = 'SS_DOUBLE';
pt(2).ndims     = '2';
pt(2).size      = '[]';
pt(2).isStruct  =false;


  
pt(3).blockname = 'Uniform Random Number';
pt(3).paramname = 'Seed';
pt(3).class     = 'scalar';
pt(3).nrows     = 1;
pt(3).ncols     = 1;
pt(3).subsource = 'SS_DOUBLE';
pt(3).ndims     = '2';
pt(3).size      = '[]';
pt(3).isStruct  =false;

function len = getlenPT
len = 3;

