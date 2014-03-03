function varargout = wizard(varargin)
% WIZARD MATLAB code for wizard.fig
%      WIZARD, by itself, creates a new WIZARD or raises the existing
%      singleton*.
%
%      H = WIZARD returns the handle to a new WIZARD or the handle to
%      the existing singleton*.
%
%      WIZARD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WIZARD.M with the given input arguments.
%
%      WIZARD('Property','Value',...) creates a new WIZARD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before wizard_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to wizard_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help wizard

% Last Modified by GUIDE v2.5 03-Mar-2014 15:10:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @wizard_OpeningFcn, ...
    'gui_OutputFcn',  @wizard_OutputFcn, ...
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


% --- Executes just before wizard is made visible.
function wizard_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to wizard (see VARARGIN)

% Choose default command line output for wizard
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes wizard wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = wizard_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function txt_averageatommess_Callback(hObject, eventdata, handles)
% hObject    handle to txt_averageatommess (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_averageatommess as text
%        str2double(get(hObject,'String')) returns contents of txt_averageatommess as a double


% --- Executes during object creation, after setting all properties.
function txt_averageatommess_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_averageatommess (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt_volumeperatom_Callback(hObject, eventdata, handles)
% hObject    handle to txt_volumeperatom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_volumeperatom as text
%        str2double(get(hObject,'String')) returns contents of txt_volumeperatom as a double


% --- Executes during object creation, after setting all properties.
function txt_volumeperatom_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_volumeperatom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt_density_Callback(hObject, eventdata, handles)
% hObject    handle to txt_density (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_density as text
%        str2double(get(hObject,'String')) returns contents of txt_density as a double


% --- Executes during object creation, after setting all properties.
function txt_density_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_density (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt_cv_Callback(hObject, eventdata, handles)
% hObject    handle to txt_cv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_cv as text
%        str2double(get(hObject,'String')) returns contents of txt_cv as a double


% --- Executes during object creation, after setting all properties.
function txt_cv_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_cv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt_debyetemperature_Callback(hObject, eventdata, handles)
% hObject    handle to txt_debyetemperature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_debyetemperature as text
%        str2double(get(hObject,'String')) returns contents of txt_debyetemperature as a double


% --- Executes during object creation, after setting all properties.
function txt_debyetemperature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_debyetemperature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt_dislocationdensity_Callback(hObject, eventdata, handles)
% hObject    handle to txt_dislocationdensity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_dislocationdensity as text
%        str2double(get(hObject,'String')) returns contents of txt_dislocationdensity as a double


% --- Executes during object creation, after setting all properties.
function txt_dislocationdensity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_dislocationdensity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt_burgersvector_Callback(hObject, eventdata, handles)
% hObject    handle to txt_burgersvector (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_burgersvector as text
%        str2double(get(hObject,'String')) returns contents of txt_burgersvector as a double


% --- Executes during object creation, after setting all properties.
function txt_burgersvector_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_burgersvector (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt_grainsize_Callback(hObject, eventdata, handles)
% hObject    handle to txt_grainsize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_grainsize as text
%        str2double(get(hObject,'String')) returns contents of txt_grainsize as a double


% --- Executes during object creation, after setting all properties.
function txt_grainsize_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_grainsize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt_gruneisen_Callback(hObject, eventdata, handles)
% hObject    handle to label1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of label1 as text
%        str2double(get(hObject,'String')) returns contents of label1 as a double


% --- Executes during object creation, after setting all properties.
function label1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to label1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt_polarizationvelocity_Callback(hObject, eventdata, handles)
% hObject    handle to txt_polarizationvelocity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_polarizationvelocity as text
%        str2double(get(hObject,'String')) returns contents of txt_polarizationvelocity as a double


% --- Executes during object creation, after setting all properties.
function txt_polarizationvelocity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_polarizationvelocity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt_energytrans_Callback(hObject, eventdata, handles)
% hObject    handle to txt_energytrans (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_energytrans as text
%        str2double(get(hObject,'String')) returns contents of txt_energytrans as a double


% --- Executes during object creation, after setting all properties.
function txt_energytrans_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_energytrans (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt_longsoundvelocity_Callback(hObject, eventdata, handles)
% hObject    handle to txt_longsoundvelocity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_longsoundvelocity as text
%        str2double(get(hObject,'String')) returns contents of txt_longsoundvelocity as a double


% --- Executes during object creation, after setting all properties.
function txt_longsoundvelocity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_longsoundvelocity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt_transsoundvelocity_Callback(hObject, eventdata, handles)
% hObject    handle to txt_transsoundvelocity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_transsoundvelocity as text
%        str2double(get(hObject,'String')) returns contents of txt_transsoundvelocity as a double


% --- Executes during object creation, after setting all properties.
function txt_transsoundvelocity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_transsoundvelocity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt_poissonratio_Callback(hObject, eventdata, handles)
% hObject    handle to txt_poissonratio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_poissonratio as text
%        str2double(get(hObject,'String')) returns contents of txt_poissonratio as a double


% --- Executes during object creation, after setting all properties.
function txt_poissonratio_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_poissonratio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in chk_hasprecipitates.
function chk_hasprecipitates_Callback(hObject, eventdata, handles)
% hObject    handle to chk_hasprecipitates (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of chk_hasprecipitates



function txt_precipitateradii_Callback(hObject, eventdata, handles)
% hObject    handle to txt_precipitateradii (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_precipitateradii as text
%        str2double(get(hObject,'String')) returns contents of txt_precipitateradii as a double


% --- Executes during object creation, after setting all properties.
function txt_precipitateradii_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_precipitateradii (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt_precipitatedensity_Callback(hObject, eventdata, handles)
% hObject    handle to txt_precipitatedensity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_precipitatedensity as text
%        str2double(get(hObject,'String')) returns contents of txt_precipitatedensity as a double


% --- Executes during object creation, after setting all properties.
function txt_precipitatedensity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_precipitatedensity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt_precipitatedistributiondensity_Callback(hObject, eventdata, handles)
% hObject    handle to txt_precipitatedistributiondensity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_precipitatedistributiondensity as text
%        str2double(get(hObject,'String')) returns contents of txt_precipitatedistributiondensity as a double


% --- Executes during object creation, after setting all properties.
function txt_precipitatedistributiondensity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_precipitatedistributiondensity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in chk_umklapp.
function chk_umklapp_Callback(hObject, eventdata, handles)
% hObject    handle to chk_umklapp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of chk_umklapp


% --- Executes on button press in chk_gb.
function chk_gb_Callback(hObject, eventdata, handles)
% hObject    handle to chk_gb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of chk_gb


% --- Executes on button press in chk_dislocation.
function chk_dislocation_Callback(hObject, eventdata, handles)
% hObject    handle to chk_dislocation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of chk_dislocation


% --- Executes on button press in chk_precipitates.
function chk_precipitates_Callback(hObject, eventdata, handles)
% hObject    handle to chk_precipitates (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of chk_precipitates


% --- Executes on button press in btn_browse_vdos.
function btn_browse_vdos_Callback(hObject, eventdata, handles)
% hObject    handle to btn_browse_vdos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[file,path] = uigetfile('*.xlsx');
WizardUtils.SetProperty(handles,'txt_vdosfile','string',[path,file])


function txt_vdosfile_Callback(hObject, eventdata, handles)
% hObject    handle to txt_vdosfile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_vdosfile as text
%        str2double(get(hObject,'String')) returns contents of txt_vdosfile as a double


% --- Executes during object creation, after setting all properties.
function txt_vdosfile_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_vdosfile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in cmb_axis1.
function cmb_axis1_Callback(hObject, eventdata, handles)
% hObject    handle to cmb_axis1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns cmb_axis1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from

axisType = WizardUtils.ToAxisType(WizardUtils.ReadProperty(handles,'cmb_axis1','value'));
switch axisType
    case AxisType.Temperature
        unit = 'K';
    case AxisType.PrecipitatesRadius
        unit = 'nm';
    case AxisType.DistributionParameter1
        unit = 'nm';
    case AxisType.DistributionParameter2
        unit = 'nm';
    case AxisType.PrecipitateNumberDensity
        unit = 'M^-3';
    case AxisType.GrainSize
        unit='nm';
    otherwise
        unit = '';
end

WizardUtils.SetProperty(handles,'axis1_start_unit','String',unit);
WizardUtils.SetProperty(handles,'axis1_end_unit','String',unit);
WizardUtils.SetProperty(handles,'axis1_step_unit','String',unit);


% --- Executes during object creation, after setting all properties.
function cmb_axis1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cmb_axis1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt_axis1_start_Callback(hObject, eventdata, handles)
% hObject    handle to txt_axis1_start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_axis1_start as text
%        str2double(get(hObject,'String')) returns contents of txt_axis1_start as a double


% --- Executes during object creation, after setting all properties.
function txt_axis1_start_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_axis1_start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt_axis1_end_Callback(hObject, eventdata, handles)
% hObject    handle to txt_axis1_end (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_axis1_end as text
%        str2double(get(hObject,'String')) returns contents of txt_axis1_end as a double


% --- Executes during object creation, after setting all properties.
function txt_axis1_end_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_axis1_end (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt_axis1_step_Callback(hObject, eventdata, handles)
% hObject    handle to txt_axis1_step (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_axis1_step as text
%        str2double(get(hObject,'String')) returns contents of txt_axis1_step as a double


% --- Executes during object creation, after setting all properties.
function txt_axis1_step_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_axis1_step (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in cmb_axis2.
function cmb_axis2_Callback(hObject, eventdata, handles)
% hObject    handle to cmb_axis2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns cmb_axis2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from cmb_axis2
axisType = WizardUtils.ToAxisType(WizardUtils.ReadProperty(handles,'cmb_axis2','value'));
switch axisType
    case AxisType.Temperature
        unit = 'K';
    case AxisType.PrecipitatesRadius
        unit = 'nm';
    case AxisType.DistributionParameter1
        unit = 'nm';
    case AxisType.DistributionParameter2
        unit = 'nm';
    case AxisType.PrecipitateNumberDensity
        unit = 'M^-3';
    case AxisType.GrainSize
        unit='nm';
    otherwise
        unit = '';
end

WizardUtils.SetProperty(handles,'axis2_start_unit','String',unit);
WizardUtils.SetProperty(handles,'axis2_end_unit','String',unit);
WizardUtils.SetProperty(handles,'axis2_step_unit','String',unit);

% --- Executes during object creation, after setting all properties.
function cmb_axis2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cmb_axis2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt_axis2_start_Callback(hObject, eventdata, handles)
% hObject    handle to txt_axis2_start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_axis2_start as text
%        str2double(get(hObject,'String')) returns contents of txt_axis2_start as a double


% --- Executes during object creation, after setting all properties.
function txt_axis2_start_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_axis2_start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt_axis2_end_Callback(hObject, eventdata, handles)
% hObject    handle to txt_axis2_end (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_axis2_end as text
%        str2double(get(hObject,'String')) returns contents of txt_axis2_end as a double


% --- Executes during object creation, after setting all properties.
function txt_axis2_end_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_axis2_end (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt_axis2_step_Callback(hObject, eventdata, handles)
% hObject    handle to txt_axis2_step (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_axis2_step as text
%        str2double(get(hObject,'String')) returns contents of txt_axis2_step as a double


% --- Executes during object creation, after setting all properties.
function txt_axis2_step_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_axis2_step (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in cmd_axis3.
function cmd_axis3_Callback(hObject, eventdata, handles)
% hObject    handle to cmd_axis3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns cmd_axis3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from cmd_axis3


% --- Executes during object creation, after setting all properties.
function cmd_axis3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cmd_axis3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt_axis3_start_Callback(hObject, eventdata, handles)
% hObject    handle to txt_axis3_start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_axis3_start as text
%        str2double(get(hObject,'String')) returns contents of txt_axis3_start as a double


% --- Executes during object creation, after setting all properties.
function txt_axis3_start_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_axis3_start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt_axis3_end_Callback(hObject, eventdata, handles)
% hObject    handle to txt_axis3_end (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_axis3_end as text
%        str2double(get(hObject,'String')) returns contents of txt_axis3_end as a double


% --- Executes during object creation, after setting all properties.
function txt_axis3_end_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_axis3_end (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt_axis3_step_Callback(hObject, eventdata, handles)
% hObject    handle to txt_axis3_step (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_axis3_step as text
%        str2double(get(hObject,'String')) returns contents of txt_axis3_step as a double


% --- Executes during object creation, after setting all properties.
function txt_axis3_step_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_axis3_step (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btn_run.
function btn_run_Callback(hObject, eventdata, handles)
% hObject    handle to btn_run (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

viewModel = WizardViewModel;
if (WizardUtils.ReadProperty(handles,'use_callaway','value') == 1)
    modelType=0;
elseif (WizardUtils.ReadProperty(handles,'use_extended_model','value') == 1)
    modelType=2;
else
    modelType=1;
end
viewModel.ModelType = WizardUtils.ToModelType(modelType);

viewModel.UseUmklapp=WizardUtils.IsChecked(handles,'chk_umklapp');
viewModel.UseNormal=WizardUtils.IsChecked(handles,'chk_normal');
viewModel.UseGB=WizardUtils.IsChecked(handles,'chk_gb');
viewModel.UseDislocation=WizardUtils.IsChecked(handles,'chk_dislocation');
viewModel.UsePrecipitates=WizardUtils.IsChecked(handles,'chk_precipitates');
viewModel.VdosFile = WizardUtils.ReadText(handles,'txt_vdosfile');
viewModel.cvFile = WizardUtils.ReadText(handles,'txt_cvfile');

c = Specimen;
c.Gruneisen=WizardUtils.ReadNumber(handles,'txt_gruneisen'); %unitless
c.AverageAtomMass=WizardUtils.ReadNumber(handles,'txt_averageatommess'); %gr/mol
c.PolarizationSoundVelocity=WizardUtils.ReadNumber(handles,'txt_polarizationvelocity'); % m/s
c.DebyeTemp = WizardUtils.ReadNumber(handles,'txt_debyetemperature'); %K
c.EnergyTransmissivity = WizardUtils.ReadNumber(handles,'txt_energytrans'); % unitless
c.GrainSize=WizardUtils.ReadNumber(handles,'txt_grainsize'); %nm
c.DislocationDensity = WizardUtils.ReadNumber(handles,'txt_dislocationdensity'); % cm^-2
c.VolumePerAtom =WizardUtils.ReadNumber(handles,'txt_volumeperatom'); %angstrom^3
c.BurgersVector = WizardUtils.ReadNumber(handles,'txt_burgersvector'); % angstrom
c.PoissonRatio =WizardUtils.ReadNumber(handles,'txt_poissonratio');
c.LongSoundSpeed = WizardUtils.ReadNumber(handles,'txt_longsoundvelocity'); %m/s
c.TransSoundSpeed = WizardUtils.ReadNumber(handles,'txt_transsoundvelocity'); %m/s
c.MatrixThermalExpantion = WizardUtils.ReadNumber(handles,'txt_matrixthermalexp'); %1/K
c.ParticipatesThermalExpantion = WizardUtils.ReadNumber(handles,'txt_precipitatethermalexp'); %1/K
c.MatrixMisfit = WizardUtils.ReadNumber(handles,'txt_misfit');


c.ParticipatesRadius = WizardUtils.ReadNumber(handles,'txt_precipitateradii');  %nm
c.Density = WizardUtils.ReadNumber(handles,'txt_density');% %gr/cm^3
c.DensityDelta = abs(WizardUtils.ReadNumber(handles,'txt_density')-WizardUtils.ReadNumber(handles,'txt_precipitatedensity')); % gr/cm^3
c.ParticipatesDensity = WizardUtils.ReadNumber(handles,'txt_precipitatedistributiondensity'); % m^-3

viewModel.Specimen = c;

axisData1 = AxisData;
axisData1.AxisType = WizardUtils.ToAxisType(WizardUtils.ReadProperty(handles,'cmb_axis1','value'));
if axisData1.AxisType == AxisType.None
    axisData1.Vector=1;
else
    axisData1.Vector=WizardUtils.ToVector(WizardUtils.ReadNumber(handles,'txt_axis1_start'),WizardUtils.ReadNumber(handles,'txt_axis1_end'),WizardUtils.ReadNumber(handles,'txt_axis1_step'));
end
viewModel.AxisData{1} = axisData1;

axisData2 = AxisData;
axisData2.AxisType = WizardUtils.ToAxisType(WizardUtils.ReadProperty(handles,'cmb_axis2','value'));
if axisData2.AxisType == AxisType.None
    axisData2.Vector=1;
else
    axisData2.Vector=WizardUtils.ToVector(WizardUtils.ReadNumber(handles,'txt_axis2_start'),WizardUtils.ReadNumber(handles,'txt_axis2_end'),WizardUtils.ReadNumber(handles,'txt_axis2_step'));
end
viewModel.AxisData{2} = axisData2;

dist = GetDistributionBySelection(WizardUtils.ReadProperty(handles,'cmb_distributiontype','value'));
dist.Parameter1 = WizardUtils.ReadNumber(handles,'txt_parameter1');
dist.Parameter2 = WizardUtils.ReadNumber(handles,'txt_parameter2');

viewModel.Distribution = dist;
viewModel.Temperature = WizardUtils.ReadNumber(handles,'txt_exp_temp');

WizardController(viewModel)

% --- Executes on selection change in cmb_distributiontype.
function cmb_distributiontype_Callback(hObject, eventdata, handles)
% hObject    handle to cmb_distributiontype (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns cmb_distributiontype contents as cell array
%        contents{get(hObject,'Value')} returns selected item from cmb_distributiontype

% --- Executes during object creation, after setting all properties.
RenderInputControlbyDistributionId(handles,get(hObject,'value'));
function cmb_distributiontype_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cmb_distributiontype (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




function txt_parameter1_Callback(hObject, eventdata, handles)
% hObject    handle to txt_parameter1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_parameter1 as text
%        str2double(get(hObject,'String')) returns contents of txt_parameter1 as a double


% --- Executes during object creation, after setting all properties.
function txt_parameter1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_parameter1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function txt_parameter2_Callback(hObject, eventdata, handles)
% hObject    handle to txt_parameter2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_parameter2 as text
%        str2double(get(hObject,'String')) returns contents of txt_parameter2 as a double


% --- Executes during object creation, after setting all properties.
function txt_parameter2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_parameter2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

function RenderInputControlbyDistributionId(handles,id)
dist = GetDistributionBySelection(id);

if ~isempty(dist)
    if dist.HasParameter1 == 1
        WizardUtils.SetProperty(handles,'label_parameter1','visible','on');
        WizardUtils.SetProperty(handles,'txt_parameter1','visible','on');
        WizardUtils.SetProperty(handles,'label_unit1','visible','on');
        
        WizardUtils.SetProperty(handles,'label_parameter1','string',dist.Parameter1DisplayName);
        WizardUtils.SetProperty(handles,'label_unit1','string',dist.Parameter1Units);
    end
    
    if dist.HasParameter2 == 1
        WizardUtils.SetProperty(handles,'label_parameter2','visible','on');
        WizardUtils.SetProperty(handles,'txt_parameter2','visible','on');
        WizardUtils.SetProperty(handles,'label_unit2','visible','on');
        
        WizardUtils.SetProperty(handles,'label_parameter2','string',dist.Parameter2DisplayName);
        WizardUtils.SetProperty(handles,'label_unit2','string',dist.Parameter2Units);
    end
else
    WizardUtils.SetProperty(handles,'label_parameter2','visible','off');
    WizardUtils.SetProperty(handles,'txt_parameter2','visible','off');
    WizardUtils.SetProperty(handles,'label_unit2','visible','off');
    WizardUtils.SetProperty(handles,'label_parameter1','visible','off');
    WizardUtils.SetProperty(handles,'txt_parameter1','visible','off');
    WizardUtils.SetProperty(handles,'label_unit1','visible','off');
end

function dist = GetDistributionBySelection(id)
switch id
    case 1
        dist=[];
    case 2
        dist = RealPrecipitatesDistribution;
    case 3
        dist = GaussianPrecipitatesDistribution;
end


% --- Executes during object creation, after setting all properties.
function label2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to label2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function txt_temp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_temp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function txt_gruneisen_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_gruneisen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in chk_normal.
function chk_normal_Callback(hObject, eventdata, handles)
% hObject    handle to chk_normal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of chk_normal


% --- Executes on button press in chk_strain.
function chk_strain_Callback(hObject, eventdata, handles)
% hObject    handle to chk_strain (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of chk_strain



function txt_matrixthermalexp_Callback(hObject, eventdata, handles)
% hObject    handle to txt_matrixthermalexp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_matrixthermalexp as text
%        str2double(get(hObject,'String')) returns contents of txt_matrixthermalexp as a double


% --- Executes during object creation, after setting all properties.
function txt_matrixthermalexp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_matrixthermalexp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt_precipitatethermalexp_Callback(hObject, eventdata, handles)
% hObject    handle to txt_precipitatethermalexp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_precipitatethermalexp as text
%        str2double(get(hObject,'String')) returns contents of txt_precipitatethermalexp as a double


% --- Executes during object creation, after setting all properties.
function txt_precipitatethermalexp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_precipitatethermalexp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt_misfit_Callback(hObject, eventdata, handles)
% hObject    handle to txt_misfit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_misfit as text
%        str2double(get(hObject,'String')) returns contents of txt_misfit as a double


% --- Executes during object creation, after setting all properties.
function txt_misfit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_misfit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btn_browse_cv.
function btn_browse_cv_Callback(hObject, eventdata, handles)
% hObject    handle to btn_browse_cv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[file,path] = uigetfile('*.xlsx');
WizardUtils.SetProperty(handles,'txt_cvfile','string',[path,file])


function txt_cvfile_Callback(hObject, eventdata, handles)
% hObject    handle to txt_cvfile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_cvfile as text
%        str2double(get(hObject,'String')) returns contents of txt_cvfile as a double


% --- Executes during object creation, after setting all properties.
function txt_cvfile_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_cvfile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt_exp_temp_Callback(hObject, eventdata, handles)
% hObject    handle to txt_exp_temp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_exp_temp as text
%        str2double(get(hObject,'String')) returns contents of txt_exp_temp as a double


% --- Executes during object creation, after setting all properties.
function txt_exp_temp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_exp_temp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
