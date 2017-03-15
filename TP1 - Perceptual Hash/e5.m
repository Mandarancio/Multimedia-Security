close all;
clear all;

pkg load image;

errors = []
files = dir('dct_db');
noise = RPSNR(35);
for i=1:numel(files)
  fname = files(i).name;
  if numel(fname)>2
    I =  imread(strcat('dct_db/',fname));
    x1 = PerceptualHash(I);
    if (numel(size(I)) == 3)
      i = rgb2gray(I);
      i = AWGNI(i,noise);
    else
      i = AWGNI(I,noise);
    endif
    x2 = PerceptualHash(i);
    errors(end+1) =ErrorProbability(x1,x2);
  endif
endfor

hist(errors,3,1);