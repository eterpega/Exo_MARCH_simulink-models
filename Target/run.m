function run(location)
% Use this function to run the simulink model locally. This script will
% comment out all unnecessary blocks and set specific parameters for the
% model to function on your local host.

% Define model as single cell array
model = {'MARCH_v1_4'};

% Load the model in memory before we open it.
open_system(model{1});

% If set to local then the blocks used for the target should be COMMENTED
if(strcmp(location,'local'))
    target = 'on';
    local = 'off';
    localValue = 1;
    targetValue = 0;
elseif(strcmp(location,'target'))
    target = 'off';
    local = 'on';
    localValue = 0;
    targetValue = 1;
else
    error('Wrong option selected. Options are: "local" and "target"');
    return
end


% Enable soft real-time
set_param([model{1} '/Simulation Pace'],'commented',local)

% Set EtherCAT Config File
if(targetValue)
   config = fullfile(fileparts(pwd),'EtherCAT Config Files','quad_slave_both_legs_v1.0.xml');
   set_param([model{1} '/EtherCAT Initialization/EtherCAT Init'],'config_file',config)
end

% Disable all EtherCAT Blocks
set_param([model{1} '/EtherCAT Initialization'],'commented',target)
set_param([model{1} '/EtherCAT Motor Parameters'],'commented',target)
set_param([model{1} '/Input Device/EtherCAT Input Device'],'commented',target)
set_param([model{1} '/Point&Go/EtherCAT Point&Go'],'commented',target)
set_param([model{1} '/EtherCAT Joint Data In'],'commented',target)
set_param([model{1} '/EtherCAT Joint Setpoints'],'commented',target)

% Disable other unnecessary blocks for local simulation
set_param([model{1} '/Data Logging'],'commented',target)
set_param([model{1} '/Error Handling'],'commented',target)
set_param([model{1} '/GUI Communication'],'commented',target)
set_param([model{1} '/Pilot Feedback'],'commented',target)

% Assign data to model workspace
hws = get_param(bdroot, 'modelworkspace');
hws.assignin('localValue',localValue);
hws.assignin('targetValue',targetValue);

end