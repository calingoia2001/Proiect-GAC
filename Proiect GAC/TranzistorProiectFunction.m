function TranzistorProiectFunction(Vee, Vcc, B, Re, Rc)

fig1 = figure('Name','Tranzistor Baza Comuna',...
       'Units','normalized',...
       'Position',[0.1 0.1 0.7 0.8],...  % creare figura
       'NumberTitle','off',...
       'Color', '#faf7ac');
   
   
f=uimenu('Label','Documentatie');
 uimenu(f,'Label','Documentatie Word','Callback','open(''DocumentatieWord.htm'')');         % Documentatie
 uimenu(f,'Label','Prezentare Proiect','Callback','open(''PrezentareProiect.pptx'')');  
 
uicontrol('Units', 'normalized',...
          'Position', [0.78 0.05 0.2 0.1],...
          'BackgroundColor', 'r',...
          'String', 'Închide aplicația',...                      % Close aplication button
          'FontName', 'Calibri',...
          'FontSize', 15,...
          'ForegroundColor', 'w',...
          'Callback', "close('all','hidden')"); 

x = imread('img.jpg');                                             %inserare schema electrica
subplot('Position', [0.1 0.1 0.45 0.45])  , imshow(x);

%{
......
DATE DE INTRARE INTERFATA GRAFICA
......
%}

uicontrol('Style','text', ...        % DateDeIntrare TEXT
          'Units','normalized', ...
          'backgroundcolor',[1 1 1],...
          'Position',[0.07 0.9 0.12 0.07], ...
          'String','Date de intrare',...
          'BackgroundColor', '#cc7416',...
          'FontSize', 15);

uicontrol('Style','text', ...   % Vee TEXT
          'Units','normalized', ...
          'backgroundcolor',[1 1 1],...
          'Position',[0.05 0.84 0.05 0.03], ...
          'FontName', 'Calibri Light',...
          'FontSize', 15,...
          'String','Vee = ');
      
uicontrol('Style','edit',...     % Vee EDIT
          'Units','normalized',...
          'backgroundcolor',[1 1 1],...
          'Position',[0.1 0.84 0.1 0.03],...
          'String',Vee,...
          'Callback','Vee=str2num(get(gco,''String'')),close;TranzistorProiectFunction(Vee, Vcc, B, Re, Rc)');
      
uicontrol('Style','text', ...   % Vcc TEXT
          'Units','normalized', ...
          'backgroundcolor',[1 1 1],...
          'Position',[0.05 0.78 0.05 0.03], ...
          'FontName', 'Calibri Light',...
          'FontSize', 15,...
          'String','Vcc = ');
      
uicontrol('Style','edit',...     % Vcc EDIT
          'Units','normalized',...
          'backgroundcolor',[1 1 1],...
          'Position',[0.1 0.78 0.1 0.03],...
          'String',Vcc,...
          'Callback','Vcc=str2num(get(gco,''String'')),close;TranzistorProiectFunction(Vee, Vcc, B, Re, Rc)');

uicontrol('Style','text', ...   % B TEXT
          'Units','normalized', ...
          'backgroundcolor',[1 1 1],...
          'Position',[0.05 0.72 0.05 0.03], ...
          'FontName', 'Calibri Light',...
          'FontSize', 15,...
          'String','B = ');
      
uicontrol('Style','edit',...     % B EDIT
          'Units','normalized',...
          'backgroundcolor',[1 1 1],...
          'Position',[0.1 0.72 0.1 0.03],...
          'String',B,...
          'Callback','B=str2num(get(gco,''String'')),close;TranzistorProiectFunction(Vee, Vcc, B, Re, Rc)');
      
uicontrol('Style','text', ...   % Re TEXT
          'Units','normalized', ...
          'backgroundcolor',[1 1 1],...
          'Position',[0.05 0.66 0.05 0.03], ...
          'FontName', 'Calibri Light',...
          'FontSize', 15,...
          'String','Re = ');
      
uicontrol('Style','edit',...     % Re EDIT
          'Units','normalized',...
          'backgroundcolor',[1 1 1],...
          'Position',[0.1 0.66 0.1 0.03],...
          'String',Re,...
          'Callback','Re=str2num(get(gco,''String'')),close;TranzistorProiectFunction(Vee, Vcc, B, Re, Rc)');
      
uicontrol('Style','text', ...   % Rc TEXT
          'Units','normalized', ...
          'backgroundcolor',[1 1 1],...
          'Position',[0.05 0.6 0.05 0.03], ...
          'FontName', 'Calibri Light',...
          'FontSize', 15,...
          'String','Rc = ');
      
uicontrol('Style','edit',...     % Rc EDIT
          'Units','normalized',...
          'backgroundcolor',[1 1 1],...
          'Position',[0.1 0.6 0.1 0.03],...
          'String',Rc,...
          'Callback','Rc=str2num(get(gco,''String'')),close;TranzistorProiectFunction(Vee, Vcc, B, Re, Rc)');


%{
......
Calculare Date de Iesire
......
%}

Vbe = 0.7;
Ie = (Vee - Vbe) / Re;
Ib = Ie / ( B + 1);
Vce = Vee + Vcc - Ie * (Rc + Re);
Vcb = Vcc - B * Ib * Rc;

%{
........
Afisare Date de Iesire
........
%}

uicontrol('Style','text', ...        % DateDeIesire TEXT
          'Units','normalized', ...
          'backgroundcolor',[1 1 1],...
          'Position',[0.34 0.9 0.12 0.05], ...
          'String','Date de iesire',...
          'BackgroundColor', '#cc7416',...
          'FontSize', 15);

uicontrol('Style','text', ...   % Ie TEXT
          'Units','normalized', ...
          'backgroundcolor',[1 1 1],...
          'Position',[0.3 0.84 0.05 0.03], ...
          'FontName', 'Calibri Light',...
          'FontSize', 15,...
          'String','Ie = ');
      

uicontrol('Style','edit',... % Afisare Ie
          'Units','normalized',...
          'Position',[0.35 0.84 0.1 0.03],...
          'FontName', 'Calibri Light',...
          'FontSize', 15,...
          'String',Ie*10.^3,...
          'Enable','off'); 
      
uicontrol('Style','text', ...   % mA TEXT
          'Units','normalized', ...
          'backgroundcolor',[1 1 1],...
          'Position',[0.45 0.84 0.05 0.03], ...
          'FontName', 'Calibri Light',...
          'FontSize', 12,...
          'String','[mA]');
      
uicontrol('Style','text', ...   % Ib TEXT
          'Units','normalized', ...
          'backgroundcolor',[1 1 1],...
          'Position',[0.3 0.78 0.05 0.03], ...
          'FontName', 'Calibri Light',...
          'FontSize', 15,...
          'String','Ib = ');
      
uicontrol('Style','edit',... % Afisare Ib
          'Units','normalized',...
          'Position',[0.35 0.78 0.1 0.03],...
          'FontName', 'Calibri Light',...
          'FontSize', 15,...
          'String',Ib*10.^6,...
          'Enable','off'); 

uicontrol('Style','text', ...   % uA TEXT
          'Units','normalized', ...
          'backgroundcolor',[1 1 1],...
          'Position',[0.45 0.78 0.05 0.03], ...
          'FontName', 'Calibri Light',...
          'FontSize', 12,...
          'String','[uA]');
      
uicontrol('Style','text', ...   % Vce TEXT
          'Units','normalized', ...
          'backgroundcolor',[1 1 1],...
          'Position',[0.3 0.72 0.05 0.03], ...
          'FontName', 'Calibri Light',...
          'FontSize', 15,...
          'String','Vce = ');
      
uicontrol('Style','edit',... % Afisare Vce
          'Units','normalized',...
          'Position',[0.35 0.72 0.1 0.03],...
          'FontName', 'Calibri Light',...
          'FontSize', 15,...
          'String',Vce,...
          'Enable','off'); 
      
uicontrol('Style','text', ...   % [V] TEXT
          'Units','normalized', ...
          'backgroundcolor',[1 1 1],...
          'Position',[0.45 0.72 0.05 0.03], ...
          'FontName', 'Calibri Light',...
          'FontSize', 12,...
          'String','[V]');
      
uicontrol('Style','text', ...   % Vcb TEXT
          'Units','normalized', ...
          'backgroundcolor',[1 1 1],...
          'Position',[0.3 0.66 0.05 0.03], ...
          'FontName', 'Calibri Light',...
          'FontSize', 15,...
          'String','Vcb = ');
      
uicontrol('Style','edit',... % Afisare Vcb
          'Units','normalized',...
          'Position',[0.35 0.66 0.1 0.03],...
          'FontName', 'Calibri Light',...
          'FontSize', 15,...
          'String',Vcb,...
          'Enable','off'); 
      
uicontrol('Style','text', ...   % [V] TEXT
          'Units','normalized', ...
          'backgroundcolor',[1 1 1],...
          'Position',[0.45 0.66 0.05 0.03], ...
          'FontName', 'Calibri Light',...
          'FontSize', 12,...
          'String','[V]');      
      
%{
.........
Caracteristica De Intrare
.........
%}

IeMA = Ie*10.^3;
k=1.381e-23; % constanta Boltzmann
temp=300; 
q=1.602e-19; 
vt=(k*temp)/q;       % valoarea tensiunii termice  
Vbe1 = [0 0.05 0.10 0.15 0.20 0.30 0.50 0.55 0.60 0.62 0.64 0.66 0.68 0.7];
m = length(Vbe1);         
for i = 1 : m
    Ie1(i) = Ie * exp((Vbe1(i)/vt)-1);
end

subplot('Position', [0.68 0.68 0.29 0.29])
pas=(max(Vbe1)-min(Vbe1))./100;
xf=min(Vbe1):pas:max(Vbe1);
ys=interp1(Vbe1,Ie1,xf,'spline');
plot(Vbe1,Ie1,'bo'); grid on;hold on;
plot(xf,ys,'r','LineWidth',1.5); grid on; hold on;
title('Caracteristica de intrare') ;
xlabel('Vbe, [V]') ;
ylabel('Ie, [A]') ;

%{
......
Caracteristica de iesire
......
%}

Vcb1 = [0 0.05 0.10 0.15 0.20 0.30 0.50 1.00 2.00 3.00 3.5]; % V
ic=[0 0.10 0.50 1.00 1.20 1.25 1.35 1.45 1.55 1.60 1.65].*10.^(-3); 
ic_2=[0 0.10 0.50 1.00 3.20 3.25 3.35 3.45 3.55 3.60 3.65].*10.^(-3); 
ic_3=[0 0.10 0.50 1.00 5.00 5.20 5.25 5.35 5.40 5.45 5.50].*10.^(-3);

subplot('Position', [0.68 0.24 0.29 0.29])
pas=(max(Vcb1)-min(Vcb1))./100;
xf=min(Vcb1):pas:max(Vcb1);
ys=interp1(Vcb1,ic,xf,'spline');
plot(Vcb1,ic,'bo');grid on; hold on;
plot(xf,ys,'r','LineWidth',1.5); grid on; hold on;
plot(Vcb1,ic_2,'g');grid on; hold on;
plot(Vcb1,ic_3,'b');grid on;hold on;
title('Caracteristica de iesire') ;
xlabel('Vcb, V') ;
ylabel('Ic, A') ;

%{
......
Mesaj eroare in caz de valori negative
......
%}
if (Re <= 0 || Rc <= 0 || B <= 0)
    msgbox('Introduceti o valoare pozitiva!'); 
    close('Tranzistor Baza Comuna');
end