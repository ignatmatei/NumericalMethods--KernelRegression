function [P] = get_lower_inverse (L)
  # TO DO: Determinati printr-o metoda matriceala neiterativa inversa
  # unei matrici de tipul lower
    n = size(L, 1);
    P = eye(n);  % Start with the identity matrix, which will be transformed into the inverse

    % Perform forward substitution to find the inverse
    for j = 1:n
        P(j, j) = 1 / L(j, j);  % Invert the diagonal element
        for i = j+1:n
            for k = j:i-1
                P(i, j) -= L(i, k) * P(k, j);
            endfor
            P(i, j) /= L(i, i);
        endfor
    endfor
endfunction
