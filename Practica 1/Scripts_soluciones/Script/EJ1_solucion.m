%% a) Extraemos los datos en vectores
t=Datos_motor(:,1)/1000;
ref=Datos_motor(:,2);
u=Datos_motor(:,3)/100;
rpm=Datos_motor(:,4);

%% b) Representación de las rpm del motor
plot(t,rpm)
title('Respuesta del motor') 
xlabel('Tiempo (s.)');
ylabel ('rpm')
axis([1 6 -100 4200]);

%% c) Analiza el intervalo de muestreo
t_aux=t(2:length(t))-t(1:length(t)-1);
Tso=t(2)-t(1);
% la instrucción sum, suma todos los elementos de un vector
if sum (abs(t_aux-Tso))==0
    disp('Intervalo de muestreo regular');
else
    disp('Intervalo de muestreo no regular');
end

%% d) Calculo de valores característicos
clc;
% Tiempo de inicio
c=1;
while rpm(c)==0
    c=c+1;
end
t_ini=t(c);
disp('Tiempo de inicio: ' ),disp(t_ini); 

% Valor máximo
[rpm_max,i]=max(rpm);
t_max=t(i);
disp('Valor máximo: ' ),disp(rpm_max); 
disp('En el tiempo : ' ); disp(t_max); 

% Valor medio 
suma=0;
n_datos=0;
for i=1:length(t)
    if (t(i)>=4) && (t(i)<=6)
        suma=suma + rpm(i);
        n_datos=n_datos+1;
    end
end
rpm_rp_media=suma/n_datos;
disp('Valor medio en régimen permanente: ' ),disp(rpm_rp_media); 

%% e) Traza una linea en el gáfico 
hold on 
plot([t(1) t_max], [rpm_max rpm_max],'k--' ); 
plot([t(1) t(length(t))], [rpm_rp_media rpm_rp_media],'k--' );
hold off

%% f) Genera una nueva gráfica en la que se representen: arriba rpm, ref; abajo u 
figure(2)
subplot(2,1,1),plot(t,ref,t,rpm);
xlabel('Tiempo (s.)');
ylabel ('rpm')
legend('Referncia', 'Motor')
subplot(2,1,2),plot(t,u);
xlabel('Tiempo (s.)');
ylabel ('Accion de control (%)');

%% g) Índice de error
n=length(t_aux);
IE=sum(t_aux.*(ref(1:n)-rpm(1:n)));
IAE=sum(t_aux.*(abs(ref(1:n)-rpm(1:n))));
ISE=sum(t_aux.*((ref(1:n)-rpm(1:n)).^2));

disp('Integral del error: '  ),disp(IE); 
disp('Integral del valor absoluto del error: ' ); disp(IAE); 
disp('Integral del cuadrado del error: ' ); disp(ISE); 

%% h) Calcula la ley de control
k=u./(ref-rpm);
disp(k);
u_teorica=(ref-rpm)*k(1);
hold on 
subplot(2,1,2),plot(t,u_teorica,'k--');
legend('Real', 'Teórica')
hold off

%% j) Analiza los datos filtrados
n=input('Vector con los valores a probar: ');
figure,plot(t,rpm,'k');
hold on 
for i=1:length(n);
    rpm2=filtra_datos(rpm,n(i));
    plot(t,rpm2);
end
hold off

