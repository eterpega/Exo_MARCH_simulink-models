%The Hacker A60 7s 28 pole (March 1, Mindwalker) motor is used as a reference 
%Values come from this confluence page:
%http://confluence.projectmarch.nl:8090/display/05TECH/01+-+Table+of+motor+options
%More equations can be found here: 
%http://machinedesign.com/motorsdrives/how-calculate-new-dc-motor-parameters-modified-winding

%Initialization
close all %Close all windows
clear all %Clear all variables
clc       %Clear command window

%SET MOTOR PARAMETERS (Known from datasheet)
R_armat=0.026;           %[Ohm] Armature Resistance
K_v=216;                %[RPM/V] Velocity Constant
K_w=K_v*2*pi/60;
K_t=0.044415;           %[(Nm)/A] Torque Constant
K_m=0.275452;           %[(Nm)/sqrt(W)] Motor Constant
P_max=2400;             %[W] Maximum continuous power
V_rated=48;             %[V] Motor rated voltage
V_in=20;                %[V] input voltage (from the DC source) 
w_noload=K_v*V_rated;   %[RPM] No-load speed

%SET MOTOR PARAMETERS (Unknown and guessed. Needs further investigation)
J_rotor=1;              %[g*m^2] Rotor inertia (standard value from simulink)
H_armat=1.2e-5;           %[H] Armature Inductance (set to a small non-zero value as advised in the DC-Motor block in simulink)

%SET HARMONIC DRIVE PARAMETERS
N_teeth_elip=100;       %[-] Number of teeth on elliptical gear
N_teeth_circ=101;       %[-] Number of teeth on circular gear
mu = [0.05, 0.05];
C_thermal = 50;         %[J/K] Thermal mass
T_initial = 320;         %[K]
T_efficiency = [1,200,400]; %[K] Temperatures at which the efficiency is known
etha_efficiency = [0.001,0.5,1]; %[-] Efficiency of the harmonic drive at different temperatures
P_threshold = 0.001;     %[W]

%SET LOAD PARAMETERS
I_load = 4;             %[kg*m^2]

%Run the simulink model
sim('v05DCMotorHarmonicDriveTemperatureDependent');

%Plot interresting values
%plot(Voltage_Motor.time,Voltage_Motor.signals.values,'b:'...
%    ,Current_Motor.time,Current_Motor.signals.values,'g-')
%title('Motor voltage & current');
%xlabel('Time (s)');
%legend('Motor voltage [V]','Motor current [A]');