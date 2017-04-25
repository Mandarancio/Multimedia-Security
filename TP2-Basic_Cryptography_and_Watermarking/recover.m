function [c,s]=  recover(i)
  c = zeros(size(i));
  s = zeros(size(i));
  ir = i(:,:,1);
  ig = i(:,:,2);
  ib = i(:,:,3);
  c(:,:,1) = bitand(ir, 248);
  c(:,:,2) = bitand(ig, 252);
  c(:,:,3) = bitand(ib, 224);
  s(:,:,1) = bitshift(ir,5);
  s(:,:,2) = bitand(bitshift(ib,3),224);
  s(:,:,3) = bitor(bitshift(ig,6),bitand(bitshift(ib,3),63));
  s = uint8(s);
  c = uint8(c);
end