close all
hlc_path = '../../high-level-control';
addpath(hlc_path);

% Get the data from the target and convert it
convert_gait_data

% Joint labels
labels_joint = {'Right Hip AA','Right Hip FE','Right Knee FE','Left Hip AA','Left Hip FE','Left Knee FE'};
nj = length(labels_joint);

% Initialize joint space angles
for j=1:nj
    assignin('base',['q' num2str(j)],q(i,j))
    set_param(['march_visualization/' labels_joint{j} '/q'],'value',['q' num2str(j)])
end
    
% Initialize the model and run it
open_system('march_visualization')
set_param('march_visualization', 'SimulationCommand', 'start')

% Iterate over all joint angles and set them in simulink
assignin('base','q',q)
for i = 1:length(q)
    for j=1:nj
        assignin('base',['q' num2str(j)],q(i,j))
        set_param(['march_visualization/' labels_joint{j} '/q'],'value',['q' num2str(j)])
    end
    pause(1/100);
end
rmpath(hlc_path);