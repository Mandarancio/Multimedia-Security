close all
clear all
pkg load image

l = imread('clena.jpg');
sl = size(l);
Ns  = sl(1)*sl(2)*sl(3);
imshow(l)
title('lena');0
figure
b = imread('cbaboon.jpg');
imshow(b)
title('baboon');
figure
ii = hide(l,b);

imshow(ii)
title('Stego image');
set(gca(), 'LooseInset', get(gca(), 'TightInset'));

figure
[c,s]= recover(ii);
imshow(uint8(s))
title('Secret image');
set(gca(), 'LooseInset', get(gca(), 'TightInset'));


sum(sum(sum(abs(int32(l)-int32(ii)))))/Ns
sum(sum(sum(abs(int32(l)-int32(c)))))/Ns