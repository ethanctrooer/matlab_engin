function mainfun
i = 1;
i = localsubfun(i);
end
function [i] = localsubfun(i)
i = i +1;
end