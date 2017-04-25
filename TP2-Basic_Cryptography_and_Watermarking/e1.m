pkg load image
close all
function [pi, pv] = perm(i,N)
  pv = randperm(N);
  pi = zeros(1,N);
  pi(pv) = i;
endfunction

function [ii] = iperm(i,p)
  ii = zeros(size(p));
  ii = i(p);
endfunction

function [n] = intNoise(int,size)
  n = randi(int*2+1,size)-int;
endfunction


%e1
i = imread('Cameraman.bmp');
s_i = size(i);
N_i = prod(s_i);
imshow(i);
vi = reshape(i, [1,N_i]);
[pi, pv] = perm(vi,N_i);
title('Cameraman');
figure
Pi = uint8(reshape(pi,s_i));
imshow(Pi)
title('Shuffle Cameraman');
figure
imhist(vi)
title('Cameraman histogram');
figure
imhist(uint8(pi))
title('Shuffle Cameraman histogram');

%e3
figure
imshow(uint8(BlockLoss(i,100,30)))
set(gca(), 'LooseInset', get(gca(), 'TightInset'));

figure
Pi_l = uint8(BlockLoss(Pi,100,30));
imshow(Pi_l)
set(gca(), 'LooseInset', get(gca(), 'TightInset'));
%print suffle_loss.png

figure
Pi_lr = uint8(reshape(iperm(reshape(Pi_l,[1,N_i]),pv),s_i));
imshow(Pi_lr)
set(gca(), 'LooseInset', get(gca(), 'TightInset'));
%print recons_loss.png

%e4
psnr = [];

for j=[1,5,10,15] 
  n = intNoise(j,s_i);
  iD = uint8(int32(i)+n);
  figure
  imshow(iD)
  title(strcat('Cameraman Noise: ',num2str(j)));
  set(gca(), 'LooseInset', get(gca(), 'TightInset'));
  figure
  imhist(iD)
  title(strcat('Histogram Noise: ',num2str(j)));
  set(gca(), 'LooseInset', get(gca(), 'TightInset'));
  psnr(end+1) = PSNR(iD,i);
endfor
figure
plot([1,5,10,15],psnr);
xlim([1,15]);
xlabel("Noise intensity");
ylabel("PSNR");
set(gca(), 'LooseInset', get(gca(), 'TightInset'));