clc
clear
load fish8084.mat;
load fish8589.mat;
load fish9094.mat;
load fish9599.mat;
load fish0004.mat;
load fish0507.mat;
figure(1);
geodensityplot(lat8084,lon8084,'FaceColor','interp')
geobasemap grayland
figure(2);
geodensityplot(lat8589,lon8589,'FaceColor','interp')
geobasemap grayland
figure(3);
geodensityplot(lat9094,lon9094,'FaceColor','interp')
geobasemap grayland
figure(4);
geodensityplot(lat9599,lon9599,'FaceColor','interp')
geobasemap grayland
figure(5);
geodensityplot(lat0004,lon0004,'FaceColor','interp')
geobasemap grayland
figure(6);
geodensityplot(lat0507,lon0507,'FaceColor','interp')
geobasemap grayland