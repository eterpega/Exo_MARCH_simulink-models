clear all
close all
clc

fsys=SimulinkRealTime.fileSystem;
%cd(fsys, 'GAIT_REC');

     
% open and read in the data from the Speedgoat
filename1 = input('File you want to convert> ', 's');
h = fopen(fsys, [filename1 '.DAT']);
data = fread(fsys,h);
fsys.fclose(h);
    
% put the data in a structure into the workspace
x = SimulinkRealTime.utils.getFileScopeData(data);
    
% extract the data from the structure into separate vectors
time = x.data(:,5);
RHFE = x.data(:,1);
RKFE = x.data(:,2);
LHFE = x.data(:,3);
LKFE = x.data(:,4);
    
% find the index of the first non-zero values from the data vectors
k1 = find(RHFE,1,'first');
k2 = find(RKFE,1,'first');
k3 = find(LHFE,1,'first');
k4 = find(LKFE,1,'first');
    
% find the first non-zero values from the data vectors
value1 = RHFE(k1);
value2 = RKFE(k2);
value3 = LHFE(k3);
value4 = LKFE(k4);
    
    
    
% substitute all non zero values from the data vectors with first
% non-zero values found above
RHFE(1:k1-1) = RHFE(1:k1-1)+value1;
RKFE(1:k2-1) = RKFE(1:k2-1)+value2;
LHFE(1:k3-1) = LHFE(1:k3-1)+value3;
LKFE(1:k4-1) = LKFE(1:k4-1)+value4;
    
    
    
% create a matrix from the separate vectors
DATA = [time'; RHFE'; RKFE'; LHFE'; LKFE'];
    
% ask user for name of the file to save the data and save the data to
% the specified file
filename2 = input('Type filename > ', 's');
save([filename2 '.mat'], 'DATA');
    
% move to the correct folder on the speadgoat
% cd(fsys, '..')
% cd(fsys, 'GAIT_PB')
% copy the saved .mat file to speedgoat and move back to the C folder
% SimulinkRealTime.copyFileToTarget([filename2 '.mat'])
% cd(fsys, '..')
    
%% plot encoder data
    
Fig_Encoder_Data = figure(1);
plot(time, RHFE, time, RKFE, time, LHFE, time, LKFE)
xlabel('Time [s]')
ylabel('Encoder value [-]')
legend('RHFE', 'RKFE', 'LHFE', 'LKFE')
set(Fig_Encoder_Data, 'Position', [50 50 1200 600])
%axis([0 max(time)+10 350000 500000])
grid on
    
    
%% convert raw encoder data to angles

% Maximum and minimum angles of the joints:
% Hips Abduction/Adduction
% Hips Flexion/Extension
HFE_max = 110; % full flexion
HFE_min = -18; % full extension
% Knees Flexion/Extension
KFE_max = 1.5; % full flexion
KFE_min = -120;  % full extension

% Maximum and minimum encoder values of the joints
% Hips Abduction and Adduction
% Hips Flexion/Extension
RHFE_Enc_val_Full_Ext = 340888;     % Full extension
RHFE_Enc_val_Full_Flx = 435150;     % Full flexion
LHFE_Enc_val_Full_Ext = 490459;     % Full extension
LHFE_Enc_val_Full_Flx = 396620;     % Full flexion
% Knee Flexion/Extension
RKFE_Enc_val_Full_Ext = 393895;     % Full extension
RKFE_Enc_val_Full_Flx = 305130;     % Full flexion
LKFE_Enc_val_Full_Ext = 371304;     % Full extension
LKFE_Enc_val_Full_Flx = 460672;     % Full flexion


% Encoder Value per degrees of travel
RHFE_Enc_Deg = (RHFE_Enc_val_Full_Flx - RHFE_Enc_val_Full_Ext)/(HFE_max-HFE_min);

% Degrees per encoder value
RHFE_Deg_Enc = 1/RHFE_Enc_Deg;

% Encoder Value for 0 degrees
RHFE_Enc_ZeroDeg = RHFE_Enc_val_Full_Ext - HFE_min*RHFE_Enc_Deg;

% Joint angles
% RHFE_deg = (RHFE-RHFE_Enc_ZeroDeg)*RHFE_Deg_Enc;
RHFE_deg = -(-RHFE+RHFE_Enc_val_Full_Flx)/(RHFE_Enc_val_Full_Flx-RHFE_Enc_val_Full_Ext)*(HFE_max-HFE_min)+HFE_max;
LHFE_deg = HFE_max - (HFE_max-HFE_min)/(LHFE_Enc_val_Full_Ext-LHFE_Enc_val_Full_Flx)*(LHFE-LHFE_Enc_val_Full_Flx);

RKFE_deg = KFE_max - (KFE_max-KFE_min)/(RKFE_Enc_val_Full_Ext-RKFE_Enc_val_Full_Flx)*(RKFE_Enc_val_Full_Ext-RKFE);
LKFE_deg = KFE_max - (KFE_max-KFE_min)/(LKFE_Enc_val_Full_Flx-LKFE_Enc_val_Full_Ext)*(LKFE-LKFE_Enc_val_Full_Ext);

DATA_deg = [time, RHFE_deg, RKFE_deg, LHFE_deg, LKFE_deg];

Fig_Joint_Angles = figure(2);
plot(time, RHFE_deg, time, RKFE_deg, time, LHFE_deg, time, LKFE_deg)
legend('RHFE', 'RKFE', 'LHFE', 'LKFE')
grid on


DATA_deg = [time'; RHFE_deg'; RKFE_deg'; LHFE_deg'; LKFE_deg'];
save([filename2 '_JointAngles' '.mat'], 'DATA_deg');

% Fig_Joint_Angle = figure(3);
% plot(time, RKFE_deg)
% legend('RKFE')
% grid on

    
    
% aks if more files need to be converted
% more_files = input('Do you want to convert another file? [y]/[n]> ', 's');
%     if more_files == 'y'
%         another = true;
%     else
%         another = false;
%     end
        

 %cd(fsys, '..');
