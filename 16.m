function a = freezing(v)
  b = v(v < 32);
  a = length(b);
end
