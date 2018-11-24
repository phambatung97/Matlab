%Nhom 1
%53
%Pham Ba Tung
%B15DCDT221
X = imread('c.jpg');
I = rgb2gray(X);
[m,n] = size(I);
ni(1:256) = 0;
for i=1:m
    for j = 1:n
      ni(I(i,j)+1) = ni(I(i,j)+1)+1;
    end;
end;
s_ni(1:256) = 0;
s_ni(1) = ni(1);
for i=2:256
    s_ni(i) = ni(i)+s_ni(i-1);
end;
S = m*n;
c = 255/S;
s_ni = round(s_ni*c);
I1 = I;
for i=1:m
    for j=1:n
     I1(i,j) = s_ni(I(i,j)+1);
    end;
end;
figure;
imshow(I)
figure;
imshow(I1)