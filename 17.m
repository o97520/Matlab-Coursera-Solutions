
function [summa index] = max_sum(v, n)

  if n > length(v)
      summa = 0;
      index = -1;
      return
  end

  b = length(v) - n + 1;

  a = zeros(1, b);

  for i = 1:b

      a(1, i) = sum(v(i:(i + n - 1)));
  end

  summa = max(a);
  index = min(find(a == summa));
end
