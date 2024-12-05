function [L] = cholesky (A)
    # TO DO: realizati descompunerea cholesky pentru o matrice
    # positiv definita

  [n n] = size(A);
  L = zeros(n);

  for i = 1:n
    for j = 1:i-1
      s = sum(L(i, 1:j-1) .* L(j, 1:j-1));

      L(i, j) = (A(i, j) - s)/L(j, j);
    endfor

    s = sum(L(i, 1:i-1).^2);

    L(i, i) = sqrt(A(i, i) - s);
  endfor

endfunction
