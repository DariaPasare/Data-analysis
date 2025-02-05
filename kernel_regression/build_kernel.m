function [K] = build_kernel (X, f, f_param)
  # Construiti matricea K (matricea kernel-urilor) asa cum este
  # descrisa in enuntul temei pornind de la datele de intrare X
  # Functia de kernel este descrisa de parametrul f si foloseste f_param
  # ca al 3-lea parametru

  m = size(X, 1);
  K = zeros(m, m);

  for i = 1:m
    for j = 1:m
      K(i, j) = f(X(i, :), X(j, :), f_param);
    end
  end

endfunction
