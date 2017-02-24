function [ hybrimage ] = Serna_Torres_Hybrid( image1, image2, tipo)
%Gauss Aplica un filtro gaussiano para eliminar las frecuencias no
%deseadas de la imagen
%Rect Aplica un filtro gaussiano para eliminar las frecuencias no
%deseadas de la imagen
%La imágenes input deben tener las mismas dimensiones
function [ choice ] = Sigma

    d = dialog('Position',[300 300 260 150],'Name','Filtro Gaussiano');
    StrValue= ' ';
    txt = uicontrol('Parent',d,...
           'Style','text',...
           'Position',[20 80 215 40],...
           'String','Ingrese la desviación estándar:');
       
    edit = uicontrol('Parent',d,...
           'Style','edit',...
           'Position',[75 70 105 25],...
           'String',' ', 'Callback',@value);
 

    btn = uicontrol('Parent',d,...
           'Position',[89 20 75 25],...
           'String','Aceptar',...
           'Callback','delete(gcf)');
        choice = 0;
    uiwait(d)
    function value(edit,event)
          StrValue = edit.String;
          choice = str2double(StrValue);
       end
   
end %dialogbox

if nargin < 3
    tipo = 'gauss';
end

%Se usa fft2 para llevar las dos dimesiones de las imagenes al espacio de
%frecuencias, fftshift pasa los componentes sin frecuencia al centro del
%espectro.
imfrec1 = fftshift(fft2(double(image1)));
imfrec2 = fftshift(fft2(double(image2)));

%Definición de las máscaras a usar como filtro
if strcmp(tipo, 'rect')
    maskh = ones(size(image1, 1), size(image1, 2)); %Se crea una matriz de unos del tamaño de la las imagenes
    maskh(round(6*size(image1, 1)/15):round(8*size(image1, 1)/15), round(6*size(image1, 2)/15):round(8*size(image1, 2)/15)) = 0; %Se definen la región del filtro rectangular highpas
    maskl = imcomplement(maskh); %Se crea la máscara lowpass
elseif strcmp(tipo, 'gauss')
    sigm = Sigma; %Desviación estandar de la gaussiana
    [m n z] = size(image1);
    maskl = fspecial('gaussian', [m n], sigm); %Máscara lowpass
    maskl = maskl./max(max(maskl));
    maskh = 1 - maskl; %Máscara highpass
end

%Imágenes a color
if size(image1,3) == 3
    for rgb = 1:3
        D(:, :, rgb) = imfrec1(:, :, rgb).*maskh + imfrec2(:, :, rgb).*maskl; %Se aplica el filtrado en cada dimensión de color
    end
elseif size(image1,3) < 3
    D = imfrec1.*maskh + imfrec2.*maskl; %Se aplica el filtrado en 2D
end

hybrimage = uint8(real(ifft2(ifftshift(D))));%Se realiza la transformación inversa para poder visualizar los cambios.

end

