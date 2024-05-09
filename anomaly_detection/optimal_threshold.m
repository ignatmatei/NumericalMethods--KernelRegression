function [best_epsilon, best_F1, associated_precision, associated_recall] = optimal_threshold(truths, probabilities)
 
    best_epsilon = 0;
    best_F1 = -inf;
    associated_precision = 0;
    associated_recall = 0;
    
    probabilities = min(max(probabilities, 0), 1);
    thresholds = linspace(min(probabilities),max(probabilities), 1001); 

    for epsilon = thresholds
      
     predictions = probabilities < epsilon;
     [FP FN TP] = check_predictions(predictions, truths);   
     [precision recall F1] = metrics(TP, FP, FN);
        if F1 > best_F1
            best_F1 = F1;
            best_epsilon = epsilon;
            associated_precision = precision;
            associated_recall = recall;
        end
    endfor

endfunction
    