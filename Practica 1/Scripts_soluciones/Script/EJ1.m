%% %% a) Extraemos los datos en vectores
t=Datos_motor(:,1)/1000;
ref
Datos_motoru
rpm

%% b) Representaci�n de las rpm del motor
plot(t,rpm);
title
%....
%....
axis(

%% c) Analiza el intervalo de muestreo
t_aux=...;
Tso=t(2)-t(1);
% la instrucci�n sum, suma todos los elementos de un vector
if sum (...)==0
    disp('Intervalo de muestreo regular');
else
    disp('Intervalo de muestreo no regular');
end

%%  d) Calculo de valores caracter�sticos
clc;
% Tiempo de inicio
c=1;
while rpm(c)==0
    ...;
end
t_ini=...;
disp('Tiempo de inicio: ' ),disp(t_ini); 

% Valor m�ximo
...;
t_max=...;
disp('Valor m�ximo: ' ),disp(rpm_max); 
disp('En el tiempo : ' ); disp(t_max); 

% Valor medio 
suma=0;
n_datos=0;
for i=1:...
    if (t(i)>=4) && (t(i)<=6)
        ...;
        ...;
    end
end
rpm_rp_media=...;
disp('Valor medio en r�gimen permanente: ' ),disp(rpm_rp_media);

%% e) Traza una linea en el g�fico 
hold on 
plot%(...,'k--' ); 
plot
hold off

%% f) Genera una nueva gr�fica en la que se representen: arriba rpm, ref; abajo u 
figure(2)
subplot...
x...
y...
subplot...
x...
y

%% g) �ndice de error
n=...;
IE=sum...;
IAE=...;
ISE=...;

disp('Integral del error: '  ),disp(IE); 
disp('Integral del valor absoluto del error: ' ); disp(IAE); 
disp('Integral del cuadrado del error: ' ); disp(ISE); 

%% h) Calcula la ley de control
k=...;
disp(k);
u_teorica=...;
hold on 
%....
legend(
hold off

%% j) Analiza los datos filtrados
n=input...
figure,plot...
hold on 
for ....
    ....
    ....
...
hold off

