%% PRACTICA 5 EJERCICIO 2
%% a) Bode de un polo real.
clear; clc; close all
s=tf('s');
wp=[0.1 0.2 1 5 10];
figure 
hold on
for i=1:length(wp)
    p=
    legendInfo {i} = ['wp = ', num2str(wp(i))];
    bode(p)
end
hold off
legend(legendInfo)


figure
hold on
for i=1:length(wp)
    p1=
    legendInfo {i} = ['wp = ', num2str(wp(i))];
    bode(p1)
end
hold off
legend(legendInfo)

%% b) Bode de un sistema con polos complejo-conjugados
clc; close all
wn=1;
d=[0.1 0.3 0.5 0.7 0.9];
figure 
hold on
for i=1:length(wp)
    p=
    legendInfo {i} = ['delta = ', num2str(d(i))];
    bode(p)
end
hold off
legend(legendInfo)

%% c) Estudio de la pulsación de resonancia
close all
wn=1;
d=1;
Ad=0.001;
maximo=1;
inicial=1;
while maximo<=inicial
    d=d-Ad;
    p=1/(s^2/wn^2+2*d*s/wn+1);
    
    [Mag,Phase]=bode(p);
    maximo=
    inicial=
    
end
bode(p)
disp('Pulsación a partir de la que existe resonancia');
disp(d)

%% d) Efecto del retardo
close all
wn=1;
d=0.5;
p=1/(s^2/wn^2+2*d*s/wn+1);
p2=
bode(p,p2)
legend



