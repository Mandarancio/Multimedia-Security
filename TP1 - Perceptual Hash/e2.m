close all;
clear all;


function X=AWGNI(I,sigma=50)
  n= normrnd(0,sigma,size(I));
  X= uint8(double(I)+n);
endfunction

function X=SPNI(I,p=0.005,q=0.005)
  n = rand(size(I));
  X = I;
  X(find(n<=p))=uint8(0);
  X(find(n>p & n<=p+q))=uint8(255);
endfunction

function e=MSE(x,y)
  r = size(x);
  R = r(1)*r(2);
  e = sum(sum(power(double(x)-double(y),2)))/R;
endfunction

function psnr = PSNR(x,y)
  psnr=  10*log10(255^2/MSE(x,y));
endfunction

function sigma = RPSNR(db)
  sigma=1/(10^(db/10)/255^2);
endfunction

pkg load image;
graphics_toolkit ('gnuplot')


I = imread("peppers.png");
I = rgb2gray(I);#r/3+g/3+b/3;
i=AWGNI(I);
implot(i);
i= SPNI(I);
figure()
implot(i)
psnr_SP = PSNR(i,I)

for psnr=[10,20,30,40] 
  s = sqrt(RPSNR(psnr))
  i = AWGNI(I,s);
  mse = MSE(I,i)
  psnr = PSNR(I,i)
  figure()
  implot(i);
  figure()
  colorHist(i,'black')
endfor

