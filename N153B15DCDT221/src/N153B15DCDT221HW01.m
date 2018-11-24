%Nhom 1
%53
%Pham Ba Tung
%B15DCDT221
Xmin=0;Xmax = 10
Ymin =0;Ymax = 10 
detalX = 1 
detalY = 1 
i = Xmin
while i <= Xmax
    i = detalX;
    j = Ymin;
    while j <= Ymax
        j = detalY;
        fprintf("6.1f"  ,(i^2 + j^2) )
    end;
  fprintf("\n");
end;
