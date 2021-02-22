function varargout = GUI_ALeX(varargin)
% GUI_ALEX MATLAB code for GUI_ALeX.fig
%      GUI_ALEX, by itself, creates a new GUI_ALEX or raises the existing
%      singleton*.
%
%      H = GUI_ALEX returns the handle to a new GUI_ALEX or the handle to
%      the existing singleton*.
%
%      GUI_ALEX('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_ALEX.M with the given input arguments.
%
%      GUI_ALEX('Property','Value',...) creates a new GUI_ALEX or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_ALeX_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_ALeX_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI_ALeX

% Last Modified by GUIDE v2.5 22-Mar-2019 14:01:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_ALeX_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_ALeX_OutputFcn, ...
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


% --- Executes just before GUI_ALeX is made visible.
function GUI_ALeX_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI_ALeX (see VARARGIN)

% Choose default command line output for GUI_ALeX
handles.output = hObject;
ss = ones(300,400);
axes(handles.Leaf);
imshow(ss);
handles.aa=load('weightFin.mat');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI_ALeX wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_ALeX_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function axes2_CreateFcn(hObject, eventdata, handles);



% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% [filename, pathname] = uigetfile({'*.*';'*.bmp';'*.jpg';'*.gif'}, 'Pick a Leaf Image File');
% I = imread([pathname,filename]);
% I = imresize(I,[227,227]);
% I2 = imresize(I,[300,400]);
% axes(handles.Leaf);
% imshow(I2)
url='http://192.168.43.1:8080/shot.jpg';
qq=imread(url);
I = imresize(qq,[227,227]);
I2 = imresize(I,[300,400]);
axes(handles.Leaf);
imshow(I2)
%[YPred,scores] = classify(netTransfer,X)
%imshow(X, 'Parent', handles.axes1);
handles.Img = I;
guidata(hObject,handles);



% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
X=handles.Img;
p=handles.aa;
% Put the test features into variable 'test'
[YPred,scores] = classify(p.netTransfer,X);

a=ismember(YPred,{'1'});
a=uint8(a);
b=ismember(YPred,{'2'});
b=uint8(b);
c=ismember(YPred,{'3'});
c=uint8(c);
d=ismember(YPred,{'4'});
d=uint8(d);
e=ismember(YPred,{'5'});
e=uint8(e);
f=ismember(YPred,{'6'});
f=uint8(f);
g=ismember(YPred,{'7'});
g=uint8(g);
h=ismember(YPred,{'8'});
h=uint8(h);
i=ismember(YPred,{'9'});
i=uint8(i);
j=ismember(YPred,{'10'});
j=uint8(j);
k=ismember(YPred,{'11'});
k=uint8(k);


if(a==1)
    set(handles.edit1,'string','Anthracnose');
    set(handles.edit2,'string','Colletotrichum');
    set(handles.edit3,'string','1. Sulfur Powder');
    set(handles.edit4,'string','2. Neem Oil Spray');
elseif(b==1)
    set(handles.edit1,'string','Bacterial Spots');
    set(handles.edit2,'string','Xanthomonas Campestris');
    set(handles.edit3,'string','1. Sulfur Spray');
    set(handles.edit4,'string','2. Copper Based Spray');
elseif(c==1)
    set(handles.edit1,'string','Curl');
    set(handles.edit2,'string','Taphrinadeformans');
    set(handles.edit3,'string','1. Vanproz V-bind Viricide');
    set(handles.edit4,'string','2. Copper Spray');
elseif(d==1)
    set(handles.edit1,'string','Cylindrocladium');
    set(handles.edit2,'string','Scoparium');
    set(handles.edit3,'string','1. Foliar Spray');
    set(handles.edit4,'string','2. Methyl Bromide');
elseif(e==1)
    set(handles.edit1,'string','Downy Mildew');
    set(handles.edit2,'string','Plasmopara Viticola');
    set(handles.edit3,'string','1. Copper Spray');
    set(handles.edit4,'string','2. Abtecbioneem');
elseif(f==1)
    set(handles.edit1,'string','Early Blight');
    set(handles.edit2,'string','Altemaria Solani');
    set(handles.edit3,'string','1. Pyrethrins Spray');
    set(handles.edit4,'string','2. Copper Spray');
elseif(g==1)
    set(handles.edit1,'string','Fusarium Wilt');
    set(handles.edit2,'string','Fusarium Oxysporum');
    set(handles.edit3,'string','1. Mycostup');
    set(handles.edit4,'string','2. Copper Oxychloride');
elseif(h==1)
    set(handles.edit1,'string','Late Blight');
    set(handles.edit2,'string','Bacillus Subtilis');
    set(handles.edit3,'string','1. Serenade');
    set(handles.edit4,'string','2. Mancozeb Spray');
elseif(i==1)
    set(handles.edit1,'string','Mosaic Virus');
    set(handles.edit2,'string','Leafhooppers');
    set(handles.edit3,'string','1. Safersoap');
    set(handles.edit4,'string','2. Bon-neem');
elseif(j==1)
    set(handles.edit1,'string','Rust');
    set(handles.edit2,'string','Phragmidium');
    set(handles.edit3,'string','1. Pyrethrins Spray');
    set(handles.edit4,'string','2. Sulfur');
elseif(k==1)
    set(handles.edit1,'string','Healthy Leaves');
    set(handles.edit2,'string','No pests');
    set(handles.edit3,'string','1. Neem Spray');
    set(handles.edit4,'string','2. Eucalyetus Oil');
end



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



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
explore;
