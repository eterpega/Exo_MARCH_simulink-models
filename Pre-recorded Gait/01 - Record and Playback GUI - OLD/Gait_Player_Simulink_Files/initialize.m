%% load the data into the model

gait_dat = coder.load('sull');

time = gait_dat.gaitData(1,:);
RHFE_rec = gait_dat.gaitData(2,:);
RKFE_rec = gait_dat.gaitData(3,:);
LHFE_rec = gait_dat.gaitData(4,:);
LKFE_rec = gait_dat.gaitData(5,:);


% set homing parameters

RHFE_homing_setpoint = RHFE_rec(1);
RKFE_homing_setpoint = RKFE_rec(1);
LHFE_homing_setpoint = LHFE_rec(1);
LKFE_homing_setpoint = LKFE_rec(1);