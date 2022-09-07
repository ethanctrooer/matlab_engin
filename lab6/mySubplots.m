function [fig] = mySubplots(filenames)

disp(filenames)

for i = 1:length(filenames)
    disp(string(filenames(i)))
    fileID = fopen(string(filenames(i)))
%     A = fscanf(fileID, "%f")

%     x = A(1)
%     y = A(2)
%     time = A(3)
%     spacing = A(4)

    header = fgetl(fileID)
    data = readmatrix(string(filenames(i)));
     disp(data)

%     [X,Y] = meshgrid(0:spacing:x, y)
%     Z = A(5:5:end,:)
% 
%     contour(X,Y,Z)

end




end