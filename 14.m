function a = halfsum(A)
  a = 0

  for i = 1:length(A)
      a = a + sum(A(i, i:end));
  end

end
