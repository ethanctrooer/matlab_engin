function [errorDJ, errorDJ2] = deformation(F, i, j, tol)
J = det(F);
G = activate_G(i,j);
[err_DJ,err_DJ_alt] = compare_DJ(F,tol);
errorDJ = err_DJ;
errorDJ2 = err_DJ_alt;
end

%% Write your activate function
function G = activate_G(i,j)
    % Initialize G as a 3-by-3 matrix of zeros
    
    temp = zeros(3,3);
    % "Activate" a single entry of G, as specified by i,j
    temp(i,j) = 1;
    G = temp;

end

%% Write your compare function
function [err_DJ,err_DJ_alt] = compare_DJ(F,tol)
    % Initialize k value
    k = 0;
    % k incremement
    inc = 0.5;
    % Initialize error arrays
    err = 10^3;
    err_DJ = [];
    err_DJ_alt = [];
    % True solution
    DJ_exact = det(F) * inv(F.');
    % Loop through increasing k values for cal_DJ
    % call subfunction cal_DJ
    
    while err >= tol%k < 10%
        
        % Perturbation
        omega = eps(1)*10^k;
        
        % Calculate DJ
        DJ = calc_DJ(F,omega);

        % Calculate error
        err = norm(DJ-DJ_exact);
        err_DJ = [err_DJ, err];
        
        % Update k
        k = k+inc;
      
    end
    
    % Plot
    figure(1)
    hold on
    % using plot(x,y,'-o')
    plot([0:0.5:k-0.5],err_DJ,'-o')
    
    % Reset
    k = 0;
    err = 10^3;

    % Loop through increasing k values for cal_DJ2
    % call subfunction cal_DJ2
    while err >= tol
        
        % Perturbation
        omega = eps(1)*10^k;
        
        % Calculate DJ
        DJ_alt = calc_DJ2(F,omega)

        % Calculate error
        err = norm(DJ_alt-DJ_exact)
        err_DJ_alt = [err_DJ_alt, err];
        
        % Update k
        k = k+inc;
        
    end
    
    % Plot
    figure(1)
    % using plot(x,y,'-o')
    plot([0:0.5:k-0.5],err_DJ_alt,'-o')
    
    legend('Using DJ', 'Using DJ^2')
    title('Error vs. k')
    xlabel('k values')
    ylabel('Error')

end

%% Write your calc_DJ function
function DJ = calc_DJ(F,omega)

    % Initialize an array of zeros for calculating DJ
    DJ = zeros(3,3);
    
    % Iterate through rows and columns of DJ
    for i = 1:size(F,1)
        for j = 1:size(F,2)
            G = activate_G(i,j)
            DJ(i,j) = (det(F+omega.*G)-det(F))/omega;
        end
    end

end


%% Write you calc_DJ2 function
function DJ_alt = calc_DJ2(F,omega)

    % Initialize an array of zeros for calculating DJ
    
    DJ = zeros(3,3);
    
    % Iterate through rows and columns of DJ
    
    for i = 1:size(F,1)
        for j = 1:size(F,2)
            G = activate_G(i,j);
            DJ_alt(i,j) = ((det(F+omega*G)^2-det(F)^2)/omega)/(2*det(F));
        end
    end

end


