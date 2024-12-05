% This function estimates the parameters of a Gaussian distribution using the data in X.
function [mean_values variances] = estimate_gaussian(X)
    mean_values = zeros(1,1);
    variances = zeros(1,1);

    sum1 = 0;
    [m, n] = size(X)
    % n = nr de coloane
    % m = nr de linii

    for k = [1:m]
      sum1 += X(k, :); % suma pe coloane
    endfor

    mean_values = sum1 / m;

    sum2 = zeros(size(X, 2));
    for i = [1:m]
      deviation = X(i, :) - mean_values;
      sum2 = sum2 + deviation' * deviation;
    end

    variances = sum2 / m;

endfunction
