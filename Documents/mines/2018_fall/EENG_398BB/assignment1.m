clear all; 
close all
x=linspace(-2,2,40);  
y=linspace(-3,3,60);
[X,Y]=meshgrid(x,y);  
[Th,R]=cart2pol(X,Y);
z=cos(Th).^2*exp(-j;
zamp=abs(z); 
zphase=angle(z)*180/pi; 
zreal=real(z); zimag=imag(z);
% 3D figures
h1=figure; mesh(zamp)      
% without x or y axes
h2=figure; mesh(x,y,zamp)  
% with x and y axes
h3=figure; mesh(x,y,zphase)
h4=figure; contour(x,y,zreal); title ('Real part')
h5=figure; surf(x,y,zimag);title (' Imaginary part' )
% 2D figures
zampx = zamp(21,:); ampx = zampx';
zampy = zamp(:,11); ampy = zampy';
h6=figure; plot (x,ampx); 
h7=figure; plot (y,ampy); 
title('Pattern Parallel to Y axis');
xlabel('Y values');
ylabel('Amplitude');
print -djpeg90fig2.jpg