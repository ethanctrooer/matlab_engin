function [turns] = myKnightTo_save1(board_dim,p1,p2,maxTurns)
    
    if p1 == p2 
        turns = 'squibley do'

    else if maxTurns < 0 | p1(1) > board_dim(1) | p1(2) > board_dim(2) | p1(1) < 1 | p1(2) < 1
        turns = inf
    
    else
        initial_turns = maxTurns-1 % update maxturns
        
        % do not change
        new_possibilities = [[p1(1)-2,p1(2)+1], [p1(1)-2,p1(2)-1], [p1(1)-1,p1(2)+2], [p1(1)-1,p1(2)-2], [p1(1)+1,p1(2)+2], [p1(1)+1,p1(2)-2], [p1(1)+2,p1(2)+1], [p1(1)+2,p1(2)-1]]
    
        for i = 1:7
            new_p1 = [new_possibilities(i),new_possibilities(i+1)]
            turns = myKnightTo(board_dim,new_p1,p2,initial_turns)
        end
    end

end