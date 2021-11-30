function thresh=globalthreshold(img,T,T0)

%Threshold an image using global thresholding

%T is the initial threshold guess

%When successive values of T become less than T0

%  the algorithm finishes



s=size(img);

numelem=s(1)*s(2);

imgfl=double(img);

Tlast=-T0;

while abs(T-Tlast)>T0

   tmp=imgfl>T;

   zeros1=sum(tmp(:));

   zeros2=numelem-zeros1;

   G1=tmp.*imgfl;

   G2=(~tmp).*imgfl;

   mu1=sum(G1(:))/zeros1;

   mu2=sum(G2(:))/zeros2;

   Tlast=T;

   T=1/2*(mu1+mu2)

end

thresh=T;

   