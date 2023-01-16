
function z = echo_gen(a, b, c, d)
  e = a';
  length(e)
  f = c * b;
  g = zeros(1, f);

  if (d > 1)
      x = [e ./ d, g];
      y = [g, e];
      z = x + y;
      length(x)
      length(y)
  else
      x = [e, g];
      y = [g, e .* d];
      z = x + y;
      length(x)
      length(y)
  end

end
