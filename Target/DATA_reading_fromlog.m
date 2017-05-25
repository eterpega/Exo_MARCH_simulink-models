%HOW TO USE
%for one, script only works when usb stick is still in the target and pc is connected to
%target!
%add a target scopre to the simlink model
%set the scope type to file and change the number of sampels to ~500.000
%set the name to "X.dat" to what you want it
%Then here add the code to open and plot the data.

% Attach to the target computer file system.
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

% Unpack the data.
velocity=SimulinkRealTime.utils.getFileScopeData(data_velocity);
torque=SimulinkRealTime.utils.getFileScopeData(data_torque);
position=SimulinkRealTime.utils.getFileScopeData(data_position);
currents=SimulinkRealTime.utils.getFileScopeData(data_current);

%determine starttime of measurements, so that plots dont start on zero
start_time = 1;
for i = 1:length(velocity.data(:,2))

   if velocity.data(i,1) ~= 0 && start_time == 0
       
       start_time = i;
   end
   
end
end_time = length(velocity.data(:,2));
%%
%plot all the data
%position
figure(2)
title('Position')
plot(position.data(start_time:end_time,3),position.data(start_time:end_time,1),position.data(start_time:end_time,3),position.data(start_time:end_time,2))
legend('Target Position','Actual Position')

%velocity
figure(3)
title('Velocity')
plot(velocity.data(start_time:end_time,3),velocity.data(start_time:end_time,1),velocity.data(start_time:end_time,3),velocity.data(start_time:end_time,2))
legend('Target Velocity','Actual Velocity')

%torque
figure(4)
title('Torque')
plot(torque.data(start_time:end_time,3),torque.data(start_time:end_time,1),torque.data(start_time:end_time,3),torque.data(start_time:end_time,2))
legend('Target Torque','Actual Torque')

%currents
figure(5)
title('Currents')
plot(currents.data(start_time:end_time,5),currents.data(start_time:end_time,1),currents.data(start_time:end_time,5),currents.data(start_time:end_time,2),currents.data(start_time:end_time,5),currents.data(start_time:end_time,3),currents.data(start_time:end_time,5),currents.data(start_time:end_time,4));
mkdir('temporaryResults');
save('temporaryResults/position','position');
save('temporaryResults/torque','torque');
save('temporaryResults/velocity','velocity');
save('temporaryResults/currents','currents');