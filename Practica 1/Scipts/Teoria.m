%% Comandos de ayuda
% help <toolbox>; %  Muestra la ayuda de una toolbox
% help <instrucción>; % Muestra la ayuda de una función

% Ejemplo Comandos de ayuda
help control; % Muestra la ayuda para la Control System Toolbox
help rand; % Muestra la ayuda de la instrucción rand

%% Instrucciones Workspace
% load <archivo>; % Carga las variables almacenadas en el archivo indicado
% load <archivo> <variables>; % Carga sólo las variables indicadas  
% save <archivo>; % Guarda todas las variables del workspace en un archivo
% save <archivo> <variables>; % Idem al anterior pero solo guarda  las variables deseadas
% clear <variables>; % Borra las variables indicadas del espacio de trabajo
% who; % Muestra las variables del Workspace
% whos; % Idem al anterior mostrando las características de las variables
% disp(<variable>);	% Muestra en pantalla el valor de la variable 
% <variable>=input('<cadena de texto>'); % Mustra por pantalla la cadena de texto y
% almacena el dato introducido por teclado por el usuario en la variable indicada

% Ejemplos Instrucciones Workspace
a=rand(3); b=rand(3); c=rand(3); % Crea tres matrices 3x3 aleatorias
save datos; % Guarda el workspace en el fichero datos.m. Contendra a, b y c
clear; % Borra todas las variables del workspace
load datos; % Carga las variables almacenadas en el fichero datos.mat
save datos2 a c; % Guarda en el fichero datos2.mat las variables a y c
clear a; % Borra la variable a 
load datos a; % Carga del fichero datos.mat  la variable a 
who; % Lista las variables del workspace 
disp(a); % Muestra en pantalla la matriz a
disp('Ejemplo'); % Muestra en pantalla la cadena de caracteres Ejemplo
n=input('introduce el valor de n'); % Muestra el texto y espera al valor n

%% Diario 
% diary <fichero.txt>: % Guarda en el fichero todas las órdenes y salidas generadas en la 
% ventana de comandos que se ejecuten en la sesión actual 
% diary off; % Finaliza el diario
% diary on; % Reanuda el diario 

%% Matices y vectores
% V=[v1 v2 v3 ... vn]; % Crea el vector V de n elementos
% M=	[a11 a21 ... a2n;
%	 a21 a22 ... a2n]; 
%	 am1 am2 ... amn]; % Crea la matriz M de  (mxn) elementos

% Ejemplos matrices y vectores:
V1=[0 1 2 3 4 5 6 7 8 9];
M=[1 2 3; 4 5 6; 7 8 9];

Item=M(2,3); 	% Guarda en la variable Item el elemento (2,3) de M 
Col=M(:,1); 	% Guarda en Col los elementos de la primera columna de M
Fil=M(2,:); 	% Guarda en Col los elementos de la segunda fila de M
S=M(1:3,2:3); 	% Guarda en S la matriz que contiene filas de 1 a 3, columnas de 2 a 3  

%%
V1=0:9; % Crea el vector V1 con los valores del 0 al 9
V2=0:0.5:9; % Crea el vector V2 con los valores del 0-9 espaciados 0.5. V2=[0 0.5 1 ... 

%V3=linspace (ini,fin,num); % Genera un vector entre el elemento ini y el elemento fin 
% con num elementos. Por ejemplo para crear el vector de los ejemplos anteriores 
% es: 
V3=linspace(0,9,10);
%V4=logspace(ini,fin,num); % Igual que linspace pero en escala logarítmica

% eye (n); 		% Crea una matriz unidad (nxn)
% zeros(n,m); 	% Crea una matriz de ceros  (nxm)
% zeros (n); 	% Crea una matriz de ceros (nxn)
% ones (n); 	% Crea una matriz de unos (nxn)
% ones (n,m); 	% Crea una matriz de unos (nxm)
% rand (n); 	% Crea matriz  de valores pseudo-aleatorios. Valores 0 y 1 
% randn (n,m); 	% Crea la matriz aleatoria (nxm)
% magic (n); 	% Crea una matriz en la que filas y columnas suman lo mismo


%% Operaciones con matrices
% M1+M2; 	% Suma matricial de M1 y M2
% M1-M2; 	% Resta matricial de M1 y M2
% M1*M2; 	% Producto matricial de M1 y M2
% M1.'; 	% Transpuesta de M1
% M1^n; 	% Elevar a potencia n-ésima (matrices cuadradas)
% M1/M2; 	% Divide M1 entre M2 por la derecha
% M1\ M2; 	% Divide M1 entre M2 por la izquierda
% M1.*M2; 	% Producto elemento a elemento
% M1./M2;  	% Divide elemento a elemento
% M1.^M2; 	% Elevar a potencia elemento a elemento
% abs(M);  	% Calcula el valor absoluto de una matriz
% angle(M);	% Calcula el ángulo de una matriz 
% real(M); 	% Obtiene la parte real de una matriz
% imag(M); 	% Obtiene la parte imaginaria de una matriz

%% Otras con matrices
% size(dato); 	% Devuelve el número de filas y columnas de la matriz 
% length(dato);	% Calcula el número de elementos de un vector 
% diag(vector); 	% Crea una matriz diagonal con los elementos del vector
% min(vector); 	% Obtiene el valor mínimo de un vector o matriz
% max(vector); 	% Obtiene el valor máximo de un vector o matriz
% triu(matriz); 	% Crea una matriz triangular superior 
% tril(matriz);  % Crea una matriz triangular inferior

%% Polinomios
% conv (P1,P2);		% Convolución. Multiplica los polinomios P1 y P2
% deconv (P1,P2); 	% Deconvolución. Divide los polinomios P1 y P2
% poly (C);			% Polinomio a partir de las raíces indicadas en C
% polyder(P1);		% Derivada del polinomio
% polyval(P1,xo);	% Evalúa el polinomio para el valor xo
% polyvalm(P,X);		% Evalúa el polinomio con los valores dados en una matriz 
% residue(B,A);		% Calcula la expresión de los residuos para B/A
% roots(P);

%% Representación gráfica en 2D
% plot(x,y);% Representa gráficos bidimensionales  
% subplot (n,m,p); % Divide la ventana en diferentes gráficas		
% hold; 	% Retiene o libera el grafico actual
% figure; 	% Crea la figura una ventana gráfica
% clf; 	% Borra la ventana gráfica

% title (<'Texto'>);% Titulo del gráfico
% xlabel (<'Texto'>);% Testo para el eje x
% ylabel (<'Texto'>); % Testo para el eje y
% legend; % Muestra la leyaenda
% axis; % Control del escalado de los ejes

% Ejemplo. Traza los valores de p(x)=x^3 +5x^2-x+4 entre -5 y 5 
x=-5:0.1:5;
P=[1 5 -1 4];
y=polyval(P,x);
plot(x,y); 


%% Sentencia if
%if <condicion> 
%	<sentencias>
%end

% Formato de la condición con if else
%if <condicion>
%	<sentencias si cierto>
%else
%	<sentencias si falso>
%end

% Formato de la instrucción completo (múltiples condiciones)
%if <condicion 1>
%	<sentencias si es cierta la condición 1>
%elseif <condicin 2>
%	<sentencias si es cierta la condición 2>
%elseif <condicin 3>
%	<sentencias si es cierta la condición 3>
%else
%	<sentencias si no se cumple ninguna de las anteriores>
%end

% Ejemplo simple
if P1==P2
	disp('Los polinomios son iguales')
else 
	disp('Los polinomios son diferentes')
end

%% Sentencia switch-case

%switch <variable>
%   case <valor 1>
%      <sentencias si variable = 1>
%   case <valor 2>
%      <sentencias si variable = 2>
%   otherwise
%      <sentencias si variable diferente a las opciones dadas>
%end

% Ejemplo 
n=input ('Introduce el tipo de operación a realizar: ');
switch n
   case n==1
      P3=P1+P2;
   case n==2
      P3=P1-P2;
    otherwise
      P3=P1*P2;
end

%% Sentencia for
%for <variable = expresión>
%    <sentencias>
%end

% Ejemplo
[n,m]=size(M);c=1;
for i=1:n % Crea un vector con todos los elementod de la matriz M
	for j=1:m
		V(c)=M(i,j);
		c=c+1;
	end
end


%% Sentencia while

%while <condición>
%	<sentencias>
%end

% Ejemplo
a=0;
while a<=100
	a=a+1;
end


