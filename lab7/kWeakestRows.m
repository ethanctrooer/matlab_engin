function [retval] = kWeakestRows(mat, k)

    counter = {}

    total_sols = sum(mat==1, 'all')

    for i = 1:size(mat,1)
    
        row = mat(i,:)
        num_sols = sum(row==1, 'all')

        a = [i, num_sols]

        counter = [counter; a]

    end
    
    totals = cell2mat(counter)
    size(totals, 2)
    out = sortrows(totals, [2,1])

    rows_final = out(:,1)

    retval = rows_final(1:k).'
    

end