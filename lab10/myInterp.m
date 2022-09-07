function [D] = myInterp(t,d,T,option)

    switch option
        case 'nearest'
            D = interp1(t,d,T,'nearest')
        case 'linear'
            D = interp1(t,d,T,'linear')
        case 'cubic'
            D = interp1(t,d,T,'cubic')
        case 'linearregression'
            temp = polyfit(t,d,1)
            D = polyval(temp,T)
        case 'cubicpoly'
            temp = polyfit(t,d,3)
            D = polyval(temp,T)
        otherwise
            error('Option selected is invalid.')
    end

end