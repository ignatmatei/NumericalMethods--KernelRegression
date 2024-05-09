function [x] = conjugate_gradient (A, b, x0, tol, max_iter) 
  # Implementati algoritmul pentru metoda gradientului conjugat
   x = x0;                       % Start with the initial guess
    r = b - A * x;                % rezidual initial
    p = r;                        % cautarea initiala
    rsold = r' * r;               % norma rezidualului

    for i = 1:max_iter
        Ap = A * p;
        alpha = rsold / (p' * Ap);    % marimea pasului
        x = x + alpha * p;            
        r = r - alpha * Ap;           % rezidual nou

        rsnew = r' * r;               
        if sqrt(rsnew) < tol         
            break;
        endif

        p = r + (rsnew / rsold) * p;  % noua directie de cautare
        rsold = rsnew;                
    endfor
    
endfunction