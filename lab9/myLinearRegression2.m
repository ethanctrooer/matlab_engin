function [a,b,RMSE] = myLinearRegression2(x, y, gamma, n)
    
    %initial values of a and b are 1
    % data_storage = [1,1,999]; % [a,b,RMSE]
    a_g = 1; % a guess
    b_g = 1; % b guess

    for i = 1:n
        y_g = a_g .* x + b_g;
        a_g = a_g - gamma * (2./size(y,1) .* sum(x .* (y_g - y)));
        b_g = b_g - gamma * (2./size(y,1) .* sum(y_g - y));
    end

    a = a_g
    b = b_g
    new_y = a.*x+b;
    RMSE = sqrt(1/size(y,1) * sum((new_y-y).^2))

    figure;
    scatter(x,y,'LineWidth',1);
    hold on;
    fplot(@(x) a*x + b, 'LineWidth', 1);
    xlim([0,10])

end