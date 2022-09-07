function [out] = myIsSimilar(s1,s2,tol)

v1 = []
v2 = []

low_letters = convertStringsToChars('abcdefghijklmnopqrstuvwxyz')
high_letters = convertStringsToChars('ABCDEFGHIJKLMNOPQRSTUVWXYZ')

for i = 1:length(low_letters)
    counter = count(s1, low_letters(i))
    counter = counter + count(s1, high_letters(i))

    high_counter = count(s1, low_letters(i))
    high_counter = high_counter + count(s1, high_letters(i))

    v1 = [v1, counter]
    v2 = [v2, high_counter]
end

CosTheta = max(min(dot(v1,v2)/(norm(v1)*norm(v2)),1),-1);
ThetaInDegrees = real(acosd(CosTheta));

out = (ThetaInDegrees < tol) + 0

end