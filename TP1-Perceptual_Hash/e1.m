
clear all;
close all;

graphics_toolkit ('gnuplot')



pkg load image;

I = imread("peppers.png");
implot(I);

r = I(:,:,1);
g = I(:,:,2);
b = I(:,:,3);

figure;
colorHist(b,'blue');
hold on;
colorHist(g,'green');
colorHist(r,'red');
legend("blue","green","red");
title ('Color Histogram');
xlabel('intensity');
ylabel('occurnecy');

gray = rgb2gray(I);#r/3+g/3+b/3;
figure;
implot(gray);
figure();
colorHist(gray,'black');
title ('Luminosity Histogram');
xlabel('intensity');
ylabel('occurnecy');
# print("Mean: ")
mean = mean2(mean(gray))
# print("STD: ")
variance = std2(gray)^2
fun = @mean2;
localN = uint8(blockproc(gray,[5,5],fun));
figure;
implot(localN)
fun = @(x) std2(x)^2;
localN = uint8(blockproc(gray,[5,5],fun));
figure;
implot(localN)

