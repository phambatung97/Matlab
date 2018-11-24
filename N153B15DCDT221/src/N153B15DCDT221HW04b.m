%Nhom 1
%53
%Pham Ba Tung
%B15DCDT221
I=imread('image/c.jpg');
I1=rgb2gray(I);
figure; imshow(I1)
[n m] = size(I1);
for i=1:n
  for j=1:m
    I1(i,j)=floor(I1(i,j)/128)*128;
  endfor
endfor
figure; imshow(I1)