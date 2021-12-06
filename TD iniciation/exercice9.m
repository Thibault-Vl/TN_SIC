function [r1,r2] = exercice9(a,b,c)
    if a==0
        error('Equation du premier degré : a=0');
    end
    delta=b*b-4*a*c;
    if delta >= 0
        r1=(-b-sqrt(delta))/(2*a);
        r2=(-b+sqrt(delta))/(2*a);
    else
        r1=(-b-i*sqrt(0-delta))/(2*a);
        r2=(-b+i*sqrt(0-delta))/(2*a);
    end
end