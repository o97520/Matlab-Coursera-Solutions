
function fare = fare(d, wt)
  d = ceil(d);
  wt = ceil(wt);
  k = ceil(d - 1);
  fare = 5 + 2 * k + 0.25 * wt;
end
