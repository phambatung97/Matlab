%Nhom 1
%53
%Pham Ba Tung
%B15DCDT221
I = imread('peppers.jpg');
Ihsv = rgb2gray(I);
Ir = zeros(size(I,1),size(I,2),3);

for i=1:size(I,1)
  for j=1:size(I,2)
      if( (I(i,j) > I(14,221) - 20) && I(i,j) < I(14,221)+20)
        Ir(i,j,:) = [255,255,255];
      end;
  end;
end;
Irf=uint8(Ir);
%Ik=double(I);
Iresult = bitand(Irf, I)
figure
subplot(2,2,1)
imshow(I)

subplot(2,2,2)
imshow(Iresult)

subplot(2,2,3)
imshow(Ir)

subplot(2,2,4)
imshow(Ihsv)