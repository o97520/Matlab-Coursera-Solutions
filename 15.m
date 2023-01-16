
function b = next_prime(n)
  i = 0;

  while 1
      i = i + 1;
      b = n + i;

      if isprime(b)
          break
      end

  end

end
