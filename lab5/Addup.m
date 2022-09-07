function num = Addup( numberArray, value )

counter = 0
num = -1;

for i = 1:length(numberArray)    
    counter = counter + numberArray(i)
    disp(i)
    if counter >= value
         num = i
         break
    end
    if i == length(numberArray)
        num = 'Not Enough Numbers'
        break
    end
end

end