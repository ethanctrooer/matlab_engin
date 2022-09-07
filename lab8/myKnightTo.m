function [turns] = myKnightTo(board_dim,p1,p2,maxTurns)
    
out = []
nest(board_dim,p1,p2,maxTurns,-1)

    function nest(board_dim,p1,p2,maxTurns,counter)
        counter = counter + 1

        if p1 == p2 
            out = [out,counter]
    
        else if maxTurns < 0 | p1(1) > board_dim(1) | p1(2) > board_dim(2) | p1(1) < 1 | p1(2) < 1 | (counter-1) > maxTurns
            out = [out,inf]
        
        else
            initial_turns = maxTurns-1 % update maxturns
            
            % do not change
            new_possibilities = [[p1(1)-2,p1(2)+1], [p1(1)-2,p1(2)-1], [p1(1)-1,p1(2)+2], [p1(1)-1,p1(2)-2], [p1(1)+1,p1(2)+2], [p1(1)+1,p1(2)-2], [p1(1)+2,p1(2)+1], [p1(1)+2,p1(2)-1]]
        
            for i = 1:2:15
                new_p1 = [new_possibilities(i),new_possibilities(i+1)]
                nest(board_dim,new_p1,p2,initial_turns,counter)
            end
        end
        end
    end

turns = min(out)

end