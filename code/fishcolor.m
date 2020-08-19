clc
clear
load fishgrid.mat

fishgrid9094=fishgrid9094(end:-1:1,:);
R = georasterref('RasterSize', [23 16], ...
      'RasterInterpretation', 'cells', 'ColumnsStartFrom', 'north', ...
      'LatitudeLimits', [51.6 62.6], 'LongitudeLimits', [-3.1 12.1])
geoshow(fishgrid9094,R,'DisplayType', 'texturemap');
colormap('summer')
colorbar
caxis([0 380])
xlabel('longitude');ylabel('latitude');