function [P] = get_lower_inverse (L)
  # TO DO: Determinati printr-o metoda matriceala neiterativa inversa
  # unei matrici de tipul lower
  n = size(L, 1);
  P = zeros(n);
  for j = 1:n %
    P(j, j) = 1/L(j, j); % diagonala principala
    for i = j+1:n % pentru fiecare linie sub diagonala principala
      P(i, j) = -L(i, j:i-1)*P(j:i-1, j)/L(i, i);
    end
  end

endfunction
