clear all;
close all;
clc;

% DATE DE INTRARE fct1
Vee = 4;
Vcc = 10;
B = 60;
Re = 1200;
Rc = 2400;
   
% DATE DE INTRARE fct2

R1 = 56000;
R2 = 12000;
RC = 2200;
RE = 1000;
Rs = 10000;
VCC = 10;
f = 100;
N = 4;
A = 1;
val = 1;

fig1=figure('WindowStyle', 'normal',...
           'ToolBar', 'none',...
           'MenuBar', 'none',...                                 % creare meniu
           'Name', 'Main Menu',...
           'NumberTitle', 'off',...
           'Color', '#faf7ac');
       
uicontrol('Units', 'normalized',...
          'Position',[0.4 0.5 0.2 0.1],...
          'BackgroundColor', '#cc7416',...
          'String', 'Configuratie de baza',...                         % selectare functia 1
          'FontName', 'Calibri Light',...
          'FontSize', 15,...
          'ForegroundColor', 'w',...
          'Callback',"TranzistorProiectFunction(Vee, Vcc, B, Re, Rc)");

uicontrol('Units', 'normalized',...
          'Position',[0.4 0.35 0.2 0.1],...
          'BackgroundColor', '#cc7416',...
          'String', 'Amplificator de semnal mic',...
          'FontName', 'Calibri Light',...                                % selectare functia 2
          'FontSize', 15,...
          'ForegroundColor', 'w',...
          'Callback',"TranzistorProiectFunction2(R1, R2, RC, RE, Rs, VCC,f ,N, A, val)");
      
uicontrol('Units', 'normalized',...
          'Position',[0.4 0.65 0.2 0.1],...
          'BackgroundColor', '#4e69a2',...
          'String', 'Documentație Word',...
          'FontName', 'Calibri Light',...                             % Documentatie Word
          'FontSize', 25,...
          'ForegroundColor', 'w',...
          'Callback',"winopen DocumentatieWord.htm");
      
uicontrol('Units', 'normalized',...
          'Position',[0.4 0.8 0.2 0.1],...
          'BackgroundColor', '#ea8c55',...
          'String', 'Prezentare PowerPoint',...
          'FontName', 'Calibri Light',...                               % Prezentare PowerPoint
          'FontSize', 22,...
          'ForegroundColor', 'w',...
          'Callback',"winopen PrezentarePowerPoint.pptx");
      
uicontrol('Units', 'normalized',...
          'Position', [0.4 0.2 0.2 0.1],...
          'BackgroundColor', 'r',...
          'String', 'Închide aplicația',...                       % Buton inchidere aplicatie
          'FontName', 'Calibri Light',...
          'FontSize', 25,...
          'ForegroundColor', 'w',...
          'Callback', "close('all','hidden')");
