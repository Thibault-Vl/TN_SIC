% Question 1 

A = 1;
Fs = 20;
Fe = 100;
Te = 1/Fe;
maxlag=20;

t = 0:Te:10;
s = A*sin(2*pi*Fs*t);

% Question 2

[c, lag] = xcorr(s,maxlag,'unbiased');
cb = xcorr(s,maxlag,'biased');

% figure(1), plot(t, s), title('Signal sinusoïdal de fréquence 20 Hz échantilloné a 100 Hz'), xlabel('Temps'), ylabel('Amplitude');
% figure(2), plot(lag, c), title('Extimateur non-biaisé de la FA'), xlabel('décalage');
% figure(3), plot(lag, cb), title('Extimateur non-biaisé de la FA'), xlabel('décalage');

% Question 3

b = randn(size(t));
b=b-mean(b); b=b/std(b); b=sqrt(7)*b;

[acb, Lag] = xcorr(b,maxlag,'unbiased');

figure(5), bar(Lag,acb), title("Fonction d'autocorélation du bruit"), grid, xlabel('Décalage');

% Question 4

xb = s + b;
figure(6), grid, plot(t,xb), title("Sinusoïde buitée"), xlabel('temps');

acxb=xcorr(xb,maxlag,'unbiased');
figure(7), grid, plot(Lag,[c' acxb']), title("Fonction d'autocorélation du signal avec avec et sans bruit")
legend('FA sinus non buité', 'FA sinus buité'), xlabel('décalage');