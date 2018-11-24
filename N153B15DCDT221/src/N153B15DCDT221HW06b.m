%Nhom 1
%53
%Pham Ba Tung
%B15DCDT221
X=imread('dao.jpg');
Z=rgb2gray(X);
I=imnoise(Z,'salt & pepper');
figure;
imshow(I)
[m,n]= size(I);
for i=2:m-1
    for j=2:n-1
      a = [I(i,j) I(i,j-1) I(i,j+1) I(i-1,j) I(i-1,j-1) I(i-1,j+1) I(i+1,j) I(i+1,j-1) I(i+1,j+1)];
      a = sort([a]);
      I1(i,j)=uint8(a(5));
    end;
end;
figure, imshow(I1)