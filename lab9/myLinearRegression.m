function [a,b,RMSE] = myLinearRegression(x,y)
    
    x_left = ones(length(x),1)
    x1 = [x_left,x]

    a1 = x1\y
    a = a1(2)
    b = a1(1)

    guess_y = (a .* x) + b;
    RMSE = calc_rmse(guess_y)

    function [RMSE] = calc_rmse(yi)
        
        RMSE = sqrt(1/length(y)*sum((y-yi).^2));

    end

    figure;
    scatter(x,y,'LineWidth',1);
    hold on;
    fplot(@(x) a*x + b, 'LineWidth', 1);
    xlim([0,10])

% stored_values = [0, 0, 999] % [a, b, rmse]
% 
%     for a_guess = 1:20
%         for b_guess = 1:20
%             
%             guess_y = (a_guess .* x) + b_guess;
%             guess_rmse = calc_rmse(guess_y);
%             if guess_rmse < stored_values(3);
%                 stored_values = [a_guess, b_guess, guess_rmse];
%             end
% 
%         end
%     end
% 
%     a = stored_values(1)
%     b = stored_values(2)
%     RMSE = stored_values(3)

end