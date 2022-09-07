function [alpha,beta,RMSE] = myExpFit(x,y)

    n = length(x)
    y2 = log(y)
    j = sum(x)
    k = sum(y2)
    l = sum(x.^2)
    m = sum(y2.^2)
    r2 = sum(x.*y2)
    beta = (n*r2 - k*j) / (n*l - j^2)
    alpha = exp((k-beta*j)/n)
    
    y_g = alpha * exp(beta .* x) 
    RMSE = sqrt(1/length(y)*sum((y-y_g).^2));


end