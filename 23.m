function [b, z] = abc(xx)
  tol = 1e-5;
  xxx = 1e-2;
  b = 0:0.01:3.56;
  abc = zeros(1, length(b));
  error = 2 * tol;
  x = xx;
  z = [];
  C = [];
  u = 1;

  for i = 1:length(b)
      xx = x;

      b(1, i)

      y = zeros(1, u * 2);

      if (b(1, i) < 3)
          c = 0;

          while (error > tol)

              for i = 1:u * 2 - 1
                  y(1, i) = y(1, i + 1);
              end

              y(1, u * 2) = b(1, i) * y(1, u * 2) * (1 - y(1, u * 2));
              y
              o = 0;

              for i = 1:u

                  if (abs(y(1, i) - y(1, u + i)) < tol)
                      o = o + 1;
                  end

              end

              if (o == u)
                  z(1:length(y) / 2, i) = y(1, length(y) / 2 + 1:end);
                  break;
              end

              c = c + 1;

              if (c > 200000)
                  u = u * 2;
                  c = 0;
              end

          end

      end

  end

end
