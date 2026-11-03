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
% A=1;w=sqrt(2);
% g=A*sin(w*n);
% stem(n,g)
% xlabel('n');ylabel('A');

%----P3-----
%f=3/10
% n=0:9;
% n=0:30;
% n=0:49;
% n=0:82;
% n=0:126;
% s=cos(2*pi*(3/10)*n);
% rep_tyf(s);
%El periodo fundamental debe ser multiple de 10, de este modo el muestreo
%en frequencia caerá en el pico de y los ceros de la sinc
%----P4-----
h = [0.25 0.25 0.25 0.25];
x=[1,2,3,4,3,2,1];
y=conv(x,h);
n=0:length(y)-1;
stem(n,y)
hold on
%----P5-----
% h = [0.25 0.25 0.25 0.25,0,0,0,0];
% x=[1,2,3,4,3,2,1,0];
% H=fft(h,8);
% X=fft(x,8);
% Y=X.*H;
% y=ifft(Y,8);

h = [0.25 0.25 0.25 0.25,0,0,0,0];
x=[1,2,3,4,3,2,1,0];
y=cconv(h,x,8);
n=0:length(y)-1;
stem(n,y)
%La convolución circular
%es igual a hacer la DFT, multiplicar y luego hacer la IDFT. En cambio la
%convolución lineal es diferente.
%----P6-----
% h = [0.25 0.25 0.25 0.25,0,0,0,0,0,0,0,0];
% x=[1,2,3,4,3,2,1,0,0,0,0,0];
% H=fft(h,12);
% X=fft(x,12);
% Y=X.*H;
% y=ifft(Y,12);

% h = [0.25 0.25 0.25 0.25,0,0,0,0,0,0,0,0];
% x=[1,2,3,4,3,2,1,0,0,0,0,0];
% y=cconv(h,x,12);
% n = 0:length(y)-1;
% stem(n, y);
% xlabel('n');
% ylabel('y(n)');
%----P7-----
% load("voice_samples.mat");
% x8k=vector_samples_8k;
% x44k=vector_samples_44k;
% 
% disp("Escoltant a 8k...");
% sound(x8k,8000); pause(3);
% 
% disp("Escoltant a 44k...");
% sound(x44k,44000); pause(3);
%Cuanta más frcuencia, más resolución, por tanto mayor calidad, és decir
%que se oye mejor.
%----P8-----
% load("voice_samples.mat");
% x8k=vector_samples_8k;
% x44k=vector_samples_44k;
% rep_tyf(x8k); %Estimando vemos que las frecuencias se encuentran en el rango del -0,2 al 0.2
% rep_tyf(x44k);%En este caso va del -0.1 al 0.1

%----P9-----
% x16k=vector_samples_16k;
% h=zeros(0,9600);
% h(1)=1;
% h(3200)=0.7;
% h(6400)=0.5;
% h(9600)=0.2;
% y=conv(x16k,h);
% n=0:length(y)-1;
% sound(y,16000)
% stem(x16k)
% rep_tyf(y)