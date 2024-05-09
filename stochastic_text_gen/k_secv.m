function [B] = k_secv (A, k)
  % given an array [a b a b c] and k=2
  % should return [ab ba ab bc]
  % HINT: use strjoin 
  num_seqs = length(A) - k;
  B = cell(1, num_seqs);
  for i = 1:num_seqs
    B{i} = strjoin(A(i:i+k-1), ' ');    
  end
  B = B';
  endfunction