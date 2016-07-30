function varargout = testing_GUI(varargin)
% TESTING_GUI MATLAB code for testing_GUI.fig
%      TESTING_GUI, by itself, creates a new TESTING_GUI or raises the existing
%      singleton*.
%
%      H = TESTING_GUI returns the handle to a new TESTING_GUI or the handle to
%      the existing singleton*.
%
%      TESTING_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TESTING_GUI.M with the given input arguments.
%
%      TESTING_GUI('Property','Value',...) creates a new TESTING_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before testing_GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to testing_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help testing_GUI

% Last Modified by GUIDE v2.5 01-Jul-2016 17:43:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @testing_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @testing_GUI_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before testing_GUI is made visible.
function testing_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to testing_GUI (see VARARGIN)

% Choose default command line output for testing_GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Determine the global variables
global fsys;
fsys = SimulinkRealTime.fileSystem;

% make sure to go to the C folder on the target PC
while not(strcmp(pwd(fsys),'C:\'))
    cd(fsys, '..');
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% --- Outputs from this function are returned to the command line.
function varargout = testing_GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pbtn_BuildConnectPlayback.
function pbtn_BuildConnectPlayback_Callback(hObject, eventdata, handles)
% hObject    handle to pbtn_BuildConnectPlayback (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% call on global variables
global simmodel_type

% set the variable model_type to recording simulink model
simmodel_type = 'gait_player';

% build the record model and connect to the target
cd('Gait_Player_Simulink_Files')
rtwbuild('gait_player')
set_param('gait_player', 'SimulationCommand', 'connect')
cd('..')

% --- Executes on button press in pbtn_BuildConnectRec.
function pbtn_BuildConnectRec_Callback(hObject, eventdata, handles)
% hObject    handle to pbtn_BuildConnectRec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% call on global variables
global simmodel_type

% set the variable model_type to recording simulink model
simmodel_type = 'gait_recorder';

% build the record model and connect to the target
cd('Gait_Recorder_Simulink_Files')
rtwbuild('gait_recorder')
set_param('gait_recorder', 'SimulationCommand', 'connect')
cd('..')

% --- Executes on button press in pbtn_SaveRec.
function pbtn_SaveRec_Callback(hObject, eventdata, handles)
% hObject    handle to pbtn_SaveRec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% call on global variables
global fsys

% open file, decode it, and load it into a variable
h = fopen(fsys, 'GAIT.DAT');
data = fread(fsys,h);
fsys.fclose(h);

% put the data in a structure into the workspace
x = SimulinkRealTime.utils.getFileScopeData(data);

% extract the data from the structure into separate vectors
% RHFE
RHFE_JointSetpoint = x.data(:,1);
RHFE_JointAngle = x.data(:,2);
RHFE_MotorAngle = x.data(:,5);
RHFE_MotorVelocity = x.data(:,6);
% RKFE
RKFE_JointSetpoint = x.data(:,3);
RKFE_JointAngle = x.data(:,4);
RKFE_MotorAngle = x.data(:,7);
RKFE_MotorVelocity = x.data(:,8);
% LHFE
LHFE_JointSetpoint = x.data(:,9);
LHFE_JointAngle = x.data(:,10);
LHFE_MotorAngle = x.data(:,13);
LHFE_MotorVelocity = x.data(:,14);
% LKFE
LKFE_JointSetpoint = x.data(:,11);
LKFE_JointAngle = x.data(:,12);
LKFE_MotorAngle = x.data(:,15);
LKFE_MotorVelocity = x.data(:,16);
% time
time = x.data(:,17);

% Find the index of the first non-zero value
k1 = find(RHFE_JointAngle,1,'first');
k2 = find(RKFE_JointAngle,1,'first');
k3 = find(LHFE_JointAngle,1,'first');
k4 = find(LKFE_JointAngle,1,'first');

% Find the value of the first non-zero value
value1 = RHFE_JointAngle(k1);
value2 = RKFE_JointAngle(k2);
value3 = LHFE_JointAngle(k3);
value4 = LKFE_JointAngle(k4);

% change all values that are zero to a non-zero
RHFE_JointAngle(1:k1-1) = RHFE_JointAngle(1:k1-1)+value1;
RKFE_JointAngle(1:k2-1) = RKFE_JointAngle(1:k2-1)+value2;
LHFE_JointAngle(1:k3-1) = LHFE_JointAngle(1:k3-1)+value3;
LKFE_JointAngle(1:k4-1) = LKFE_JointAngle(1:k4-1)+value4;

% Create the structs to safe
RHFE = struct('JointSetpoint', RHFE_JointSetpoint, 'JointAngle', RHFE_JointAngle, 'MotorAngle', RHFE_MotorAngle, 'MototVelocity', RHFE_MotorVelocity);
RKFE = struct('JointSetpoint', RKFE_JointSetpoint, 'JointAngle', RKFE_JointAngle, 'MotorAngle', RKFE_MotorAngle, 'MototVelocity', RKFE_MotorVelocity);
LHFE = struct('JointSetpoint', LHFE_JointSetpoint, 'JointAngle', LHFE_JointAngle, 'MotorAngle', LHFE_MotorAngle, 'MototVelocity', LHFE_MotorVelocity);
LKFE = struct('JointSetpoint', LKFE_JointSetpoint, 'JointAngle', LKFE_JointAngle, 'MotorAngle', LKFE_MotorAngle, 'MototVelocity', LKFE_MotorVelocity);

GaitData = [RHFE, RKFE, LHFE, LKFE];

cd('Data/Gait_Data')
uisave('GaitData')
cd('../..')

% --- Executes on button press in pbtn_Start.
function pbtn_Start_Callback(hObject, eventdata, handles)
% hObject    handle to pbtn_Start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% call on global variables
global simmodel_type

   
    
% change to the correct directory on host
if strcmp(simmodel_type, 'test_recorder');
    cd('Gait_Recorder_Simulink_Files');
else
    cd('Gait_Player_Simulink_Files');
end

set_param(simmodel_type, 'SimulationCommand', 'start');
cd('..')


% --- Executes on button press in pbtn_Stop.
function pbtn_Stop_Callback(hObject, eventdata, handles)
% hObject    handle to pbtn_Stop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% call on global variables
global fsys simmodel_type

% stop simulation
set_param(simmodel_type, 'SimulationCommand', 'stop')

if strcmp(simmodel_type, 'gait_player')
    
    % load data
    h = fopen(fsys, 'DATA.DAT');
    data = fread(fsys,h);
    fsys.fclose(h);
    
    % put the data in a structure into the workspace
    x = SimulinkRealTime.utils.getFileScopeData(data);

    % extract the data from the structure into separate vectors
    time = x.data(:,5);
    RHFE_JointAngle = x.data(:,1);
    RKFE_JointAngle = x.data(:,2);
    LHFE_JointAngle = x.data(:,3);
    LKFE_JointAngle = x.data(:,4);

    % Find the index of the first non-zero value
    k1 = find(RHFE_JointAngle,1,'first');
    k2 = find(RKFE_JointAngle,1,'first');
    k3 = find(LHFE_JointAngle,1,'first');
    k4 = find(LKFE_JointAngle,1,'first');

    % Find the value of the first non-zero value
    value1 = RHFE_JointAngle(k1);
    value2 = RKFE_JointAngle(k2);
    value3 = LHFE_JointAngle(k3);
    value4 = LKFE_JointAngle(k4);

    % change all values that are zero to a non-zero
    RHFE_JointAngle(1:k1-1) = RHFE_JointAngle(1:k1-1)+value1;
    RKFE_JointAngle(1:k2-1) = RKFE_JointAngle(1:k2-1)+value2;
    LHFE_JointAngle(1:k3-1) = LHFE_JointAngle(1:k3-1)+value3;
    LKFE_JointAngle(1:k4-1) = LKFE_JointAngle(1:k4-1)+value4;

    % Create the structs to safe
    RHFE = struct('JointAngle', RHFE_JointAngle);
    RKFE = struct('JointAngle', RKFE_JointAngle);
    LHFE = struct('JointAngle', LHFE_JointAngle);
    LKFE = struct('JointAngle', LKFE_JointAngle);

    % put all data into a single struct
    Playback_Data = [RHFE, RKFE, LHFE, LKFE];
    
    % create file name for bulk data
    [~, filename]  = strtok(datestr(datetime), ' ');
    filename = strrep(filename,':','_');  %Replace colon with underscore
    cd('Data\Playback_Data\Bulk Data')
    
    % create and/or change to the folder with the name of the current date
    if 7 == exist(date, 'dir')
        cd(date)
    else
        mkdir(date)
        cd(date)
    end
    
    % save the file and go back to the parent directory
    save(filename, 'Playback_Data');
    cd('../../../..')
    
end








% --- Executes on button press in pbtn_SelectFilePlayback.
function pbtn_SelectFilePlayback_Callback(hObject, eventdata, handles)
% hObject    handle to pbtn_SelectFilePlayback (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% call on global variables
global File2Play Path

cd('Data/Gait_Data')
[File2Play, Path] = uigetfile;
cd('../..')

% display the filename that will be used to store the Gait
set(handles.txtDispl_SelectedFilePlayback, 'string', File2Play)


% --- Executes on button press in pbtn_ConfigurePlayback.
function pbtn_ConfigurePlayback_Callback(hObject, eventdata, handles)
% hObject    handle to pbtn_ConfigurePlayback (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global File2Play Path

GUI_directory = pwd;

% go to the 'C' directory on the host computer
while not(strcmp(pwd,'C:\'))
    cd('..');
end

[~, Path_remain_PlaybackFile] = strtok(Path, '\');


cd(Path_remain_PlaybackFile)
% assign the chosen file into the workspace
assignin('base', 'file2play', File2Play);
% show the name of the configured file in the configured textbox
set(handles.txtDispl_ConfiguredPlaybackFile, 'string', File2Play)

% go to the 'C' directory on the host computer
while not(strcmp(pwd,'C:\'))
    cd('..');
end

% go to the gui folder
[~, Path_remain_GUI] = strtok(GUI_directory, '\');
cd(Path_remain_GUI);


% --- Executes on button press in pbtn_SavePlaybackData.
function pbtn_SavePlaybackData_Callback(hObject, eventdata, handles)
% hObject    handle to pbtn_SavePlaybackData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
