% Finds the best threshold to use for selecting outliers.
function [best_epsilon best_F1 associated_precision associated_recall] = optimal_threshold(truths, probabilities)
    best_epsilon = 0;
    best_F1 = 0;
    associated_precision = 0;
    associated_recall = 0;

    step = (max(probabilities) - min(probabilities))/ 1000;
    for epsilon = min(probabilities):step:max(probabilities)
      predictions = probabilities < epsilon;

      [false_pozitives, false_negatives, true_pozitives] = check_predictions(predictions, truths);
      [precision recall F1] = metrics(true_pozitives, false_pozitives, false_negatives);

      if F1 > best_F1
        best_F1 = F1;
        best_epsilon = epsilon;
        associated_precision = precision;
        associated_recall = recall;
      endif
    endfor

endfunction
