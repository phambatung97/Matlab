%Nhom 1
%53
%Pham Ba Tung
%B15DCDT221
X=imread('cay.jpg');
I=rgb2gray(X);
[m,n]=size(I);
i=input('Nhap i:');
j=input('Nhap j:');

Gx=I(i-1,j-1)*(-1)+I(i,j-1)*(-2)+I(i+1,j-1)*(-1)+I(i-1,j+1)+I(i,j+1)*2+I(i+1,j+1);
Gy=I(i-1,j-1)*(-1)+I(i-1,j)*(-2)+I(i-1,j+1)*(-1)+I(i+1,j-1)+I(i+1,j)*2+I(i+1,j+1);
Gx1=double(Gx);
Gy1=double(Gy);
G=sqrt((Gx1*Gx1)+(Gy1*Gy1));
K=atan(Gy1/Gx1);

fprintf('Module Gradient voi Sobel Operator tai I(%d,%d) la : %d', i, j, G);
fprintf('\nGoc pha Gradient voi Sobel Operator tai I(%d,%d) la : %d\n', i, j, K);

Hx=I(i-1,j-1)*(-1)+I(i,j-1)*(-1)+I(i+1,j-1)*(-1)+I(i-1,j+1)+I(i,j+1)*1+I(i+1,j+1);
Hy=I(i-1,j-1)*(-1)+I(i-1,j)*(-1)+I(i-1,j+1)*(-1)+I(i+1,j-1)+I(i+1,j)*1+I(i+1,j+1);
Hx1=double(Hx);
Hy1=double(Hy);
H=sqrt((Hx1*Hx1)+(Hy1*Hy1));
L=atan(Hy1/Hx1);

fprintf('Module Gradient voi Prewitt Operator tai I(%d,%d) la : %d', i, j, H);
fprintf('\nGoc pha Gradient voi Prewitt Operator tai I(%d,%d) la : %d\n', i, j, L);

