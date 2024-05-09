function retval = word_idx (distinct_wds)
    % return the word_idx dictionary HINT: containers.Map
    num_words = numel(distinct_wds);
    indices = 1:num_words;
    retval = containers.Map(distinct_wds, indices);
endfunction

