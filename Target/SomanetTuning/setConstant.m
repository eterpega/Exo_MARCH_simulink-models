function setConstant(name, value)
%% Set the value of constant with name 'name' to 'value'
coder.extrinsic('set_param');
coder.extrinsic('strcat');
set_param(strcat('SomanetTuning/',name), 'Value', convertnum(value));
end