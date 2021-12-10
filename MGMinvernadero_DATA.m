%   MARTA GARCIA MONDEJAR
%   Este script se ejecuta junto con "MGMinvernadero.slx"

%----------------------------------------------------------------------
%   GEOMETRÍA DEL INVERNADERO 
%----------------------------------------------------------------------

%Longitud base (m)
Long = 8; 
%Ancho base (m)
Ancho = 4; 
%Altura Rectangulo (m)
Alto = 3; 
%Altura Techo Triangular (m)
ATecho = 1; 
%Hipotenusa Techo (m)
%LTecho = 1.8;

% CÁLCULO DE LA SUPERFICIE (m^2)
% Cara frontal y trasera
CaraCuadrada = Ancho*Alto;
% Lados
CaraLateral = Long*Alto;
% Techo 
TriangTecho = (Ancho*ATecho)/2;
LateralTecho = 1.8*Long;
% Superficie total 
SInv=(2*CaraCuadrada)+(2*CaraLateral)+(2*TriangTecho)+(2*LateralTecho);

% CÁLCULO DEL VOLUMEN (m^3)
VolTecho = TriangTecho*Long;
VolRectangulo = Ancho*Alto*Long;
VolInv = VolRectangulo+VolTecho;

%----------------------------------------------------------------------
%   MATERIALES PARA EL AISLAMIENTO DEL INVERNADERO
%----------------------------------------------------------------------
% Masa de aire en el invernadero
% Volumen del invernadero * densidad del aire
% Densidad del aire en condiciones normales es 1.29 kg/m^3
MasaAire = VolInv*1.29;

% POLICARBONATO
% Coeficiente superficial de convección interior (W/m^2K)
CoefConvecc = 0.05*3600; 
% Espesor del policarbonato (m)
% EPolic = 0.06; 
%Conductividad Térmica policarbonato (W/mK)
Ct = 0.19;
% Coeficiente superficial de convección exterior (W/m^2K)
he = 18.72;
% Calor perdido o ganado por conducción-convección
Qcc = 3600/(1/CoefConvecc+0.06/Ct+1/he)*SInv;
%----------------------------------------------------------------------
% RESISTENCIA TÉRMICA TOTAL
%----------------------------------------------------------------------
Req = 0.06/(SInv*CoefConvecc);

%----------------------------------------------------------------------
% CONSTANTES
%----------------------------------------------------------------------
% Temperatura incial interior en ºC
TempInt = 20; 
% Calor específico del aire (J/Kg K)
cpAire = 1005.4;

%----------------------------------------------------------------------
% SISTEMAS DE MANTENIMIENTO DE TEMPERATURA
%----------------------------------------------------------------------
% CALEFACCIÓN
% Temperatura del aire del calefactor (ºC)
TempCalefac = 40; 
% Caudal o flujo de aire por hora kg/h
MDot = 3000; 
% Fluctuacion del aire del calefactor
FlucCalefac = 0.55;
 
 
% REFRIGERACIÓN
%Temperatura del aire acondicionado
TempRefrig = 0; 
% Caudal o flujo del aire por hora 
% MDot
% Fluctuación del aire del calefactor
FlucRefrig = 0.5;

%----------------------------------------------------------------------
%COSTES
%----------------------------------------------------------------------
%Coste de la electricidad euros el Kw/h
coste_calefac = 0.2809; 
coste_refrig = -0.2809; 

