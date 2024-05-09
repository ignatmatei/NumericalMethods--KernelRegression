function retval = k_secv_idx (distinct_k_sec)
  % return disctionary containing the indices of each elem from distinct_k_sec 
  % HINT: containers.Map
  % Try not to set the key-value pairs iteratively, use containers.Map(keys, values) whenever possible
    % This function returns a dictionary mapping each k-sequence to a unique index.
    % Input:
    %   distinct_k_sec - A cell array of distinct k-sequences
    % Output:
    %   retval - A containers.Map object where each k-sequence is a key associated with a unique index
    indices = 1:length(distinct_k_sec);
    retval = containers.Map(distinct_k_sec, indices);
endfunction