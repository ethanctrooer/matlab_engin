function [grid_solved] = mySudokuSolver(grid)

% while(count(grid,0) > 0)

    while(sum(grid==0, 'all')) > 0
        check_rows
        check_cols
        check_boxes
        grid
    end


    grid_solved = grid


    function check_rows
        for i = 1:9
            
            counter = [];
    
            row = grid(i,1:9)
            
            num_zeros = sum(row==0, 'all')
    
            if num_zeros == 1
                for j = 1:9
                    num_counter = sum(row==j, 'all'); % counter for individual num
                    if(num_counter) == 0
                        row(find(row==0)) = j
    
                        grid(i,:) = row
                    end
                end
    
            end
    
        end
    end

    function check_cols
        for i = 1:9
            
            counter = [];
    
            col = grid(1:9,i)
            
            num_zeros = sum(col==0, 'all')
    
            if num_zeros == 1
                for j = 1:9
                    num_counter = sum(col==j, 'all'); % counter for individual num
                    if(num_counter) == 0
                        col(find(col==0)) = j
    
                        grid(:,i) = col
                    end
                end
    
            end
    
        end
    end

    function check_boxes
        for i = 1:3:7

            for h = 1:3:7
                
                counter = [];
    
                box = grid(h:(h+2), i:(i+2))
                disp(string(h) + ":" + string(h+2) + "," + string(i) + ":" + string(i+2))
                
                num_zeros = sum(box==0, 'all')
        
                if num_zeros == 1
                    for j = 1:9
                        num_counter = sum(box==j, 'all'); % counter for individual num
                        if(num_counter) == 0
                            box(find(box==0)) = j
        
                            grid(h:(h+2), i:(i+2)) = box
                        end
                    end
        
                end

            end % end h
    
        end



    end % end check boxes

end