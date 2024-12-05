function B = k_secv (A, k)
  % given an array [a b a b c] and k=2
  % should return [ab ba ab bc]
  % HINT: use strjoin
  n = length(A);
  B = cell(1, n-k);

  for i = 1:n-k
    B{i} = strjoin(A(i:i+k-1), ' ');
  end

  B = B'
endfunction
