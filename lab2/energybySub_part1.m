function [totalE] = energybySub_part1(m, v, h)
% lab2-3-1

kineticE = kineticEnergy(m, v)
potE = potentialEnergy(m, h)
totalE = kineticE + potE

end

function retval = kineticEnergy(m, v)
        total = 0

        for i = 1:size(m)
            %v(i,:)
            vtotal = norm(v(i,:))
            v2 = dot(vtotal, vtotal)

            total = total + 1/2*m(i)*v2
        end
        
        retval = total
end

function retval = potentialEnergy(m, h)
        total = 0

        for i = 1:size(m)
            total = total + (9.81)*(m(i))*(h(i))
        end

        retval = total
end

