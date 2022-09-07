function out = operator(a,b)
out = 1
if a==b
out = a*b
else
if a >2 & b <3
out = a+b
elseif a <= 0 & b >=3
out = a-b
elseif a>=0 & a <=2 & b >0
out = a/b
end
end
end