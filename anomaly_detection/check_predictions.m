
function [false_pozitives, false_negatives, true_pozitives] = check_predictions(predictions, truths)
    % false_pozitives = 0;
    % false_negatives = 0;
    % true_pozitives = 0;
    true_pozitives = sum((predictions == 1) & (truths == 1));
    false_pozitives = sum((predictions == 1) & (truths == 0));
    false_negatives = sum((predictions == 0) & (truths == 1));

endfunction
