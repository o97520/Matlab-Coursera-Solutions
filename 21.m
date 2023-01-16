function r = blur(img, w)
  [x y o] = size(img);
  z = zeros(x, y, o);
  img = double(img);

  for u = 1:3

      for i = 1:x

          for j = 1:y
              rx = i - w:i + w;
              ry = j - w:j + w;
              rxx = rx(rx > 0);
              rxx = rxx(rxx < x);
              ryy = ry(ry > 0);
              ryy = ryy(ryy < y);
              e = length(rxx) * length(ryy);
              c = img(rxx, ryy, u);
              d = sum(sum(c));
              f = fix(d / e);
              z(i, j, u) = f;
          end

      end

  end

  r = uint8(z);
end
