% Exercice 2 TD 2 SIC
% Question 1

function [z] = produitConvolutionRetourner(x,y)
    z=zeros(1,length(x)+length(y)-1);

    xExtend=[x zeros(1,length(z)-length(x))];
    yExtend=[y zeros(1,length(z)-length(y))];

    matReturn=zeros(length(xExtend),length(xExtend));

    for k=1:length(xExtend)
        matReturn(k,length(xExtend)-k+1)=1;
    end

    xReturn=xExtend*matReturn;
    
    for k=1:length(z)
        xTemp=xReturn(length(xExtend)-k+1:length(xExtend))
        yTemp=yExtend(1:k)
        z(k)=sum(xTemp.*yTemp);
    end