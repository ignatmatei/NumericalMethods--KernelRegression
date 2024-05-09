function [L] = cholesky (A)
    # TO DO: realizati descompunerea cholesky pentru o matrice
    # positiv definita
    
    n = size(A, 1);
    L = zeros(n);

    for i = 1:n
        for j = 1:i
            sum_k = sum(L(i, 1:j-1) .* L(j, 1:j-1));
            
            if i == j
                % pt elemente diagonale
                L(i, j) = sqrt(A(i, i) - sum_k);
            else
                % pt elemente non-diagonale
                if L(j, j) == 0
                    L(i, j) = 0;
                else
                    L(i, j) = (A(i, j) - sum_k) / L(j, j);
                endif
            endif
        endfor
    endfor
endfunction
