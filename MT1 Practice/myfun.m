function [sum, rangeratio] = myfun(a,b,c,d,e)
sum = a + b + c + d + e;
vect = [a,b,c,d,e];
minv = min(vect);
maxv = max(vect);
rangeratio = minv/maxv
end