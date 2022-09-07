function [df_f,df_b,df_c] = createFDD(f,h)

    df_f = @(x)(f(x+h)-f(x))/h
    df_b = @(x)(f(x)-f(x-h))/h
    df_c = @(x)(f(x+h)-f(x-h))/(2*h)

end