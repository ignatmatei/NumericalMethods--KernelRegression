function a = get_prediction_params_iterative(K, y, lambda)
    A = K + lambda * eye(size(K, 1));
    x0 = zeros(size(y));
    tol = 1e-6;
    max_iter = 1000;
    a = conjugate_gradient(A, y, x0, tol, max_iter);
endfunction