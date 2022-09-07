function [fig] = mySurfacePlot(k1,k2)

x = (-2*pi):(pi/(20*k1)):(2*pi)
y = (-2*pi):(pi/(20*k2)):(2*pi)

[X,Y] = meshgrid(x,y)

Z = sin(k1 * X) + sin(k2 * Y) + sin(X+Y)

surfc(X,Y,Z)
l
h = colorbar
h.Limits = [-3 3]

title(['f(x,y) = sin(', num2str(k1), '*x) + sin(', num2str(k2), '*y) + sin(x+y)'], 'FontSize', 16)
xlabel('x', 'FontSize', 14)
ylabel('y', 'FontSize', 14)
zlabel('f(x,y)', 'FontSize', 14)

fig = gcf

end
