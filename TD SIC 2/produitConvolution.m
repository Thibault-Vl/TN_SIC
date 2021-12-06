% Exercice 2 TD 2 SIC
% Question 1

function [z] = produitConvolution(x,y)
    z=zeros(1,length(x)+length(y)-1);

    xExtend=[x zeros(1,length(z)-length(x))];
    yExtend=[y zeros(1,length(z)-length(y))];

    for k=1:length(z)
        for n=1:k
            z(k)=z(k)+xExtend(n)*yExtend(k-n+1);
        end
    end