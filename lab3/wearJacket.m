function [B_out] = wearJacket(temp, rainy)
%lab 3-3

B_out = (temp < 60) | rainy

end