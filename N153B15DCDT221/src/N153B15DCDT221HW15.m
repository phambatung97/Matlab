%Nhom 1
%53
%Pham Ba Tung
%B15DCDT221
I=[4 6;2 7];
%ma tran luong tu hoa
Q=[3 7;2 9];
n=size(I,1);
for i=1:n
  for j=1:n
    u=i-1;
    v=j-1;
    if (u==0)
      au=sqrt(1/n);
      else
      au=sqrt(2/n);
    end;
    if (v==0)
      av=sqrt(1/n);
      else
      av=sqrt(2/n);
    end;
    F(i,j)=sum(sum(I(i,j)*au*av*cos((2*i+1)*u*pi/(2*n))*cos((2*j+1)*v*pi/(2*n))));
  end;
end;
F
F1=round(F./Q)
