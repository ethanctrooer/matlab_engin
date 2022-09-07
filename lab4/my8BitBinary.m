function [retval] = my8BitBinary(binary)
%CONVERT 8 bit binary to decimal
%   returns 1x1 double, input 1x8 double
%   could also be matrix multiplication .*

sum = 0

for i = 1:8
    sum = sum + binary(i) * 2^(8-i)
end

retval = sum

end