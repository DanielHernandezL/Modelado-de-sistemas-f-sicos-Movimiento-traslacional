function dx=Suspencion(t,x)
%...............Definicion de los parametros.........%
m1= 290;
m2= 59;
k1=16182;
k2=19000;
f=0;
b1=1000;
z=0.5*sin(0.5*pi*t);
z2=0.5*sin(20*pi)
%..........................................%
dx=zeros(4,1);
%...............Definicion de la dinamica del sistema........%
dx(1)=x(2);
dx(2)=1/m1*(f-b1*x(2)+b1*x(4)-k1*x(1)+k1*x(3));
dx(3)=x(4);
dx(4)=1/m2*(k2*z-f+b1*x(2)-b1*x(4)+k1*x(1)-(k1+k2)*x(3));
