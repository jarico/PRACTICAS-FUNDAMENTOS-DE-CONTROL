function [y,u] = simula_sis_lim(P,k,t,r)
% [y,u] = simula_sis_lim(P,k,t,r)
%
% Permite simular el comportamiento de un sistema de control en el que
% la acción de control esta limitada entre [-10v,10v]
%
% Parámetros de entrada:
% P-> Planta
% k-> Controlador proporcional
% t-> Vector de tiempos
% r-> Referencia
%
% Parámetros de salida
% y -> Respuesta del sistema controlado
% u -> Acción de control empleada

Ts=t(2)-t(1);
z=tf('z',Ts);
Pz=c2d(P,Ts);
[num,den]=tfdata(Pz,'v');
u_aux=zeros(1,length(num));
y_aux=zeros(1,length(den)-1);
y=zeros(1,length(t));
    for i=1:length(t)
        if i-1>0
            e=r(i)-y(i-1);
        else
            e=r(i)-0;
        end
        u(i)=k*e;
        if u(i)>10 u(i)=10; end
        if u(i)<-10 u(i)=-10; end
        u_aux(2:length(u_aux))=u_aux(1:length(u_aux)-1);
        u_aux(1)=u(i);
        y(i)=(sum(u_aux.*num)-sum(y_aux.*den(2:length(den))))/den(1);

        y_aux(2:length(y_aux))=u_aux(1:length(y_aux)-1);
        y_aux(1)=y(i);
    end
end