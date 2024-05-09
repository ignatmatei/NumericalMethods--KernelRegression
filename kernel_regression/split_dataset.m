function [X_train, y_train, X_pred, y_pred] = split_dataset (X, y, percentage)
  # TO DO: împarte setul de date în 2 seturi: 
  # un set de training si un set de test,
  # ambele reprezentate printr-o matrice de features un vector de clase
  # percentage este un parametru considerat intre 0 si 1
  
  # Fiecare linie a matricii X reprezinta x^{(i)} si fiecare element de pe
  # linia coloanei y reprezinta y^{(i)}
    num_rows = size(X, 1);
    
    num_train_rows = round(percentage * num_rows);
    
    X_train = X(1:num_train_rows, :);
    
    y_train = y(1:num_train_rows, :);
    
    X_pred = X(num_train_rows+1:end, :);
    
    y_pred = y(num_train_rows+1:end, :);

endfunction
