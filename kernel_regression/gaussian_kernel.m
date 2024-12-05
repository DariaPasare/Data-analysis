function retval = gaussian_kernel (x, y, sigma)
  # TO DO: implement gaussian kernel function
    dist = (norm(x - y))^2;
    retval = exp(- dist / (2 * sigma^2));

endfunction
