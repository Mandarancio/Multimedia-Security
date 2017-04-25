close all;
clear all;

pkg load image;


files = dir('dct_db');
hashes = cell();
for i=1:numel(files)
  fname = files(i).name
  if numel(fname)>2
    I =  imread(strcat('dct_db/',fname));
    hashes(end+1) = PerceptualHash(I)
  endif
endfor
%result = cell2mat(hashes,size(hashes));
save hashes.mat hashes;
