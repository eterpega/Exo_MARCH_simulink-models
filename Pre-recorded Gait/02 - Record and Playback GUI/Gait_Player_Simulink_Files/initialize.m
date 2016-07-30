%% load the data into the model

cd('../Data/Gait_Data')
gait_dat = coder.load('4step');
cd('../../Gait_Player_Simulink_Files')


time = gait_dat.gaitData(1,:);
RHFE_rec = gait_dat.gaitData(2,:);
RKFE_rec = gait_dat.gaitData(3,:);
LHFE_rec = gait_dat.gaitData(4,:);
LKFE_rec = gait_dat.gaitData(5,:);