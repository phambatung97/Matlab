%Nhom 1
%53
%Pham Ba Tung
%B15DCDT221
I = imread('cay.jpg');
% J = imnoise(I,'salt & pepper',0.02);
% A=ones([3 3]);
% B=edge(I,'sobel',0.04);
B=medfilt2(I,[3 3]);
figure,imshow(B);
% figure;
% imshow(B);
I1=I-B;
figure; 
imshow(I1);
I2=I+I1;
figure; 
imshow(I2);