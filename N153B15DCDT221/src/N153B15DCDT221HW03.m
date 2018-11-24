%Nhom 1
%53
%Pham Ba Tung
%B15DCDT221
I0=imread('chuoi.jpg');
size(I0)
subplot(2,2,1 )
imshow(I0)
I=rgb2gray(I0);
I1=im2bw(I0);
subplot(2,2,2)
imshow(I)
subplot(2,2,3)
imshow(I1)
[n m] = size(I);
T = 128;
for i=1:n
  for j=1:m
    if I(i,j) < T
      I(i,j) = 0;
      if j<m
        I(i,j+1) = I(i,j);
      end
    else
      e = 255 - I(i,j);
      I(i,j) = 255;
      if j<m 
        I(i,j+1) = e;
      end
      end    
    end
end
subplot(2,2,4)
imshow(I)

