%Nhom 1
%53
%Pham Ba Tung
%B15DCDT221
I=imread('dongho.jpg');

%trung binh
I1=uint8(sum(I)/size(I,1)/size(I,2));
disp('trung binh');
SNR_1=(sum(sum(I1.^2)))/(sum(sum(I-I1).^2))
MSE_1=(sum(sum(I-I1).^2))/size(I,1)/size(I,2)
%trung vi
disp('trung vi');
I2=median(I);
SNR_2=(sum(sum(I2.^2)))/(sum(sum(I-I2).^2))
MSE_2=(sum(sum(I-I2).^2))/size(I,1)/size(I,2)

