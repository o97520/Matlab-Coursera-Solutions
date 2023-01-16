
function a = sparse2matrix(a)
  b = zeros(a{1});
  b(b == 0) = a{2};

  if (length(a) > 2)

      for i = 3:length(a)
          b(a{i}(1), a{i}(2)) = a{i}(3);
      end

  end

  a = b;
end
