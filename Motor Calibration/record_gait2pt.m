function pt=record_gait2pt
pt = [];

  
pt(1).blockname = 'Waveform Generator';
pt(1).paramname = 'SelectedSignal';
pt(1).class     = 'scalar';
pt(1).nrows     = 1;
pt(1).ncols     = 1;
pt(1).subsource = 'SS_DOUBLE';
pt(1).ndims     = '2';
pt(1).size      = '[]';
pt(1).isStruct  =false;
pt(getlenPT) = pt(1);

function len = getlenPT
len = 1;

