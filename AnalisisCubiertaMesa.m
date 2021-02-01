function varargout = AnalisisCubiertaMesa(varargin)
% ANALISISCUBIERTAMESA MATLAB code for AnalisisCubiertaMesa.fig
%      ANALISISCUBIERTAMESA, by itself, creates a new ANALISISCUBIERTAMESA or raises the existing
%      singleton*.
%
%      H = ANALISISCUBIERTAMESA returns the handle to a new ANALISISCUBIERTAMESA or the handle to
%      the existing singleton*.
%
%      ANALISISCUBIERTAMESA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ANALISISCUBIERTAMESA.M with the given input arguments.
%
%      ANALISISCUBIERTAMESA('Property','Value',...) creates a new ANALISISCUBIERTAMESA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AnalisisCubiertaMesa_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AnalisisCubiertaMesa_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AnalisisCubiertaMesa

% Last Modified by GUIDE v2.5 01-Jun-2019 22:34:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AnalisisCubiertaMesa_OpeningFcn, ...
                   'gui_OutputFcn',  @AnalisisCubiertaMesa_OutputFcn, ...
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


% --- Executes just before AnalisisCubiertaMesa is made visible.
function AnalisisCubiertaMesa_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AnalisisCubiertaMesa (see VARARGIN)

%Velocidad de A
%handles.veloca = veloca();


% Choose default command line output for AnalisisCubiertaMesa
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

%Hace que al iniciar el objeto  RepSimpImg no se vea.
set(handles.RepSimpImg,'visible', 'off');
set(handles.SegunAPosi,'visible','off');
set(handles.textt,'visible','off');
set(handles.textt,'visible','off');
set(handles.text32, 'visible','off');
set(handles.text33, 'visible','off');
set(handles.Cita3, 'visible','off');
set(handles.W3, 'visible','off');
set(handles.text35, 'visible','off');
set(handles.text36, 'visible','off');
set(handles.text37, 'visible','off');
set(handles.text38, 'visible','off');
set(handles.OB, 'visible','off');
set(handles.text40, 'visible','off');
set(handles.AnaVeloc, 'visible','off');
set(handles.text43, 'visible','off');
set(handles.text45, 'visible','off');
set(handles.text46, 'visible','off');
set(handles.text47, 'visible','off');
set(handles.text48, 'visible','off');
set(handles.VA, 'visible','off');
set(handles.VB, 'visible','off');
set(handles.text50, 'visible','off');
set(handles.text51, 'visible','off');
set(handles.text52, 'visible','off');
set(handles.text2, 'visible','off');
set(handles.DiagVeloc,'visible', 'off');
set(handles.text53, 'visible','off');
set(handles.Alpha3, 'visible','off');
set(handles.text56, 'visible','off');
set(handles.text57, 'visible','off');
set(handles.text58, 'visible','off');
set(handles.text54, 'visible','off');
set(handles.text60, 'visible','off');
set(handles.text61, 'visible','off');
set(handles.text62, 'visible','off');
set(handles.text63, 'visible','off');
set(handles.text64, 'visible','off');
set(handles.acelB, 'visible','off');
set(handles.text66, 'visible','off');
set(handles.text67, 'visible','off');
set(handles.text68, 'visible','off');
set(handles.acelA, 'visible','off');
set(handles.uipanel2, 'visible','off');

% UIWAIT makes AnalisisCubiertaMesa wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Executes during object creation, after setting all properties.
function RepSimpImg_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RepSimpImg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate RepSimpImg


% --- Outputs from this function are returned to the command line.
function varargout = AnalisisCubiertaMesa_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in VelocA.
function VelocA_Callback(hObject, eventdata, handles)
% hObject    handle to VelocA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Cita2Inter VelocidadesA w2 l2

w2=str2double(get(handles.W2,'String'));
l2=str2double(get(handles.L2,'String'));

set(handles.DiagVeloc,'visible', 'on');
set(handles.text2, 'visible','on');

Cita2Inter=(0:1:360);
   for i=1:numel(Cita2Inter)
       VelocidadesA(i)= w2*l2;
    
   end
   axes(handles.DiagVeloc)
        plot(handles.DiagVeloc,Cita2Inter,VelocidadesA,'linewidth',3)
        title ('Velocidad A en funcion de Cita2','Fontsize',14)
        ylabel ('Velocidad (m/s)','Fontsize',14)
        xlabel ('Cita2 (�)','Fontsize',14)
        grid on


% --- Executes on button press in VB_A.
function VB_A_Callback(hObject, eventdata, handles)
% hObject    handle to VB_A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Cita2Inter VelocidadesB_A w3 cita3 w2 l2 l3

w2=str2double(get(handles.W2,'String'));
l2=str2double(get(handles.L2,'String'));
l3=str2double(get(handles.L3,'String'));

set(handles.DiagVeloc,'visible', 'on');
set(handles.text2, 'visible','on');

Cita2Inter=(0:1:360);
   for i=1:numel(Cita2Inter)
    
       cita3= (-1*asin((l2.*sin((Cita2Inter(i)* pi/180)))/(l3)))*(180/pi);
       w3=(-1*w2*l2.*cos((Cita2Inter(i)*pi/180)))/(l3*sin(cita3*pi/180));
       VelocidadesB_A(i)=w3*l3;
    
   end
   axes(handles.DiagVeloc)
        plot(handles.DiagVeloc,Cita2Inter,VelocidadesB_A,'linewidth',3)
        title ('Velocidad B/A en funcion de Cita2','Fontsize',14)
        ylabel ('Velocidad (m/s)','Fontsize',14)
        xlabel ('Cita2 (�)','Fontsize',14)
        grid on


% --- Executes on button press in VelocB.
function VelocB_Callback(hObject, eventdata, handles)
% hObject    handle to VelocB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Cita2Inter VelocidadesB w3 cita3 w2 l2 l3

w2=str2double(get(handles.W2,'String'));
l2=str2double(get(handles.L2,'String'));
l3=str2double(get(handles.L3,'String'));

set(handles.DiagVeloc,'visible', 'on');
set(handles.text2, 'visible','on');

Cita2Inter=(0:1:360);
   for i=1:numel(Cita2Inter)
    
       cita3= (-1*asin((l2.*sin((Cita2Inter(i)* pi/180)))/(l3)))*(180/pi);
       w3=(-1*w2*l2.*cos((Cita2Inter(i)*pi/180)))/(l3*sin(cita3*pi/180));
       VelocidadesB(i)=-1*w2*l2.*sin((Cita2Inter(i)*pi/180))-w3*l3*cos(cita3*pi/180);
    
   end
   axes(handles.DiagVeloc)
        plot(handles.DiagVeloc,Cita2Inter,VelocidadesB,'linewidth',3)
        title ('Velocidad B en funcion de Cita2','Fontsize',14)
        ylabel ('Velocidad (m/s)','Fontsize',14)
        xlabel ('Cita2 (�)','Fontsize',14)
        grid on



% --- Executes on button press in RepSimp.
function RepSimp_Callback(hObject, eventdata, handles)
% hObject    handle to RepSimp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of RepSimp
isPushed = get(hObject,'Value');

if isPushed 
    set(hObject, 'String', 'Mecanismo Biela-Manivela');
    ImagenMec=imread('ImagenMecanismo.PNG');
    handles.RepSimpImg=imagesc(ImagenMec);
    set(handles.RepSimpImg,'visible','on') %hide the current axes
    set(get(handles.RepSimpImg,'children'),'visible','on') %hide the current axes contents
    axis off;
else
    set(hObject, 'String', 'Representacion Simplificada');
    clear ImagenMec
   set(handles.RepSimpImg,'visible','off') %hide the current axes
   set(get(handles.RepSimpImg,'children'),'visible','off') %hide the current axes contents
   axis off;

end



function Cita2_Callback(hObject, eventdata, handles)
% hObject    handle to Cita2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Cita2 as text
%        str2double(get(hObject,'String')) returns contents of Cita2 as a double




% --- Executes during object creation, after setting all properties.
function Cita2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Cita2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function W2_Callback(hObject, eventdata, handles)
% hObject    handle to W2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of W2 as text
%        str2double(get(hObject,'String')) returns contents of W2 as a double
str2double(get(hObject,'String'))

% --- Executes during object creation, after setting all properties.
function W2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to W2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Calcular.
function Calcular_Callback(hObject, eventdata, handles)
% hObject    handle to Calcular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%cita2 = str2double(get(handles.Cita2, 'String'));
global cita2 w2 Va Vb Va_b ob l2 l3 cita3 w3 alpha2 alpha3 aA aB aB_A obString cita3String w3String vbString vaString alpha3String
global aAString aBString  

%Parametros de Entrada para el caso
cita2 =str2double(get(handles.Cita2,'String'));
w2=str2double(get(handles.W2,'String'));
alpha2=str2double(get(handles.Alpha2,'String'));

%Eslabones
l2=str2double(get(handles.L2,'String'));
l3=str2double(get(handles.L3,'String'));

%Grashof
set(handles.Grashof, 'String','Es un Grashof Clase I. Tipo Biela-Manivela-Corredera');
set(handles.grashofsym1,'String','<');

%Analisis de Posicion
cita2=cita2*(pi/180);
set(handles.SegunAPosi,'visible','on');
set(handles.textt,'visible','on');
set(handles.textt,'visible','on');
set(handles.text32, 'visible','on');
set(handles.text33, 'visible','on');
set(handles.Cita3, 'visible','on');
set(handles.W3, 'visible','on');
set(handles.text35, 'visible','on');
set(handles.text36, 'visible','on');
set(handles.text37, 'visible','on');
set(handles.text38, 'visible','on');
set(handles.OB, 'visible','on');
set(handles.text40, 'visible','on');
cita3= (-1*asin((l2*sin(cita2))/(l3)))*(180/pi);
ob= l2*cos(cita2) + l3*cos(cita3*pi/180);
obString=num2str(ob);
cita3String=num2str(cita3);
set(handles.Cita3,'String',cita3String);
set(handles.OB,'String',obString);

%Analisis de velocidades
set(handles.AnaVeloc, 'visible','on');
set(handles.text43, 'visible','on');
set(handles.VB, 'visible','on');
set(handles.text45, 'visible','on');
set(handles.text46, 'visible','on');
set(handles.text47, 'visible','on');
set(handles.text48, 'visible','on');
set(handles.text50, 'visible','on');
set(handles.text51, 'visible','on');
set(handles.text52, 'visible','on');
set(handles.VA, 'visible','on');
w3=(-1*w2*l2*cos(cita2))/(l3*sin(cita3*pi/180));
w3String=num2str(w3);
set(handles.W3,'String',w3String);
vb=-1*w2*l2*sin(cita2)-w3*l3*cos(cita3*pi/180);
vbString=num2str(vb);
set(handles.VB,'String',vbString);
va=w2*l2;
vaString=num2str(va);
set(handles.VA,'String',vaString);

%Analisis Aceleraciones 
if alpha2==0 
    
else
set(handles.uipanel2, 'visible','on');
set(handles.text53, 'visible','on');
set(handles.Alpha3, 'visible','on');
set(handles.text56, 'visible','on');
set(handles.text57, 'visible','on');
set(handles.text58, 'visible','on');
set(handles.text54, 'visible','on');
set(handles.text60, 'visible','on');
set(handles.text61, 'visible','on');
set(handles.text62, 'visible','on');
set(handles.text63, 'visible','on');
set(handles.text64, 'visible','on');
set(handles.acelB, 'visible','on');
set(handles.text66, 'visible','on');
set(handles.text67, 'visible','on');
set(handles.text68, 'visible','on');
set(handles.acelA, 'visible','on');
w2=sqrt((w2)^2+2*alpha2*(cita2)); %Partiendo del hecho de que cita inicial es 0 grados.
alpha3=((w2)^2*sin(cita2)- alpha2*l2*cos(cita2)+(w3)^2*l3*sin(cita3*pi/180))/l3*cos(cita3*pi/180);
alpha3String=num2str(alpha3);
set(handles.Alpha3,'String',alpha3String);

aB=(w2)^2*l2*cos(cita2)+alpha2*l2*sin(cita2)+(w3)^2*l3*cos(cita3*pi/180)-alpha3*l3*sin(cita3*pi/180);
aBString=num2str(aB);
set(handles.acelB,'String',aBString);
aA=sqrt(((w2)^2*l2*cos(cita2)+alpha2*l2*sin(cita2))^2+((w2)^2*l2*sin(cita2)+alpha2*l2*sin(cita2))^2);
aAString=num2str(aA);
set(handles.acelA,'String',aAString);

end




function L1_Callback(hObject, eventdata, handles)
% hObject    handle to L1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of L1 as text
%        str2double(get(hObject,'String')) returns contents of L1 as a double




% --- Executes during object creation, after setting all properties.
function L1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to L1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function L2_Callback(hObject, eventdata, handles)
% hObject    handle to L2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of L2 as text
%        str2double(get(hObject,'String')) returns contents of L2 as a double


% --- Executes during object creation, after setting all properties.
function L2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to L2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function L3_Callback(hObject, eventdata, handles)
% hObject    handle to L3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of L3 as text
%        str2double(get(hObject,'String')) returns contents of L3 as a double
str2double(get(hObject,'String'))


% --- Executes during object creation, after setting all properties.
function L3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to L3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in grashofsym2.
function grashofsym2_Callback(hObject, eventdata, handles)
% hObject    handle to grashofsym2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of grashofsym2


% --- Executes during object creation, after setting all properties.
function grashofsym1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to grashofsym1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function Grashof_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Grashof (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
%if
%else
%end


% --- Executes during object creation, after setting all properties.
function DiagVeloc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DiagVeloc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate DiagVeloc


% --- Executes on button press in BotAcelA.
function BotAcelA_Callback(hObject, eventdata, handles)
% hObject    handle to BotAcelA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Cita2Inter AceleracionesA w2 w3 l2 l3 alpha2

w2=str2double(get(handles.W2,'String'));
l2=str2double(get(handles.L2,'String'));
l3=str2double(get(handles.L3,'String'));
alpha2=str2double(get(handles.Alpha2,'String'));

set(handles.DiagVeloc,'visible', 'on');
set(handles.text2, 'visible','on');

Cita2Inter=(0:1:360);
   for i=1:numel(Cita2Inter)
       w2=sqrt((w2)^2+2*alpha2.*(Cita2Inter(i)));
       AceleracionesA(i)= sqrt(((w2)^2*l2.*cos(Cita2Inter(i))+alpha2*l2.*sin(Cita2Inter(i)))^2+((w2)^2*l2.*sin(Cita2Inter(i))+alpha2*l2.*sin(Cita2Inter(i)))^2);
    
   end
   axes(handles.DiagVeloc)
        plot(handles.DiagVeloc,Cita2Inter,AceleracionesA,'linewidth',3)
        title ('Aceleracion A en funcion de Cita2','Fontsize',14)
        ylabel ('Aceleracion (m/s2)','Fontsize',14)
        xlabel ('Cita2 (�)','Fontsize',14)
        grid on


% --- Executes on button press in BotAcelBA.
function BotAcelBA_Callback(hObject, eventdata, handles)
% hObject    handle to BotAcelBA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Cita2Inter AceleracionesB_A w3 cita3 w2 l2 l3 alpha2 alpha3

w2=str2double(get(handles.W2,'String'));
l2=str2double(get(handles.L2,'String'));
l3=str2double(get(handles.L3,'String'));
alpha2=str2double(get(handles.Alpha2,'String'));

set(handles.DiagVeloc,'visible', 'on');
set(handles.text2, 'visible','on');

Cita2Inter=(0:1:360);
   for i=1:numel(Cita2Inter)
       w2=sqrt((w2)^2+2*alpha2.*(Cita2Inter(i)));    
       cita3= (-1*asin((l2.*sin((Cita2Inter(i)* pi/180)))/(l3)))*(180/pi);
       w3=(-1*w2*l2.*cos((Cita2Inter(i)*pi/180)))/(l3*sin(cita3*pi/180));
       alpha3=((w2)^2.*sin(Cita2Inter(i))- alpha2*l2.*cos(Cita2Inter(i))+(w3)^2*l3*sin(cita3*pi/180))/l3*cos(cita3*pi/180);
       AceleracionesB_A(i)=sqrt((-1*(w3)^2*l3*cos(cita3*pi/180)+alpha3*l3*sin(cita3))^2+(-1*(w3)^2*l3*sin(cita3*pi/180)+alpha3*l3*cos(cita3))^2);
    
   end
   axes(handles.DiagVeloc)
        plot(handles.DiagVeloc,Cita2Inter,AceleracionesB_A,'linewidth',3)
        title ('Aceleracion B/A en funcion de Cita2','Fontsize',14)
        ylabel ('Aceleracion (m/s2)','Fontsize',14)
        xlabel ('Cita2 (�)','Fontsize',14)
        grid on


% --- Executes on button press in BotAcelB.
function BotAcelB_Callback(hObject, eventdata, handles)
% hObject    handle to BotAcelB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Cita2Inter AceleracionesB w2 w3 l2 l3 alpha2 cita3 alpha3

w2=str2double(get(handles.W2,'String'));
l2=str2double(get(handles.L2,'String'));
l3=str2double(get(handles.L3,'String'));
alpha2=str2double(get(handles.Alpha2,'String'));

set(handles.DiagVeloc,'visible', 'on');
set(handles.text2, 'visible','on');

Cita2Inter=(0:1:360);
   for i=1:numel(Cita2Inter)
       w2=sqrt((w2)^2+2*alpha2.*(Cita2Inter(i)));
       cita3= (-1*asin((l2.*sin((Cita2Inter(i)* pi/180)))/(l3)))*(180/pi);
       w3=(-1*w2*l2.*cos((Cita2Inter(i)*pi/180)))/(l3*sin(cita3*pi/180));
       alpha3=((w2)^2.*sin(Cita2Inter(i))- alpha2*l2.*cos(Cita2Inter(i))+(w3)^2*l3*sin(cita3*pi/180))/l3*cos(cita3*pi/180);
       AceleracionesB(i)= ((w2)^2)*l2.*cos(Cita2Inter(i))+alpha2*l2.*sin(Cita2Inter(i))+((w3)^2)*l3*cos(cita3*pi/180)-alpha3*l3*sin(cita3*pi/180);
    
   end
   axes(handles.DiagVeloc)
        plot(handles.DiagVeloc,Cita2Inter,AceleracionesB,'linewidth',3)
        title ('Aceleracion B en funcion de Cita2','Fontsize',14)
        ylabel ('Aceleracion (m/s2)','Fontsize',14)
        xlabel ('Cita2 (�)','Fontsize',14)
        grid on


% --- Executes during object creation, after setting all properties.
function W3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to W3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function Alpha2_Callback(hObject, eventdata, handles)
% hObject    handle to Alpha2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Alpha2 as text
%        str2double(get(hObject,'String')) returns contents of Alpha2 as a double


% --- Executes during object creation, after setting all properties.
function Alpha2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Alpha2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function BotAcelA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BotAcelA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
