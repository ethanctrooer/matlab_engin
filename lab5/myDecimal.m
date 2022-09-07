function [binary] = myDecimal(decimal)

binary = []

remainder = 999

while decimal >= 1
    remainder = mod(decimal,2)
    binary = [remainder, binary]
    decimal = (decimal-remainder) / 2
end

binary

end