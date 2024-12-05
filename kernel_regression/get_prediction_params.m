function [a] = get_prediction_params (K, y, lambda)
  # TO DO: folosind metode neiterative, implementati logica
  # pentru a obtine vectorul coloana a, asa cum este descris in enuntul temei
  m = size(K, 1);

  M = lambda*eye(m) + K;
  L = cholesky(M);
  P = get_lower_inverse(L);
  M = P' * P;
  a = lambda * M * y;

endfunction
