function [nums] = lengthOfLIS(array)

    counter = 0
    highest_num_so_far = intmin

    for j = 1:length(array)
        internal_counter = 0;

        for i = j:length(array)
            disp(array(i))

            array_val = array(i);
    
            if array(i) > highest_num_so_far
                highest_num_so_far = array(i);
                internal_counter = internal_counter + 1;
            end
        end

        if internal_counter > counter
            counter = internal_counter
        end

    end

    nums = counter

end