clc
clear
% load tempafter1.mat
% R = georasterref('RasterSize', [23 16], ...
%       'RasterInterpretation', 'cells', 'ColumnsStartFrom', 'north', ...
%       'LatitudeLimits', [51.6 62.6], 'LongitudeLimits', [-3.1 12.1])
% geoshow(tempafter1,R,'DisplayType', 'texturemap');
% colormap('summer')
% colorbar
% caxis([0 20])
% xlabel('longitude');ylabel('latitude');
lat=[58.5 58 57.5 56.5 55.75 55 54.5 54 53.5 53 52.5 52 51.5];
lon=[-3 -4 -2 -2.8 -2 -1.5 -1 0 0 0 1.8 1.2 0.5];
geobubble(lat,lon);
geobasemap grayland

