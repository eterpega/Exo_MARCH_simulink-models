%% Initialize all local simulation/testing blocks to specified value
    

% Input device: Trigger buttons
set_param('MARCH_v1_5/Input Device/Right Trigger', 'Value', '0')
set_param('MARCH_v1_5/Input Device/Left Trigger', 'Value', '0')
set_param('MARCH_v1_5/Input Device/Both Triggers', 'Value', '0')

% Input device: Safety buttons
set_param('MARCH_v1_5/Input Device/Right Safety', 'Value', '0')
set_param('MARCH_v1_5/Input Device/Left Safety', 'Value', '0')
set_param('MARCH_v1_5/Input Device/Both Safety', 'Value', '0')

% Input device: scroll wheel
set_param('MARCH_v1_5/Input Device/Right Scroll Click', 'Value', '0')
set_param('MARCH_v1_5/Input Device/Right Scroll Mode', 'Value', '0')

% Controller feedback: done variables
set_param('MARCH_v1_5/Input Device/doneSitting', 'Value', '0')
set_param('MARCH_v1_5/Input Device/doneStanding', 'Value', '0')
set_param('MARCH_v1_5/Input Device/doneStepConst', 'Value', '0')
set_param('MARCH_v1_5/Input Device/doneStepPeak', 'Value', '0')