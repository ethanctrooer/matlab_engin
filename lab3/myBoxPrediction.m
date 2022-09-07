function [pred] = myBoxPrediction(m, f, theta)
% lab 3-4 sliding box
g = 9.81
theta_rad = theta * pi / 180

    if isa(f, "double") && isa(theta, "double")
        if g * (sin(theta_rad) - f .* sin(theta_rad)) > 0
            pred = 'The box will slide.'
        else
            pred = 'The box will not slide.'
        end
    % seperator
    elseif f == '?'
        coeff = tan(theta_rad)
        disp(coeff)
        disp("hello " + num2str(coeff))
        if coeff < 10.00
            pred = ['If f is less than', sprintf('%5.2f',coeff), ', the box will slide.']
        else
            pred = ['If f is less than ', sprintf('%5.2f',coeff), ', the box will slide.']
        end
    else
        coeff = atan(f)
        coeff_deg = coeff * 180 / pi
        pred = ['If theta is greater than ', sprintf('%5.2f',coeff_deg), ' degrees, the box will slide.']
    end

    %pred = "something went wrong"

end
