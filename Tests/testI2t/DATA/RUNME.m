
load 'Temperature'
load 'Velocity'
load 'Torque'
load 'Position'
load 'currents'
%determine actual starttime of measurements, so that plots dont show large
%peaks going from zero to actual value in the beginnen of the measurements

for i = 1:length(Temperature.data(:,2))

   if Temperature.data(i,1) > 5
       
       start_time = i;
       break
   end
   
end
end_time = length(Temperature.data(:,2));
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
ylabel('Torque [N/m]')

%currents
figure(5)
title('Currents')
plot(currents.data(start_time:end_time,6),currents.data(start_time:end_time,1))%,currents.data(start_time:end_time,6),currents.data(start_time:end_time,2),currents.data(start_time:end_time,6),currents.data(start_time:end_time,3),currents.data(start_time:end_time,6),currents.data(start_time:end_time,4));
legend('Total current')
xlabel('Time [s]')
ylabel('Ampere [A]')

a.time = currents.data(start_time:end_time,6);
a.signals(1).values = currents.data(start_time:end_time,1);
a.signals(1).dimensions = 1;
a.signals(2).values = Temperature.data(start_time:end_time,1);
a.signals(2).dimensions = 1;
