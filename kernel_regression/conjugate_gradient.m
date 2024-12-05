function [x] = conjugate_gradient (A, b, x0, tol, max_iter)
   # Implementati algoritmul pentru metoda gradientului conjugat

   r = b - A * x0;
   v = r;
   x = x0;
   tol_squared = tol^2;
   k = 1;

   while k <= max_iter && norm(r)^2 > tol_squared

      tk = (r' * r) / (v' * A * v);
      x = x + tk * v;
      rk = r - tk * A * v;
      sk = (rk' * rk) / (r' * r);
      v = rk + sk * v;

      r = rk;
      k = k + 1;

   endwhile
endfunction
