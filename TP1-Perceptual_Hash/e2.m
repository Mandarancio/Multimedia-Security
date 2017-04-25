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

dI = im2double(I);
implot(dI)
figure()
u2dError = MSE(I,dI)

i=AWGNI(I);
psnr_GN = PSNR(i,I)
implot(i);
title(strcat(strcat('Gaussian Noise, PSNR: ',num2str(psnr_GN,'%5.2f')),' db'))
print('peppers_gn.png');
i= SPNI(I);
figure()
implot(i)

psnr_SP = PSNR(i,I)

title(strcat(strcat('Salt & Pepper Noise, PSNR: ',num2str(psnr_SP,'%5.2f')),' db'))
print('peppers_spn.png');


for psnr=[10,20,30,40] 
  s = sqrt(RPSNR(psnr));
  i = AWGNI(I,s);
  mse = MSE(I,i)
  psnr = PSNR(I,i)
  t = strcat(num2str(psnr,'%5.0f'),'.png');
  
  figure()
  implot(i);
  title(strcat(strcat('PSNR: ',num2str(psnr,'%5.0f')),' db'));
  print(strcat('imgs/peppers_gn_',t));
  figure()
  colorHist(i,'black')
  title(strcat(strcat('Luminosity histogram, PSNR: ',num2str(psnr,'%5.0f')),' db'))
  xlabel('luminosity')
  ylabel('occurency')
  print(strcat('imgs/histo_gn_',t));
endfor
figure();

i= SPNI(I,0.0002,0.0002);
psnr_SP = PSNR(i,I)
implot(i)
title(strcat(strcat('Salt & Pepper Noise, PSNR: ',num2str(psnr_SP,'%5.2f')),' db'))
print('peppers_spn_40.png');
#print('peppers_spn.png');