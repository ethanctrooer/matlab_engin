% x = [1 2 3 4 5 6 7 8 9]
% y = [9 8 7 6 5 4 3 2 1]
% 
% plot(x,y)
% hold on
% subplot(3,3,1)
% plot(y,x)
% subplot(3,3,4)

% x = [1 2; 999 4; 5 9]
% z = diff(x)

% y2 = 15
% 
% dy(1) = y2
% dy(2) = y^2+15
% [T,Y] = ode45(@(t,y) dy(2), [0, 10], 4)



% A = [-2, -1, 0, 1, 2, 3, 4, 5, 6, 7];
% [K,Mid] = bsearch(A, 5)

% x = linspace(0,100,101)

% for i=1:10
%     disp(i)
% end

% a = [3,1,5,2,1];
% da = polyder(a)
% a1 = polyint(da)
% ia1 = polyint(a1)
% a2 = polyder(ia1)

% I1 = trapz([1,9])
% I2 = trapz([2,3],[1,9])
% I3 = trapz([2,2.5],[1,9])
% I4 = trapz([1,1.5,2.5],[2,4,6])
% I5 = trapz([2,3,4])

% counter = 0;
% for i = 1:10
%     counter =  i;
% end
% disp(counter)

% p = [1 2 3 4 5];
% q = p(end:-1:3)

% a = [1 -2 -3 0 -1 -2];
% a = a([2 3 5 6])

% x = [0 4 3 -1; 2 1 1 -1];
% v = x.^2 - 10
% F = sum(v)
% G = F(1)

% x = [4 3 9]
% y = 5
% x > y

% a = myMystery3([5 4 3 9])

% a = [1 2 3; 4 5 6];
% b = a^2


% r2 = 1 + 5*randn(10000,1)
% std(1)
% 
% C = {1 2 3}
% 
% C = [C {1}]
% C{end+1} = 1
% C(end+1) = {1}
% C = { C{:} 1}
%C(end+1) = 1

% S=struct('Name',{'Robert','Rachael'},'Math',{93,95},'Chemistry',{78,82});
% y = S(1).Name(3)
% 
% y = mean(S.Math)
% 
% y = 0;
% for i=1:length(S)
% y = y+S(i).Math/length(S);
% end
% disp(y)
% 
% y = mean([S.Math])
% 
% y=0;
% for i=1:size(S,2)
% y = y+S(i).Math/size(S,2);
% end
% disp(y)
% 
% y = (S(1).Math + S(2).Math)/2
% 
% disp([S.Math])
% 
% mean([93 95])
% 
% mean([S.Math])

for i = 1:10
    disp(i)
end
