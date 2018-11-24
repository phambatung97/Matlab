%Nhom 1
%53
%Pham Ba Tung
%B15DCDT221
I=imread('chuoi.jpg');
A=medfilt2(I,[3 3]); %loc trung vi
figure,imshow(A);
B=edge(A,'canny',0.08);
figure;
imshow(B)

  