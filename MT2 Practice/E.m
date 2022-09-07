function output=E(a,b)
    if (b == 0)
        output=0
    elseif (mod(b,2) == 0)
        output=E(a+a, floor(b/2))
        disp("elif")
        disp([a,b])
    else
        output=E(a+a, floor(b/2))+a
        disp("else")
        disp([a,b])
end