%  Function header that describes function inputs and outputs
%  DO NOT CHANGE
function [mean_val,mean_abs] = myMean(x1,x2,x3)

%  Mean of x1, x2, and x3
mean_val = ((x1+x2+x3)/3)

%  Mean absolute value of x1, x2, and x3
mean_abs = ((abs(x1)+abs(x2)+abs(x3))/3)

end