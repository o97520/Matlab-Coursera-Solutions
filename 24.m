
function abcd(z)
  syms x a;
  p = x * a * (1 - x)

  for i = 0:2:

      b = 2^i;
      P=p;
      for i = 1:b

          P1 = subs(P, x, p);
          P=P1

      end

  end

end
