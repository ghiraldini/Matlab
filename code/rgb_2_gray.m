% RGB to Grayscale
cd 'C:\picture';
I = imread('car.jpg');
J = .3*I(:,:,1) + .5*I(:,:,2) + .2*I(:,:,3);
subplot(1,2,1), imshow(I);
subplot(1,2,2), imshow(J);