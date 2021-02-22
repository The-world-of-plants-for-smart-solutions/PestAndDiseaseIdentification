function varargout = explore(varargin)
% EXPLORE MATLAB code for explore.fig
%      EXPLORE, by itself, creates a new EXPLORE or raises the existing
%      singleton*.
%
%      H = EXPLORE returns the handle to a new EXPLORE or the handle to
%      the existing singleton*.
%
%      EXPLORE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EXPLORE.M with the given input arguments.
%
%      EXPLORE('Property','Value',...) creates a new EXPLORE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before explore_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to explore_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help explore

% Last Modified by GUIDE v2.5 23-Mar-2019 01:28:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @explore_OpeningFcn, ...
                   'gui_OutputFcn',  @explore_OutputFcn, ...
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


% --- Executes just before explore is made visible.
function explore_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to explore (see VARARGIN)

% Choose default command line output for explore
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes explore wait for user response (see UIRESUME)
% uiwait(handles.figure1);

set(handles.edit1, 'Min', 0, 'Max', 2);
set(handles.edit2, 'Min', 0, 'Max', 2);
set(handles.edit1,'string','Bacterial spot develops on seedlings and mature plants. On seedlings, infections may cause severe defoliation. On older plants, infections occur primarily on older leaves and appear as water-soaked areas. Leaf spots turn from yellow or light green to black or dark brown. Older spots are black, slightly raised, superficial and measure up to 0.3 inch (7.5 mm) in diameter. Larger leaf blotches may also occur, especially on the margins of leaves. Symptoms on immature fruit are at first slightly sunken and surrounded by a water-soaked halo, which soon disappears. Fruit spots enlarge, turn brown, and become scabby.');
set(handles.edit2,'string','To avoid bacterial spot, cultivators should buy certified disease-free tomato seeds and use sterilized soil or a mix that is commercially rendered. If it is not possible to acquire disease-free tomato seeds, your seeds should be submerged for one minute in 1.3% sodium hypochlorite, which helps eliminate bacteria on their surface. Another option exists in submerging the seeds in 122-degree Fahrenheit water for 25 minutes. This will affect surface and inner seed bacteria, but might adversely affect the plant’s germination.');


% --- Outputs from this function are returned to the command line.
function varargout = explore_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
