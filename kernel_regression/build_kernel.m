function K = build_kernel(X, f, f_param)
  % initializez matricea K - matricea de kerneluri
    n = size(X, 1);
    K = zeros(n);
    for i = 1:n
        for j = 1:n
          % aflu fiecare elem cu ajutorul functiei caracteristice
            K(i, j) = f(X(i, :), X(j, :), f_param);
        endfor
    endfor
endfunction
