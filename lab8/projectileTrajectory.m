theta = [30 45 60]; %degrees
v0 = 25; %meters/second
y0 = 3.5; %meters
g = 9.81; %m/s^2
d = (v0 * cosd(theta) / g) .* (v0 .* sind(theta) + sqrt((v0.*sind(theta)).^2+2*g*y0))
x1 = linspace(0,d(1),200)
x2 = 0:d(2)/199:d(2)
x3 = 0:d(3)/199:d(3)
y1 = (x1 * tand(theta(1)) - 0.5*(x1.^2*g)/(v0*cosd(theta(1))).^2+y0).'
y2 = (x2 * tand(theta(2)) - 0.5*(x2.^2*g)/(v0*cosd(theta(2))).^2+y0).'
y3 = (x3 * tand(theta(3)) - 0.5*(x3.^2*g)/(v0*cosd(theta(3))).^2+y0).'

plot(x1,y1, x2,y2, x3,y3)

grid
xlabel("x")
ylabel("y")
title("title")
legend






