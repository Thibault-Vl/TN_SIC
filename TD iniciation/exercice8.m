figure(1);
VX=linspace(0,2*pi,100);
VY=sin(VX);
plot(VX,VY);

figure(2);
VX=linspace(-2,2,100);
VY1=VX-1;
VY2=VX+1;
VY=VY1.*VY2;
plot(VX,VY);

figure(3);
VX=linspace(-3,3,100);
V=ones(1,100);
VY1=V+VX.*VX;
VY=V./VY1;
plot(VX,VY);
hold on;

VX=linspace(-3,3,100);
V=zeros(1,100);
V=V+0.1;
VY1=V+VX.*VX;
V=ones(1,100);
VY=cos(V./VY1);
plot(VX,VY);
legend('f3','f4'), grid;