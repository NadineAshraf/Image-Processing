function Coloured_Image = Colorizing_Image(Input_Image)
fullim = Input_Image;
fullim = im2double(fullim);
height = floor(size(fullim,1)/3);
width  = floor(size(fullim,2));
B = fullim(1:height,:);
G = fullim(height+1:height*2,:);
R = fullim(height*2+1:height*3,:);
R = double(R);
G = double(G);
B = double(B);

Check_Range = 30;
Margin = 35;


Fixed_Window_R        = R(Margin+1:height-Margin,Margin+1:width-Margin);
Coloured_Image        = zeros(height-2*Margin,width-2*Margin,3);
Coloured_Image(:,:,1) = R(Margin+1:height-Margin,Margin+1:width-Margin);


Distances_Matrx_B = zeros(2*Check_Range,2*Check_Range);
Moving_Window_B   = zeros(height-2*Margin,width-2*Margin);
for x=-Check_Range:Check_Range
    for y=-Check_Range:Check_Range
        Moving_Window_B(1:height-2*Margin,1:width-2*Margin) = B(Margin+1+x:height-Margin+x,Margin+1+y:width-Margin+y);
        Distances_Matrx_B(Check_Range+1+x,Check_Range+1+y)=sum(sum((Fixed_Window_R-Moving_Window_B).^2));
    end
end
[row_B,col_B] = find(Distances_Matrx_B == min(Distances_Matrx_B(:)));



Distances_Matrx_G = zeros(2*Check_Range,2*Check_Range);
Moving_Window_G   = zeros(height-2*Margin,width-2*Margin);
for x=-Check_Range:Check_Range
    for y=-Check_Range:Check_Range
        Moving_Window_G(1:height-2*Margin,1:width-2*Margin) = G(Margin+1+x:height-Margin+x,Margin+1+y:width-Margin+y);
        Distances_Matrx_G(Check_Range+1+x,Check_Range+1+y)=sum(sum((Fixed_Window_R-Moving_Window_G).^2));
    end
end
[row_G,col_G] = find(Distances_Matrx_G == min(Distances_Matrx_G(:)));


Coloured_Image(:,:,2) = G(Margin+1+row_G-Check_Range-1:height-Margin+row_G-Check_Range-1,Margin+1+col_G-Check_Range-1:width-Margin+col_G-Check_Range-1);
Coloured_Image(:,:,3) = B(Margin+1+row_B-Check_Range-1:height-Margin+row_B-Check_Range-1,Margin+1+col_B-Check_Range-1:width-Margin+col_B-Check_Range-1);
end
