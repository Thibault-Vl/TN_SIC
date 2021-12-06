fe=100; Te=1/fe;
t=0:Te:12;
s1=zeros(1,401); s2=ones(1,200)+9; s3=zeros(1,300); s4=ones(1,200)+14; s5=zeros(1,100);
s=[s1 s2 s3 s4 s5];
clear s1 s2 s3 s4 s5;

b=randn(size(t));
b=b-mean(b); b=b/std(b); b=b*2;
sb=s+b;

figure(1);
plot(t,s,'g',t,sb,'r'), grid, title('Simulation de signal fournit par un débitmètre'), xlabel('t'), ylabel('bruit');
legend('Signal non bruité','Signal bruité')