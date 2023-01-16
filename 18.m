
function v1 = caesar(v, n)

  a = v + n;
  b = a(a > 126);
  b = b - 126;
  a(a > 126) = 0;
  a(a == 0) = b;
  v1 = char(a)
end
