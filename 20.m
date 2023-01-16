
function saddle(A)
  a = []
  [b c] = size(A)
  k = 1

  for i = 1:b

      for j = 1:c
          d = A(i, :)
          e = A(:, j)
          f = A(i, j) >= d;
          g = A(i, j) <= e;

          if ~ismember(0, f) && ~ismember(0, g)
              indices(k, 1) = i;
              indices(k, 2) = j;
              k = k + 1;
          end

      end

  end

end

