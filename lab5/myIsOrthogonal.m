function [out] = myIsOrthogonal(v1,v2, tol)

out = 0

if tol > abs((pi/2)-(acos((dot(v1,v2))/(norm(v1)*norm(v2)))))
    out = 1
end

end