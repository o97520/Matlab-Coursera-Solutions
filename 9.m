
function [a, b] = minimax(A)
  a = (max(A, [], 2) - min(A, [], 2))';
  b = max(max(A)) - min(min(A));
end
