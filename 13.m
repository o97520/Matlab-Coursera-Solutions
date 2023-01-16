function t = underage(a, b)

  if (nargin < 2)
      b = 21;
  end

  if (a < b)
      t = 1
  else
      t = 0
  end

end
