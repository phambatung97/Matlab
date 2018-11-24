%Nhom 1
%53
%Pham Ba Tung
%B15DCDT221
I=imread('kinh.jpg');
I1=rgb2gray(I);
[m,n]= size(I1);
k = sum(sum(I1))/(m*n);
s = sum(sum(I1-k).^2)/(m*n);
fprintf('\n Ky vong cua anh: %d',k);
fprintf('\nPhuong sai cua anh: %d \n',s);
