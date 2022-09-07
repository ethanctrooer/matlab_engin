function [Idx,Mid] = bsearch(M, Key)
Left = 1;
Right = numel(M);
while Right>Left
    Mid = floor((Left+Right)/2)
        if M(Mid)<Key
            Left = Mid+1
        else
            Right = Mid
        end
    end
if M(Left)==Key
    Idx = Left;
else
    Idx = [];
end
end