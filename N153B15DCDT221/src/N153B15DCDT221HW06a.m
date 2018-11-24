%Nhom 1
%53
%Pham Ba Tung
%B15DCDT221
X=imread('dao.jpg');
Y=rgb2gray(X);
I=imnoise(Y,'Gaussian');


I = double(I);
[m,n] = size(I);
I1=I;
for i=3:(m-3)
  for j=3:(n-3)
    I1(i,j)=round((I(i+1,j+1)+I(i+1,j)+I(i+1,j-1)+I(i,j+1)+I(i,j)+I(i,j-1)+I(i-1,j+1)+I(i-1,j)+I(i-1,j-1))/9);
    
  end;
end;
I1 = uint8(I1);
figure
imshow(I1)

