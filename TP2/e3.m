close all
clear all
pkg load image

l = imread('clena.jpg');
sl = size(l);
Ns  = sl(1)*sl(2)*sl(3);
imshow(l)
figure
b = imread('cbaboon.jpg');
imshow(b)
figure
ii = hide(l,b);
imshow(ii)
figure
[c,s]= recover(ii);
imshow(s)

sum(sum(sum(abs(int32(l)-int32(ii)))))/Ns
sum(sum(sum(abs(int32(l)-int32(c)))))/Ns