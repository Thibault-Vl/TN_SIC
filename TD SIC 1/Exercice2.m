% Question 1

Fe = 500;
Te = 1/Fe;
t = 0:Te:2;

b = randn(size(t));
b=b-mean(b); b=b/std(b); b=b*2;

A = sqrt(2*sqrt(10));

Fs = 100;

s = A*sin(2*pi*Fs*t);

sb = s + b;

plot(t(1:50),[sb(1:50)' s(1:50)' b(1:50)']), grid, title('Sinusoide avec un bruit blanc gaussien de fréquence 100Hz échantillonnée à 5OOHz'), xlabel('Temps'), ylabel('Amplitude');
legend('Signal bruité', 'Signal non bruité', 'Bruit');


% Question 2

energieSum = sum(s.^2);
energieFor = 0;

for k=1:length(s)
    energieFor = energieFor + s(k)^2;
end
energieFor;

energieProd = s * s';


% Question 3

moyenneSum = sum(sb) / length(sb);
moyenneFor = 0;

for k=1:length(sb)
    moyenneFor = moyenneFor + sb(k);
end
moyenneFor = moyenneFor / length(sb);

moyenneProd = (sb * ones(1,length(sb))') / length(sb);