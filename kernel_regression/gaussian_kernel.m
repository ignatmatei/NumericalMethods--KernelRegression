function retval = gaussian_kernel (x, y, sigma)
  # TO DO: implement gaussian kernel function
    norm_squared = sum((x - y) .^ 2);
  retval = exp(-norm_squared /  (2 * sigma ^ 2));
endfunction
