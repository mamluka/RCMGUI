function varargout = results(varargin)
% RESULTS MATLAB code for results.fig
%      RESULTS, by itself, creates a new RESULTS or raises the existing
%      singleton*.
%
%      H = RESULTS returns the handle to a new RESULTS or the handle to
%      the existing singleton*.
%
%      RESULTS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESULTS.M with the given input arguments.
%
%      RESULTS('Property','Value',...) creates a new RESULTS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before results_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to results_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help results

% Last Modified by GUIDE v2.5 21-Apr-2012 15:53:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @results_OpeningFcn, ...
                   'gui_OutputFcn',  @results_OutputFcn, ...
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


% --- Executes just before results is made visible.
function results_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to results (see VARARGIN)

% Choose default command line output for results
handles.output = hObject;
data = varargin{1};
handles.data = data;
h=handles.axis_plot;
PlotData(h,data);

% Update handles structure
guidata(hObject, handles);


% UIWAIT makes results wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = results_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in btn_save.
function btn_save_Callback(hObject, eventdata, handles)
% hObject    handle to btn_save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
data = handles.data;

filename = uiputfile('*.xlsx','Excel files');
xlswrite(filename,data.Kappa,'Results','C3');
xlswrite(filename,data.Axis1','Results','B3');
if length(data.Axis2) > 1 
    xlswrite(filename,data.Axis2,'Results','C2');
end
% if strcmp(data.Labels{2},'None') == 1
%     xlswrite(filename,data.Labels{1},'Results','B2');
%     xlswrite(filename,'Kappa','Results','B3');
% else
%     xlswrite(filename,data.Labels{1},'Results','C1');
%     xlswrite(filename,data.Labels{2},'Results','B3');
% end

% --- Executes on button press in btn_popup.
function btn_popup_Callback(hObject, eventdata, handles)
% hObject    handle to btn_popup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
figure1=figure;
h=axes('Parent',figure1,'FontSize',30);
PlotData(h,handles.data);

function PlotData(h,data)
if length(data.Axis2) > 1
    surface(data.Axis2,data.Axis1,data.Kappa);
    view(125,45)
else
    plot(h,data.Axis1,data.Kappa');
end

if strcmp(data.Labels{2},'None') == 0
    ylabel(data.Labels{2});
    xlabel(data.Labels{1});
    zlabel('\kappa W/m*K');
else
    xlabel(data.Labels{1});
    ylabel('\kappa W/m*K');
end
