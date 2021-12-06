% Question 1 - b

function [] = Exercice1_b(pas, nbHarmonique, tDebut, tFin)
    t=tDebut:pas:(tFin-tDebut);
    s = zeros(1,length(t));

    for k=1:nbHarmonique
        s = s + 4*(sin((2*k-1)*t)) / (2*k-1)/pi;
    end

    plot(t, s), grid, title('Reconstitution du signal carré'), xlabel('Temps'), ylabel('Amplitude');
end