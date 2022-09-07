function [add,charAdd,array,charArray] = datatypeMatters(x,y)
    % convert x and y to char type | implementation is kinda odd
    charX = convertStringsToChars(num2str(x))
    charY = convertStringsToChars(num2str(y))
    
    % add operator for int
    add = x+y
    
    % add operator for char
    charAdd = charX + charY
    
    % array operator for int
    array = [x y]
    
    % array operator for char
    charArray = [charX charY]
    
    % check byte and class, do not modify
    disp(whos('add'))
    disp(whos('charAdd'))
    disp(whos('array'))
    disp(whos('charArray'))
end