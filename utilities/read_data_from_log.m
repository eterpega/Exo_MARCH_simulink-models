function read_data_from_log(nameOfFileToSave)
%HOW TO USE
%for one, script only works when usb stick is still in the target and pc is connected to
%target!
%add a target scopre to the simlink model
%set the scope type to file and change the number of sampels to ~500.000
%set the name to "X.dat" to what you want it
%Then here add the code to open and plot the data.

% Attach to the target computer file system.
close all;clc;
f=SimulinkRealTime.fileSystem;

%Open the file, read the data, close the file.
read=fopen(f,'Velocity.dat');
data_velocity=fread(f,read);
f.fclose(read);

read=fopen(f,'Torque.dat');
data_torque=fread(f,read);
f.fclose(read);

read=fopen(f,'Position.dat');
data_position=fread(f,read);
f.fclose(read);

read=fopen(f,'Current.dat');
data_current=fread(f,read);
f.fclose(read);

read=fopen(f,'temp.dat');
data_temp=fread(f,read);
f.fclose(read);

% Unpack the data.
velocity=SimulinkRealTime.utils.getFileScopeData(data_velocity);
torque=SimulinkRealTime.utils.getFileScopeData(data_torque);
position=SimulinkRealTime.utils.getFileScopeData(data_position);
currents=SimulinkRealTime.utils.getFileScopeData(data_current);
Temperature=SimulinkRealTime.utils.getFileScopeData(data_temp);

%determine actual starttime of measurements, so that plots dont show large
%peaks going from zero to actual value in the beginnen of the measurements

for i = 1:length(Temperature.data(:,2))

   if Temperature.data(i,1) > 5
       
       start_time = i;
       break
   end
   if max(Temperature.data(:,1)) == 0
      start_time = 1; 
   end
   
end
end_time = length(Temperature.data(:,2));
%% Date for saving
dateNow = datetime('now');
dateNow.Format = 'uuuu_MM_dd_HH:mm:ss';
dateNowShort = dateNow;
dateNowShort.Format = 'uuuu-MM-dd';
timeForSave = dateNow;
timeForSave.Format = 'HH.mm';
%%
%plot all the data
%position

figure(1)
title('Temperature')
plot(Temperature.data(start_time:end_time,3),Temperature.data(start_time:end_time,1),Temperature.data(start_time:end_time,3),Temperature.data(start_time:end_time,2))
legend('Motor Temperature','Board Temperature')
xlabel('Time [s]')
ylabel('Temperature [Celcius]')

figure(2)
title('Position')
plot(position.data(start_time:end_time,3),position.data(start_time:end_time,1),position.data(start_time:end_time,3),position.data(start_time:end_time,2))
legend('Target Position','Actual Position')
xlabel('Time [s]')
ylabel('Angular Position [$\circ$/100')

%velocity
figure(3)
title('Velocity')
plot(velocity.data(start_time:end_time,3),velocity.data(start_time:end_time,1),velocity.data(start_time:end_time,3),velocity.data(start_time:end_time,2))
legend('Target Velocity','Actual Velocity')
xlabel('Time [s]')
ylabel('Angular velocity [rpm]')

%torque
figure(4)
title('Torque')
plot(torque.data(start_time:end_time,3),torque.data(start_time:end_time,1),torque.data(start_time:end_time,3),torque.data(start_time:end_time,2))
legend('Target Torque','Actual Torque')
xlabel('Time [s]')
ylabel('Torque [mNm]')

%currents
figure(5)
title('Currents')
plot(currents.data(start_time:length(currents.data(:,6)),6),currents.data(start_time:length(currents.data(:,1)),1),currents.data(start_time:length(currents.data(:,6)),6),currents.data(start_time:length(currents.data(:,6)),2),currents.data(start_time:length(currents.data(:,6)),6),currents.data(start_time:length(currents.data(:,6)),3),currents.data(start_time:length(currents.data(:,6)),6),currents.data(start_time:length(currents.data(:,6)),4));
legend('Total', 'Phase A', 'Phase B', 'Phase C')
xlabel('Time [s]')
ylabel('Ampere [mA]')

mkdir(strcat('Data_files/Data_measurements/',char(dateNowShort)));

save(strcat('Data_files/Data_measurements/',char(dateNowShort),'/',char(timeForSave),'_',char(nameOfFileToSave),'position','.mat'),'position');
save(strcat('Data_files/Data_measurements/',char(dateNowShort),'/',char(timeForSave),'_',char(nameOfFileToSave),'torque','.mat'),'torque');
save(strcat('Data_files/Data_measurements/',char(dateNowShort),'/',char(timeForSave),'_',char(nameOfFileToSave),'velocity','.mat'),'velocity');
save(strcat('Data_files/Data_measurements/',char(dateNowShort),'/',char(timeForSave),'_',char(nameOfFileToSave),'currents','.mat'),'currents');
end