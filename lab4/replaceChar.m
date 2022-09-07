function [retval] = replaceChar(instr, char1, char2)
%replace char1 with char2 in instr

for i = 1:length(instr)
    if instr(i) == char1
        instr(i) = char2
    end
end

retval = instr

end