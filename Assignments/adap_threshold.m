function bw=adap_threshold(IM,ws,C,tm)
if (nargin<4)
    error('You must provide the image IM, the window size ws, and C.');
elseif (tm~=0 && tm~=1 && tm~=2 && tm~=3)
    error('tm must be 0 or 1 or 2 or 3 .');
end
IM=mat2gray(IM);
if (tm==0)
    %using mean filter
    mIM=imfilter(IM,fspecial('average',ws),'replicate');

elseif (tm==1 )
    %using median filter
    mIM=medfilt2(IM,[ws ws]);

elseif (tm==2)
    %using gaussian filter
    mIM=imgaussfilt (IM, 1.5);

elseif (tm==3)
    %using (max+min)/2 filter
    max_img = imdilate(IM, true(6));
    min_img = imerode(IM, true(6));
    mIM = (max_img + min_img)/2;
end

    sIM=mIM-IM-C;
    bw=im2bw(sIM,0);
    bw=imcomplement(bw);


end