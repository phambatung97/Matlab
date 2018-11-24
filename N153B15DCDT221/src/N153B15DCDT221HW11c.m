%Nhom 1
%53
%Pham Ba Tung
%B15DCDT221
I=imread('chuoi.jpg'); 
%imshow(I);
level = graythresh(I); % tach nguong tu dong (thuat toan OTSU) 
It = im2bw(I, level);  % tach nguong anh
imshow(It);  
         