%--------------------------------------------------------------------------------------------------%
function [Aligned_SSD_Image,B_SH, R_SH] = Align_SSD(Input_Image)
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
tocrop = floor([0.2*width, 0.2*height, 0.6*width, 0.6*height]);
B_crop = imcrop(B, tocrop);
G_crop = imcrop(G,tocrop);
R_crop = imcrop(R,tocrop);
SHISTS = zeros(2,2);
SHISTS(1,:) = ssd(B_crop, G_crop);
SHISTS(2,:) = ssd(R_crop, G_crop);
B_SHIST = imtranslate(B, [SHISTS(1,2), SHISTS(1,1)]);
R_SHIST = imtranslate(R, [SHISTS(2,2), SHISTS(2,1)]);
B_SH = SHISTS(1,:);
R_SH = SHISTS(2,:);
Aligned_SSD_Image = cat(3, R_SHIST, G, B_SHIST);
Aligned_SSD_Image = Aligned_SSD_Image(0.1*height:0.9*height,0.1*width:0.9*width,:);

end
%--------------------------------------------------------------------------------------------------%
function SHIST = ssd(I_1, I_2)
Max_SSD = inf;
Window = 15;
for y = -Window:Window
    for x = -Window:Window
        Moved = circshift(I_1, [x y]);       
        SSD_VALUE = sum(sum((Moved - I_2).^2));                
        if SSD_VALUE < Max_SSD
            Max_SSD = SSD_VALUE;
            SHIST = [x y];
        end
    end
end
end
%--------------------------------------------------------------------------------------------------%
