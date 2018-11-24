%Nhom 1
%53
%Pham Ba Tung
%B15DCDT221
I=imread('nen.jpg');  % Doc anh
subplot(1,3,1); %chia cua so ve do th? thanh 3 khong gian va ve dt vao vung 1
imshow(I); 

T=im2bw(I, 0.1); % chuyen hinh anh xam sang hinh nh? phan , tach nguong
subplot(1,3,2); 
imshow(T); % 