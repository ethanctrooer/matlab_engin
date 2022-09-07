function [number] = myPascal(row, column)

    if row<0 | column <0
        number = 0
    elseif row==0 && column ==0
        number = 1
    else
        number = myPascal(row-1, column) + myPascal(row-1, column-1)

end

    % https://inst.eecs.berkeley.edu/~cs61a/fa11/61a-python/content/section_notes/week9/week09_sol.pdf