%  Function header that describes function inputs and outputs
%  DO NOT CHANGE
function RMSE = myRMSE(x1, x2, x3, x1_actual, x2_actual, x3_actual)

% Calculate errors
x1_error = x1-x1_actual
x2_error = x2-x2_actual
x3_error = x3-x3_actual

% Find each square error
x1_square_error = (x1_error)^2
x2_square_error = (x2_error)^2
x3_square_error = (x3_error)^2

% Take the mean of the square errors using varibles above
mean_square_error = mean([x1_square_error, x2_square_error, x3_square_error])

% Square root the mean square error to find RMSE
RMSE = sqrt(mean_square_error)

end
