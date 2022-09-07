function a = trace(A)
[lengthx,lengthy] = size(A);
a = 0;
for i = 1: lengthx
a = a + A(i,i);
end
end