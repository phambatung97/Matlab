%Nhom 1
%53
%Pham Ba Tung
%B15DCDT221
I=imread('chuoi.jpg');
I=im2bw(I);
%I=ones(8,8)
imshow(I)
%I=[0 1 0 ;1 1 1 ;0 1 0]
[m,n]=size(I);
%co anh
I1=I;
for i=2:m-1
  for j=2:n-1
    if (I(i,j)==0)
      if (I(i-1,j)==1||I(i,j-1)==1||I(i,j+1)==1||I(i+1,j)==1)
        I1(i,j)=1;
      end;
    end;
    if(i==m||j==n||i==1||j==1) 
      I1(i,j)=1;
    end;    
  end;
end;
figure;
title('co anh');
imshow(I1)

A=medfilt2(I1);
figure;
imshow(A);
B=edge(A,'canny',0.08);
figure;
imshow(B); 