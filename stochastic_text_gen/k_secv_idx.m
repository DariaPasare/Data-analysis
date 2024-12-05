function retval = k_secv_idx (distinct_k_secv)
  % return disctionary containing the indices of each elem from distinct_k_sec
  % HINT: containers.Map
  % Try not to set the key-value pairs iteratively, use containers.Map(keys, values) whenever possible

  indi = zeros(1, length(distinct_k_secv));
  for i = 1:length(distinct_k_secv)
    indi(i) = i;
  end
  retval = containers.Map(distinct_k_secv, indi);

endfunction
