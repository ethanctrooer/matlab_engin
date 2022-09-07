function [B] = myMakeLinInd(A)
    
    if size(A,2) == 1
        B = A
        return
    end

    col_reps = 1:size(A,2); % create representations for columns

    possible_combos = nchoosek(col_reps,size(A,1)); % get all possible combinations of reps

    for i = 1:size(possible_combos,1)

        choices = possible_combos(i,1:end) % choose col reps

        temp_mat = []; % use col reps to load cols from A

        for j = 1:length(choices) % see temp_mat
            temp_mat = [temp_mat, A(1:end,choices(j))];
        end

        disp(temp_mat);

        if ( abs(det(temp_mat)-0) > 0.000001 ) % check for det != 0, if is then lin indep.
            % calculating difference in reference to tolerance
            % to account for floating point numbers
            disp(det(temp_mat))
            B = temp_mat
            test = 1;
            break
        end
    end

end