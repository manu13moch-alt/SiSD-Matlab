%A=ones(3,3);
%A=[1 2 3; 0 1 0;1 0 1];
%b=[2 -1 0].';
%v= A\b;
%phi=0:(2*pi)/100:2*pi;
%En este caso tenemos un vector definido de [0,2*pi] (con los limites 
% incluidos) con un paso de (2*pi)/100. Por este motivo tenemos 101
%elementos.A simple vista parece que sobra uno, es decir que deberian 
% ser 100, pero analizando detenidamente vemos que al empezar en 0 se 
% suma un elemento más.
%phi2=phi(end:-1:1);


%2.4 ENTRADA Y SALIDA
%a=input("Entra el valor de la variable a:");
%disp(sprintf('a vale %i unidades\n',a));

%2.4.2 GRAFICOS
%hold on
%t=(0:1:10);
%t2=(0:0.01:10);
%y=sin(t2);
%y2=sin(t);
%plot(t2,y,'k');
%stem(t,y2, 'k');
%hold off

%2.5 FUNCIONES
%m=[2,3,4,5];
%n=[7,9,3,4];
%[res1, res2, res3]=funcionmuysimple(m,n);

load remoh1.mat
fid=fopen("remoh2.bin",'rb');
if fid == -1
    error('No se pudo abrir el archivo remoh2.bin.');
end
remoh2 = fread(fid,18739,'float');
fclose(fid);
%Se cargan 18739 variables de valores que oscilan aleatoriamente alrededor
%de 0
n = numel(remoh1);   % suponiendo que remoh1 y remoh2 tienen el mismo tamaño
remoh = zeros(2*n,1);

remoh(1:2:end) = remoh1;
remoh(2:2:end) = remoh2;
inv_remoh=remoh(end:-1:1);
hold on
audiowrite("inv_remoh.wav",inv_remoh,fs);
x=(0 :numel(remoh)-1)/fs;
plot(x,remoh)
xlabel("Tiempo (s)");
%In this house we obey the laws of thermodynamics
hold off