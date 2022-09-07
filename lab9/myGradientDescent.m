function [out, min] = myGradientDescent(f,df,init,gamma,n)
    
    current_xguess = init(1)
    current_yguess = init(2)

    for i = 1:n
        df1 = df{1}
        df2 = df{2}
        current_xguess = current_xguess - gamma * df1(current_xguess)
        current_yguess = current_yguess - gamma * df2(current_yguess)
    end

    out = [current_xguess, current_yguess]
    min = f(current_xguess, current_yguess)

end