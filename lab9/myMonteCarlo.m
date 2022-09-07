function [out] = myMonteCarlo(a,b,c,d,N)

x_coor = a + (b-a) .* rand(N,1);
y_coor = c + (d-c) .* rand(N,1);

counter = 0

for i = 1:length(x_coor)
    x = x_coor(i);
    if (2*x.*cos(x.^2).*exp(sin(x.^2))+14) >= y_coor(i)
        counter = counter + 1;
    end
end

% points = sum(2*x_coor.*cos(x_coor.^2).*exp(sin(x_coor.^2))+14 >= y_coor)

% plot(x_coor,y_coor,'.')
% hold on
% fplot(@(x) 2*x*cos(x^2)*exp(sin(x^2))+14,[0,4])
% hold off
disp(counter)

out = (abs(b-a) .* abs(d-c)) * (counter / N)

end

