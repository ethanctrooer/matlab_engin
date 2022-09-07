function [G,Stu] = myGreeting(name,major,year, SID) 

Stu.name = name
Stu.major = major
Stu.year = year
Stu.SID = SID

F = sprintf('L9 gulag DoinB ryze hack')

G = ['Hi, my name is ', Stu.name, ' and my major is ', Stu.major, '. I started at Cal in ', num2str(Stu.year), '. My SID is ', num2str(Stu.SID), '.']

end