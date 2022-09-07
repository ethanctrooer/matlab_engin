function [totalE] = energybySub(m, v, h)
% lab2-3-2

kineticE = kineticEnergy(m, v)
potE = potentialEnergy(m, h)

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

totalE = kineticE + potE

end

