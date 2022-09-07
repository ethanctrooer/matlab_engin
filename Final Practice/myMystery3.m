function f = myMystery3(list)
possible1 = list(1)
possible2 = myMystery3(list(2:end));
if possible1 >possible2
f = possible1
else
f = possible2
end
end