function [x,message]=codeTest(A,b)
    try
        x=A\b
        disp('message=Solution complete')
    catch
        x=0;
        disp('message=Matrix dimensions are mismatched or solution does not exist')
    end
end