function [x1, x2] = myQuadraticFormula(a, b, c)
% lab 3-1

numerator_pos = -1 * b + sqrt(b .* b - (4 * a .* c))
numerator_neg = -1 * b - sqrt(b .* b - (4 * a .* c))
denom = 2 * a

x1 = numerator_pos ./ denom
x2 = numerator_neg ./ denom

end