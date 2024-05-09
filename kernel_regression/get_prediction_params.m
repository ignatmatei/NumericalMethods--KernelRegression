function [a] = get_prediction_params(K, y, lambda)
    n = size(K, 1);
    A = K + lambda * eye(n);
    L = cholesky(A);
    % rezolva sistemul triunghiular
    y1 = L \ y;
    % rezolva sistemul transpus
    a = L' \ y1;
endfunction
