function string = sizeClassString(var)

classVar = class(var)
sizeVar = size(var)

string = convertStringsToChars(num2str(sizeVar(1)) + "x" + num2str(sizeVar(2)) + " " + classVar)

end