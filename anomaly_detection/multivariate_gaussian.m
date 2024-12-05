% Computes the probability density function of the multivariate gaussian distribution.
function probabilities = multivariate_gaussian(X, mean_values, variances)
   n = size(X, 2);
   nr = size(X, 1);
   probabilities = zeros(1, nr);
   inverse_variances = inv(variances);
   for i = 1:nr
       X_minus_mu = X(i, :) - mean_values;
       probabilities(i) = (1 / ((2 * pi)^(n / 2) * sqrt(det(variances)))) * exp(-1/2 * (X_minus_mu * inverse_variances * X_minus_mu'));
   end

   probabilities = probabilities'
endfunction

