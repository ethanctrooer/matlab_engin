function [prime] = isPrime(num)

prime = true

for i = 2:(num/2)
    if mod(num, i) == 0
        prime = false
        break
    end
end

end