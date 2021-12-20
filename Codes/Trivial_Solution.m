function Coloured_Image = Trivial_Solution(Input_Image)
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
Coloured_Image(:,:,1) = R;
Coloured_Image(:,:,2) = G;
Coloured_Image(:,:,3) = B;
end
