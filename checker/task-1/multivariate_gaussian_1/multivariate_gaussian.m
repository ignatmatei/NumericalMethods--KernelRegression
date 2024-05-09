function probabilities = multivariate_gaussian(X, mean_values, covariance_matrix)
  
    k = length(mean_values);

    const = 1 / ((2 * pi)^(k / 2) * sqrt(det(covariance_matrix)));
    probabilities = zeros(size(X, 1), 1);
    inv_covariance = inv(covariance_matrix);

    for i = 1:size(X, 1)
        diff = X(i, :) - mean_values;
        probabilities(i) = const * exp(-0.5 * diff * inv_covariance * diff');
    endfor
endfunction

