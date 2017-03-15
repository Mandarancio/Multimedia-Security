function col_hist(component,color)
  [ch,~] = imhist(component);
  cc = [0 ch' 0];
  x = [0 0:255 255];
  f = fill(x,cc,color);
  set(f,'facealpha',0.5);
  xlim([0,255]);
endfunction
