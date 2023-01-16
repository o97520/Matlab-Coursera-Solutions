
function [tl, tr, br, bl] = corner(A)
  tl = A(1, 1);
  tr = A(1, end);
  br = A(end, end);
  bl = A(end, 1);
end
