function [i]=  hide(c,s)
  i = c;
  cr = c(:,:,1);
  sr = s(:,:,1);
  cb = c(:,:,3);
  sb = s(:,:,3);
  cg = c(:,:,2);
  sg = s(:,:,2);
  
  i(:,:,1) = bitor(bitand(cr,255-7),bitshift(sr,-5));
  i(:,:,2) = bitor(bitand(cg,255-3),bitshift(sb,-6));
  i(:,:,3) = bitor(bitand(cb,255-31),bitshift(sg,-3));
  i(:,:,3) = bitor(i(:,:,3),bitand(bitshift(sb,-4),3));
end