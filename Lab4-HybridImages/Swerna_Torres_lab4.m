%laboraory 4: Hybrid images 

%% Par 1 - mom/daugther 
clear all, clc 
ima = imread('IMG_9265.JPG');
imb = imread('IMG_9266.JPG');

%% Hybrid image creation 
imc= Serna_Torres_Hybrid(imb,ima,'gauss');
%% Gaussian pyramid 

I1 = impyramid(imc,'reduce');
I2 = impyramid(I1, 'reduce');
I3 = impyramid(I2, 'reduce');
I4 = impyramid(I3, 'reduce');
I5 = impyramid(I4, 'reduce');


 figure, imshow(imc)
 figure, imshow(I1)
 figure, imshow(I2)
 figure, imshow(I3)

%% Par 3 - eyes 
ima = imread('IMG_9289.JPG');
imb = imread('IMG_9295.JPG');

%% Hybrid image creation 
imc= Serna_Torres_Hybrid(imb,ima,'rect');
%% Gaussian pyramid 

I1 = impyramid(imc,'reduce');
I2 = impyramid(I1, 'reduce');
I3 = impyramid(I2, 'reduce');
I4 = impyramid(I3, 'reduce');
I5 = impyramid(I4, 'reduce');


 figure, imshow(imc)
 figure, imshow(I1)
 figure, imshow(I2)
 figure, imshow(I3)


%% Par 2 - dad/son 
ima = imread('IMG_9279.JPG');
imb = imread('IMG_9278.JPG');

%% Hybrid image creation 
imc= Serna_Torres_Hybrid(ima,imb,'gauss');
%% Gaussian pyramid 

I1 = impyramid(imc,'reduce');
I2 = impyramid(I1, 'reduce');
I3 = impyramid(I2, 'reduce');
I4 = impyramid(I3, 'reduce');
I5 = impyramid(I4, 'reduce');


 figure, imshow(imc)
 figure, imshow(I1)
 figure, imshow(I2)
 figure, imshow(I3)






%% Par 4 - jaime/mj
clear all, clc
ima = imread('jai2.jpg');
imb = imread('jai.jpg');
%% resize 
imb=imresize(imb,[1280 720]);

%% Hybrid image creation 
imc= Serna_Torres_Hybrid(ima,imb,'gauss');
%% Gaussian pyramid 

I1 = impyramid(imc,'reduce');
I2 = impyramid(I1, 'reduce');
I3 = impyramid(I2, 'reduce');
I4 = impyramid(I3, 'reduce');
I5 = impyramid(I4, 'reduce');


 figure, imshow(imc)
 figure, imshow(I1)
 figure, imshow(I2)
 figure, imshow(I3)
 figure, imshow(I4)
 figure, imshow(I5)
