function [precision, recall, F1] = metrics(true_positives, false_positives, false_negatives)
  
    precision = 0;
    recall = 0;

    if true_positives + false_positives > 0
        precision = true_positives / (true_positives + false_positives);
    endif

    if true_positives + false_negatives > 0
        recall = true_positives / (true_positives + false_negatives);
    endif

    if precision + recall > 0
        F1 = 2 * precision * recall / (precision + recall);
    else
        F1 = 0;
    endif

endfunction