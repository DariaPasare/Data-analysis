function [a] = get_prediction_params_iterative (K, y, lambda)
  # TO DO: folosind metode iterative, implementati logica
  # pentru a obtine vectorul coloana a, asa cum este descris in enuntul temei
  m = size(K, 1);
  M = lambda * eye(m) + K;
  a0 = zeros(m, 1);
  a = conjugate_gradient(M, lambda*y, a0, 0.001, 100);

endfunction
