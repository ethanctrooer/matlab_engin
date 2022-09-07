%test1 = energybySub(1, [1 1 1], 1)
%test2 = energybySub([1;4;6], [1 1 1;2 3 4; 2 7 6], [2;5;5])
%test2 = energybySub_part1([1;4;6], [1 1 1;2 3 4; 2 7 6], [2;5;5])

% a = [1; 1; 6; 2]
% b = [5; -7; -17; 1]
% c = [6; -3; 12; 5]
% 
% myQuadraticFormula(a, b, c) 

% myBoxPrediction(1, '?', 70)

% x = ones(24, 1)
% x = x * 1
%   
% getBestTier(x)

% A = zeros(24, 1)
% A(22) = 1

% my8BitBinary([0 0 1 0 0 1 1 0])
% 
% x = 4;
% y = 3;
% [add,charAdd,array,charArray] = datatypeMatters(x,y)

% var = [1 2 3]
% sizeClassString(var)
% x = [5,10,15,20]; y = (x <= 15) 
% size(y, 2)

% a = logical([1,0,0,1]); b = logical([0,1,1,0]); c = a + b

% month = 4; 
% switch month
%     case {12,1,2}
%         disp('winter')
%     case {3,4,5}
%         disp('spring')
%     case {6,7,8}
%         disp('summer')
%     case {9,10,11}
%         disp('fall')
%     otherwise
%         disp('not a valid month') 
% end

% a = [1,0,1,1];
% b = find(a);
% if sum(a) > sum(b)
%     a = a + 1; 
% elseif sum(a) == sum(b)
%     b = b + 1; 
% elseif sum(a)  < sum(b)
%     a = a + 1; 
% elseif 2*sum(a)>sum(b)
%     a = a + 1; 
% else
%     a = 0; 
% end

% a = [1, 3, 2, 4]
% b = size(a, 2)

% v = [3 1 5];
% 
% for j = v
%     disp(j)
% end
% numberArray = [2 3 4 6];
% value = 5;
% y = Addup(numberArray, value); 

% x = 'sbubby'
% 
% for i = 1:length(x)
%     if i > 3 && i < length(x)
%         x(i) = 's'
%     end
% end

% fig = mySurfacePlot(2,2);
% title = fig.CurrentAxes.Title.String;

% k1 = 1
% k2 = 1
% 
% x = num2str(k1)
% y = num2str(k2)
% 
% ['f(x,y) = sin(', num2str(k1), '*x) + sin(', num2str(k2), '*y) + sin(x+y)']

% name = 'Marge';
% major = 'ECIC';
% year = 2022;
% SID = 8675309;
% [G, Stu]=myGreeting(name,major,year, SID);
% 
% a = {}
% 
% filePattern = fullfile('/Users/ethanchen/Documents/MATLAB/data', '*.txt')
% theFiles = dir(filePattern)
% for k = 1:17
%     baseFileName = theFiles(k).name;
%     fullFileName = fullfile(theFiles(k).folder, baseFileName);
%     fprintf(1, 'Now reading %s\n', fullFileName);
%     a{end+1} = fullFileName
% end
% 
% mySubplots(a)

% myIsSimilar('ABc','cDa',0.1)

% grid = [1 2 3 4 5 6 7 8 9;
%         4 5 6 7 8 9 1 2 3;
%         7 8 9 1 2 3 4 5 6;
%         2 3 4 5 6 7 8 9 1;
%         5 6 7 8 9 1 2 3 4;
%         8 9 1 2 3 4 5 6 7;
%         3 4 5 6 7 8 9 1 2;
%         6 1 2 9 4 5 3 7 8;
%         0 7 8 3 1 2 6 4 5];
% x = mySudokuSolver(grid)

% array = [10,9,2,5,3,7,101,18];
% lengthOfLIS(array);

% mat = [1,1,0,0,0;
% 1,1,1,1,0;
% 1,0,0,0,0;
% 1,1,0,0,0;
% 1,1,1,1,1];
% k = 3;
% kWeakestRows(mat, k)

% gasNames = ["oxygen","carbon dioxide"];
% molarMass = [31.999, 44.01]; %grams/mol
% volumeStartStop = [0.2 0.5]; %cubic meters
% tempKelvin = 350 %Kelvin
% pressureTable = isothermalIG(gasNames, molarMass, volumeStartStop, tempKelvin);

% myPascal(3, 2)

% p1 = [0,0]
% new_possibilities = [[p1(1)-2,p1(2)+1];[p1(1)-2,p1(2)-1];[p1(1)-1,p1(2)+2];[p1(1)-1,p1(2)-2];[p1(1)+1,p1(2)+2];[p1(1)+1,p1(2)-2];[p1(1)+2,p1(2)+1];[p1(1)+2,p1(2)-1]]

% board_dim = [6,6];
% p1 = [5,3];
% p2 = [4,3];
% maxTurns = 4;
% turns = myKnightTo(board_dim,p1,p2,maxTurns);
% disp(turns)

% a = 0;
% b = 4;
% c = 0;
% d = 25;
% N = 10000;
% rng(0);
% out = myMonteCarlo(a,b,c,d,N);
% fplot(@(x) 2*x*cos(x^2)*exp(sin(x^2))+14,[0,4])
% COME BACK TO ME!!

% A = [12 24 0 11 -24 18 15 14 -2;
%     19 38 0 10 -31 25 9 4 11;
%     1 2 0 21 -5 3 20 24 -7;
%     6 12 0 13 -10 8 5 7 4;
%     22 44 0 2 -12 17 23 16 -7];
% 
% A = [1 2 3; 2 4 6; 12 65 33]
% 
% size(A,1)
% 
% B = myMakeLinInd(A); 

% x = [0:0.1:10]';
% rng(4)
% y = 10*rand(101,1) + 3*x + 5;
% [a, b, RMSE] = myLinearRegression(x,y)

% x = [0:0.1:10]';
% rng(4)
% y = 10*rand(101,1) + 3*exp(x*0.3);
% [alpha, beta, RMSE] = myExpFit(x, y)
% 
% f = @(x, y) x^2 + y^2;
% df1 = @(x) 2*x;
% df2 = @(y) 2*y;
% df = {df1;df2};
% [out, min] = myGradientDescent(f,df,[1;1],0.1,100);

% x = [0:0.1:10]';
% rng(4)
% y = 10*rand(101,1) + 3*x + 5;
% [a, b, RMSE] = myLinearRegression2(x, y, 0.01, 1000); 

% t = [1;2;3;4;5;6;7;8;9;10];
% d = [0.1;0.1;0.1;0.1;0.1;0.1;0.1;0.1;0.1;0.1];
% T = [1;2;3;4;5];
% option = ('nearest');
% D = myInterp(t,d,T,option);

% f = @(x) sin(2*x);
% h = 0.05;
% [df,fb,fc] = createFDD(f,h)

% labL_C = 5;
% H = 3;
% P = 2;
% N = 50;
% [L_Trap, L_Simp, L_Riem] = roofSheetLength(L_C, H, P, N);

F = [2,1,0;2,3,0;0,0,1];
i = 2;
j = 3;
tol = 10^-5;
[errorDJ, errorDJ2] = deformation(F, i, j, tol);

% DJ = [3.0358 -2.0239 0; -1.0119 2.0239 0; 0 0 4.0477]
% DJ_exact = [3 -2 0; -1 2 0; 0 0 4]
% 
% A = [DJ; DJ_exact]
% B = norm(DJ-DJ_exact)
