% Use this function to run the simulink model locally. This script will
% comment out all unnecessary blocks and set specific parameters for the
% model to function on your local host.

% Define model as single cell array
model = {'joint_calibrator'};

% Load the model in memory before we open it.
% open_system(model{1});
joint = 'LHAA';
switch joint
    case 'RHAA'
        jointOut = 'Hip_HAA.Outputs.R_';
        jointIn = 'Hip_HAA.Inputs.R_';
    case 'RHFE'
        jointOut = 'Right_Leg.Outputs.H_';
        jointIn = 'Right_Leg.Inputs.H_';
    case 'RKFE'
        jointOut = 'Right_Leg.Outputs.K_';
        jointIn = 'Right_Leg.Inputs.K_';
    case 'LHAA'
        jointOut = 'Hip_HAA.Outputs.L_';
        jointIn = 'Hip_HAA.Inputs.L_';
    case 'LHFE'
        jointOut = 'Left_Leg.Outputs.H_';
        jointIn = 'Left_Leg.Inputs.H_';
    case 'LKFE'
        jointOut = 'Left_Leg.Outputs.K_';
        jointIn = 'Left_Leg.Inputs.K_';
end

blocks = find_system([model{1} '/Joint']);

% We want to iterate over all blocks and replace the PDO map. We do that by
% simply going over all blocks and finding the value of the PDO and
% prepending it with the correct output/input joint.
for i = 1:length(blocks)
    try
        % Get signal
        signal = get_param(blocks(i),'sig_name');
        
        % Get the PDO as value we are sending
        split = regexp(signal,'\_','split');
        cell = [split{:}];
        value = cell(end);
        
        if(isempty(regexp(char(signal),'Outputs','match')))
            out = 0;
        else
            out = 1;
        end
        
        % Set the parameter of the EtherCAT block
        if(out)
            pdo = strcat(jointOut,value);
        else
            pdo = strcat(jointIn,value);
        end
        set_param(char(blocks(i)),'sig_name',char(pdo))
        
    catch
    end
end

