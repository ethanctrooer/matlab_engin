function [L_Trap,L_Simp,L_Riem] = roofSheetLength(L_C, H, P, N)

a = 0;
b = L_C;
x = linspace(a,b,N+1)

corru_func = sqrt(1+(2*pi*H/P*cos(2*pi.*x./P)).^2)

%trapezoidal
L_Trap = ((b-a)/N)/2*(sum(2*corru_func(2:end-1))+corru_func(1)+corru_func(end))

%simp
L_Simp = ((b-a)/N)/3*(sum(corru_func(1) + sum(4*corru_func(2:2:end-1)) + sum(2*corru_func(3:2:end-2)) + corru_func(end)))

%left_riem
L_Riem = sum(corru_func(1:end-1))*((b-a)/N)

end