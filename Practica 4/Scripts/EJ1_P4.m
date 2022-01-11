%% a) CONTROLADOR PROPORCIONAL

%% b) Analizar en la sisotool el comportamiento del sistema en LC
clear, clc,
s=tf('s');
p=350/(0.16*s+1); % Planta

k=

% Abrimos la sisotool para evaluar el comportamiento del sistema en LC
sisotool(

%% Respuesta para un cambio en la referencia 0->300
Ts=0.0001;
t=0:Ts:1;
r=
r(
[y, u]=simula_sis_lim(P,k,t,r);
LC=feedback(
[y_ide]=lsim(
u_ide=

subplot(2,1,1),plot(t,y,t,y_ide)
subplot(2,1,2),plot(t,u,t,u_ide)

%% Respuesta para un cambio en la referencia 0->1500
Ts=0.0001;
t=0:Ts:1;
r=
r
[y, u]=simula_sis_lim(P,k,t,r);
LC=feedback(
[y_ide]=lsim
u_ide=

subplot(2,1,1),plot(t,y,t,y_ide,t,r,'--k')
legend('Sistean real','Sistema ideal','Referencia')
title('Respuesta del sistema')

subplot(2,1,2),plot(t,u,t,u_ide)
legend('Sistean real','Sistema ideal')
title('Acción de control')


%% b) CONTROLADOR INTEGRAL
%% Controlador para obtener respuestas subamortiguadas
ki% Controlador
c=ki/s;

% Abrimos la sisotool para evaluar el comportamiento del sistema en LC
sisotool(p,c)

%% Estudio del error frente a rampas
ki=0.004761; % Controlador
c=ki/s;

Ts=0.0001;
t=0:Ts:2.5;
r1
r2

LC=feedback(

y1=lsim ; % Respuesta para la referencia r1
y2=lsim ; % Respuesta para la referencia r1

close all
subplot(2,1,1),plot(t,y1,t,r1,'--k')
legend('Velocidad','Referencia')
title('Respuesta para una rampa unitaria')
subplot(2,1,2),plot(t,y2,t,r2,'--k')
legend('Sistean real','Sistema ideal')
title('Respuesta para una rampa unitaria de pendiente m=2')