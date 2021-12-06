% Question 1 - d

function [] = Exercice1_d(pas, nbHarmonique)
    t=0:pas:pi;
    s = zeros(1,length(t));
    m = zeros(nbHarmonique,length(t));

    for k=1:nbHarmonique
        s = s + 4*(sin((2*k-1)*t)) / (2*k-1)/pi;
        m(k,:) = s;
    end

    mesh(m), grid, title('Reconstitution du signal carré'), xlabel('Temps'), ylabel('Amplitude');
end