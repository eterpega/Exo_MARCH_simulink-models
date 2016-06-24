function varargout = test_gui(varargin)
%TEST_GUI M-file for test_gui.fig
%      TEST_GUI, by itself, creates a new TEST_GUI or raises the existing
%      singleton*.
%
%      H = TEST_GUI returns the handle to a new TEST_GUI or the handle to
%      the existing singleton*.
%
%      TEST_GUI('Property','Value',...) creates a new TEST_GUI using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to test_gui_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      TEST_GUI('CALLBACK') and TEST_GUI('CALLBACK',hObject,...) call the
%      local function named CALLBACK in TEST_GUI.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help test_gui

% Last Modified by GUIDE v2.5 23-Jun-2016 14:56:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @test_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @test_gui_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before test_gui is made visible.
function test_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Determine the global variables
global fsys;
fsys = SimulinkRealTime.fileSystem;

% make sure to go to the correct file on the target PC
while not(strcmp(pwd(fsys),'C:\'))
    cd(fsys, '..');
end
cd(fsys, 'GAITS')

% read all files in the GAITS folder and write them to listbox
a = dir(fsys);
c = cell(length(a),1);
    for i=1:length(a)
        b = a(i).name;
        c(i) = b(1);
    end
set(handles.lb_FilesOnTarget, 'string', c)


% read all files in the Gait_Data/MAT encoder values directory on the host
cd('Gait_Data/MAT Encoder Values')
a = dir;
c = cell(length(a)-2,1);
     for i=1:length(a)-2
         b = strtok(a(i+2).name, '.');
         c{i} = b;
     end
set(handles.lb_CovertedFiles, 'string', c)
cd('../..')


% Choose default command line output for test_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes test_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = test_gui_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% --- Executes on button press in pbtn_BuildConnect_Rec.
function pbtn_BuildConnect_Rec_Callback(hObject, eventdata, handles)
% hObject    handle to pbtn_BuildConnect_Rec (see GCBO)
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




% --- Executes on button press in pbtn_StartSim.
function pbtn_StartSim_Callback(hObject, eventdata, handles)
% hObject    handle to pbtn_StartSim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% call on global variables
global simmodel_type

if strcmp(simmodel_type, 'gait_recorder')
    cd('Gait_Recorder_Simulink_Files')
else
    cd('Gait_Player_Simulink_Files')
end

set_param(simmodel_type, 'SimulationCommand', 'start')
cd('..')


% --- Executes on button press in pbtn_StopSim.
function pbtn_StopSim_Callback(hObject, eventdata, handles)
% hObject    handle to pbtn_StopSim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% call on global variables
global fsys simmodel_type

% change to the right directory
if strcmp(simmodel_type, 'gait_recorder')
    cd('Gait_Recorder_Simulink_Files')
    
    % update listbox of target folder
    a = dir(fsys);
    c = cell(length(a),1);
    for i=1:length(a)
        b = a(i).name;
        c(i) = b(1);
    end
    set(handles.lb_FilesOnTarget, 'string', c)
else
    cd('Gait_Player_Simulink_Files')
end

% stop simulation
set_param(simmodel_type, 'SimulationCommand', 'stop')

% change back to main directory
cd('..')





% --- Executes on button press in pbtn_UpdateWS.
function pbtn_UpdateWS_Callback(hObject, eventdata, handles)
% hObject    handle to pbtn_UpdateWS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%set_param('test', 'SimulationCommand', 'update')



function txtEdt_FilenameRec_Callback(hObject, eventdata, handles)
% hObject    handle to txtEdt_FilenameRec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtEdt_FilenameRec as text
%        str2double(get(hObject,'String')) returns contents of txtEdt_FilenameRec as a double


% --- Executes during object creation, after setting all properties.
function txtEdt_FilenameRec_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtEdt_FilenameRec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pbtn_ConfigureRec.
function pbtn_ConfigureRec_Callback(hObject, eventdata, handles)
% hObject    handle to pbtn_ConfigureRec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% call on global variables
global fsys filename_rec 

% read filename from the input textbox
filename_rec_upper = upper(get(handles.txtEdt_FilenameRec, 'string'));

% if the filename == test --> overwrite file
% if the filename does not exist yet --> use the given filename
% if the filename does exist add _new and use that
if strcmp(filename_rec_upper, 'TEST');
    filename_rec = strcat(get(handles.txtEdt_FilenameRec, 'string'), '.dat');
    set(handles.txtDispl_FilenameRec, 'BackgroundColor', 'green');
else
    a = dir(fsys);
    c = cell(length(a),1);
    for i=1:length(a)
        b = a(i).name;
        c(i) = b(1);
    end
    if 1 == any(ismember(c(1,:),filename_rec_upper));
        filename_rec = strcat(get(handles.txtEdt_FilenameRec, 'string'),'_new', '.dat');
        set(handles.txtDispl_FilenameRec, 'BackgroundColor', 'red');
    else
        filename_rec = strcat(get(handles.txtEdt_FilenameRec, 'string'), '.dat');
        set(handles.txtDispl_FilenameRec, 'BackgroundColor', 'green');
    end
end

% display the filename that will be used to store the Gait
set(handles.txtDispl_FilenameRec, 'string', filename_rec)

% set the filename in the file scope
cd('Gait_Recorder_Simulink_Files')
set_param('gait_recorder/File_Scope', 'Filename', filename_rec);
cd('..')



% --- Executes on button press in pbtn_MakeFilenameRec_Test.
function pbtn_MakeFilenameRec_Test_Callback(hObject, eventdata, handles)
% hObject    handle to pbtn_MakeFilenameRec_Test (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Sets the filename to test.mat
set(handles.txtEdt_FilenameRec, 'string', 'test')


% --- Executes on button press in pbtn_ConvSelectedFile.
function pbtn_ConvSelectedFile_Callback(hObject, eventdata, handles)
% hObject    handle to pbtn_ConvSelectedFile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% call on global variables
global fsys file2conv gaitData

% determine selected file form lb_FilesOnTarget
file_nr = get(handles.lb_FilesOnTarget, 'value');
files = get(handles.lb_FilesOnTarget, 'string');
% set filename and change varible type
file = strcat(files(file_nr), '.DAT');
file2conv = num2str(cell2mat(file));

% open file, decode it, and load it into a variable
h = fopen(fsys, file2conv);
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

% correct the recorded data
k1 = find(RHFE,1,'first');
k2 = find(RKFE,1,'first');
k3 = find(LHFE,1,'first');
k4 = find(LKFE,1,'first');

value1 = RHFE(k1);
value2 = RKFE(k2);
value3 = LHFE(k3);
value4 = LKFE(k4);

RHFE(1:k1-1) = RHFE(1:k1-1)+value1;
RKFE(1:k2-1) = RKFE(1:k2-1)+value2;
LHFE(1:k3-1) = LHFE(1:k3-1)+value3;
LKFE(1:k4-1) = LKFE(1:k4-1)+value4;

% create matrix from the separate vectors
gaitData = [time'; RHFE'; RKFE'; LHFE'; LKFE';];



    

% --- Executes on button press in pbtn_SaveConvertFile.
function pbtn_SaveConvertFile_Callback(hObject, eventdata, handles)
% hObject    handle to pbtn_SaveConvertFile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% call on global variables
global file2conv gaitData

% extract file name (remove the .DAT from the file name)
% and make all lower case
filename_save = lower(strtok(file2conv, '.'));

cd('Gait_Data/MAT Encoder Values')
save([filename_save '.mat'], 'gaitData');

a = dir;
c = cell(length(a)-2,1);
     for i=1:length(a)-2
         b = strtok(a(i+2).name, '.');
         c{i} = b;
     end
     
 set(handles.lb_CovertedFiles, 'string', c)

cd('../..')






% --- Executes on selection change in lb_FilesOnTarget.
function lb_FilesOnTarget_Callback(hObject, eventdata, handles)
% hObject    handle to lb_FilesOnTarget (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns lb_FilesOnTarget contents as cell array
%        contents{get(hObject,'Value')} returns selected item from lb_FilesOnTarget


% --- Executes during object creation, after setting all properties.
function lb_FilesOnTarget_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lb_FilesOnTarget (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pbtn_UpdateFilesOnTarget.
function pbtn_UpdateFilesOnTarget_Callback(hObject, eventdata, handles)
% hObject    handle to pbtn_UpdateFilesOnTarget (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% call on global variables
global fsys

% read all files in the GAITS folder on target
 a = dir(fsys);
 c = cell(length(a),1);
    for i=1:length(a)
        b = a(i).name;
        c(i) = b(1);
    end
set(handles.lb_FilesOnTarget, 'string', c)
    


% --- Executes on button press in pbtn_DeleteFileTarget.
function pbtn_DeleteFileTarget_Callback(hObject, eventdata, handles)
% hObject    handle to pbtn_DeleteFileTarget (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% call on global variables
global fsys

% determine selected file
file_nr = get(handles.lb_FilesOnTarget, 'value');
files = get(handles.lb_FilesOnTarget, 'string');

% check if the last file is selected
last = file_nr == length(files);

% set filename and remove file
file = strcat(files(file_nr), '.DAT');
% convert file variable from cell to string type
file = num2str(cell2mat(file));
removefile(fsys, file)

% change the value parameter of the listbox to the 
% file that is now last
if last == 1
    set(handles.lb_FilesOnTarget, 'value', length(files)-1)
end

% update the listbox
 a = dir(fsys);
 c = cell(length(a),1);
    for i=1:length(a)
        b = a(i).name;
        c(i) = b(1);
    end
set(handles.lb_FilesOnTarget, 'string', c)


% --- Executes on button press in pbtn_BuildConnect_Play.
function pbtn_BuildConnect_Play_Callback(hObject, eventdata, handles)
% hObject    handle to pbtn_BuildConnect_Play (see GCBO)
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


% --- Executes on button press in pbtn_CopyToHost.
function pbtn_CopyToHost_Callback(hObject, eventdata, handles)
% hObject    handle to pbtn_CopyToHost (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% determine selected file
file_nr = get(handles.lb_FilesOnTarget, 'value');
files = get(handles.lb_FilesOnTarget, 'string');

% set filename
file = strcat(files(file_nr), '.DAT');
% convert file variable from cell to string type
file = num2str(cell2mat(file));

cd('Gait_Data/DAT files')
SimulinkRealTime.copyFileToHost(file)
cd('../..')


% --- Executes on selection change in lb_CovertedFiles.
function lb_CovertedFiles_Callback(hObject, eventdata, handles)
% hObject    handle to lb_CovertedFiles (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns lb_CovertedFiles contents as cell array
%        contents{get(hObject,'Value')} returns selected item from lb_CovertedFiles


% --- Executes during object creation, after setting all properties.
function lb_CovertedFiles_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lb_CovertedFiles (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ptbn_UpdateConvertedFiles.
function ptbn_UpdateConvertedFiles_Callback(hObject, eventdata, handles)
% hObject    handle to ptbn_UpdateConvertedFiles (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% read all files in the Gait_Data/MAT Encoder Values directory on host

cd('Gait_Data/MAT Encoder Values')
a = dir;
c = cell(length(a)-2,1);
     for i=1:length(a)-2
         b = strtok(a(i+2).name, '.');
         c{i} = b;
     end
     
 set(handles.lb_CovertedFiles, 'string', c)

cd('../..')
