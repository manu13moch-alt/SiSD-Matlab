%----P1------
%EXPONENCIAL DECREIXENT EXEMPLE
%n=0:50; %variable independiente 51 muestras
%w=pi/10;r=0.9; %inicaliza parámetros exponencial
%C=1;z=r*exp(j*w); x=C*z.^n; %exponencial compleja
%
%subplot(2,1,1); %Divide figura en 2 x 1, selecciona 1
%stem(n,real(x)); %Parte real en subplot 1
%xlabel('n');ylabel('real(x(n))'); %etiquetas gráfica
%
%subplot(2,1,2); %Divide figura en 2 x 1, selecciona 2
%stem(n,imag(x)); %Parte imaginaria en subplot 2
%xlabel('n');ylabel('imag(x(n))'); %etiquetas gráfica

%EXPONENCIAL CONSTANT
%n=0:50; %variable indepndiente 51 muestras
%w=pi/10;r=1; %inicaliza parámetros exponencial
%C=1;z=r*exp(j*w); x=C*z.^n; %exponencial compleja

%subplot(2,1,1); %Divide figura en 2 x 1, selecciona 1
%stem(n,real(x)); %Parte real en subplot 1
%xlabel('n');ylabel('real(x(n))'); %etiquetas gráfica
%
%subplot(2,1,2); %Divide figura en 2 x 1, selecciona 2
%stem(n,imag(x)); %Parte imaginaria en subplot 2
%xlabel('n');ylabel('imag(x(n))'); %etiquetas gráfica

%EXPONENCIAL CRECIENTE
% n=0:50; %variable indepndiente 51 muestras
% w=pi/10;r=1.1; %inicaliza parámetros exponencial
% C=1;z=r*exp(j*w); x=C*z.^n; %exponencial compleja
% 
% subplot(2,1,1); %Divide figura en 2 x 1, selecciona 1
% stem(n,real(x)); %Parte real en subplot 1
% xlabel('n');ylabel('real(x(n))'); %etiquetas gráfica
% 
% subplot(2,1,2); %Divide figura en 2 x 1, selecciona 2
% stem(n,imag(x)); %Parte imaginaria en subplot 2
% xlabel('n');ylabel('imag(x(n))'); %etiquetas gráfica
%----P2------
%SENYAL SINUSOIDAL PERIODICA
% n=0:31;
% A=1;w=pi/8;
% f=A*sin(w*n);
% stem(n,f)
% xlabel('n');ylabel('A');

%SENYAL SINUSOIDAL NO PERIODICA
% n=0:31;
% A=1;w=2;
% g=A*sin(w*n);
% stem(n,g)
% xlabel('n');ylabel('A');

%----P3-----
n=0:9;
s=cos(2*pi*(3/10)*n);
