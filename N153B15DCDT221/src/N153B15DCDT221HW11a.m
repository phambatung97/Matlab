%Nhom 1
%53
%Pham Ba Tung
%B15DCDT221
I=imread('kinh.jpg'); 
Im=imfilter(I,fspecial('average',[15 15]),'replicate'); % Loch trung binh kich co [15:15]
It = I - (Im + 15); %tru hinh anh trung binh (+ hang so C = 15)
Ibw=im2bw(It,0);    % ket qua nguong tai 0 (chi giu lai ket qua)
subplot(1,2,1), imshow(I); 
subplot(1,2,2), imshow(Ibw); 