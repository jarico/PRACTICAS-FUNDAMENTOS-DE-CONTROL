%% PRACTICA 5 EJERCICIO 1
%% a) Respuesta temporal para acciones de control senoidales
close all
s=tf('s');
p=5/(0.2*s+1); % Planta 

Ts=0.001; % Tntervalo de muestreo 
t=0:Ts:6; % Tiempo de simulación
f=[0.1 0.5 1 5]; % Frecuencias a analizar
for i=1:length(f)
    u=
    y=
    figure,plot(t,u,t,y);
    texto=strcat('Respuesta para señal senoidal de frecuencia',...
        {' '},num2str(f(i)),'Hz');
    title(texto)
end

%% b) Respuesta temporal del último periodo de la señal senoidal
close all
for i=1:length(f)
    u=
    y=
    n=
    t_rp=
    u_rp=
    y_rp=
    figure,plot(t_rp,u_rp,t_rp,y_rp);
    texto=strcat('Respuesta frecuencial en régimen permanente f =',...
        {' '},num2str(f(i)),'Hz');
    title(texto)
end

%% c) Calculo teórico de los valores de la respuesta frecuencial
for i=1:length(f)
    resp_frecuencial=
    magnitud=
    magnituddB=
    fase=          %Angulo pasado a grados sexagesimales
    textoM=['Magnitud para ',num2str(f(i)),'Hz: ',num2str(magnitud),'   , en dBs: ',num2str(magnituddB)];
    disp(textoM);
    textoF=['Desfase para ',num2str(f(i)),'Hz: ',num2str(fase),'º'];
    disp(textoF);
end


%% d) Calculo con figuras de Lissajous
close all
Ts=0.001;
t=0:Ts:20;
f=[0.1 0.5 1 5];
for i=1:length(f)
    u=
    y=;
    n=
    u2=
    y2=
    figure,plot(u2,y2);
    texto=['Respuesta (u-y)',{' '},num2str(f(i))];
    %texto=strcat('Respuesta (u-y)',{' '},num2str(f(i)));
    title(texto)
end

% Datos extraidos de las figuras generadas
a=[
b=[
magnitud=mag2db(b);
fase=
disp('Magnitudes [dBs]:');
disp(magnitud);
disp('Desfase [º]:');
disp(fase);

%% e) Bode trazado por matlab y datos obtenidos 
close all
bode(p)

[M,Phs,w]=
%w=log10(w);
M=mag2db(squeeze(M));
%M=mag2db(M);
Phs=squeeze(Phs);

wp=(2*pi*f);
subplot(2,1,1), semilogx(
title('Diagrama de Bode de magnitud');
ylabel('Magnitud[dB]');
xlabel('Frecuencia [rad/s]');
subplot(2,1,2), semilogx(
title('Diagrama de Bode de fase');
ylabel('Desfase[º]');
xlabel('Frecuencia [rad/s]')
