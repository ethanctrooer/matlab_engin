function [E1,E2,E3,E4,E5,E6,E7,E8,E9,E10] = myMathCalculations(a, b, c, x)
%Lab1Prob1 Using MATLAB as a Calculator
%   Detailed explanation goes here
E1 = sqrt((x-a)^2/b)
E2 = (pi*a^2*b)/3
E3 = (1/(1/a+1/b+1/c))
E4 = (c*exp(a*x))
E5 = log(abs(2*x-b))
E6 = (1/b)*log10(a/x)
E7 = sin(a)*cos(b)+cos(a)*sin(b)
E8 = acos(a/b)
E9 = (a+b*i)^(1/3)
E10 = c*((sinh(a*(x+b)))/sinh(a*b))*sin(a*x-c)
end