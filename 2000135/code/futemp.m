clc
clear
% load futuretemp.mat
% load finalloc.mat
% futempgrid=reshape(futuretemp,23,16);
% futempgrid=futempgrid(end:-1:1,:);
% futempgrid(find(~finalloc))=0;

load futempgrid.mat
R = georasterref('RasterSize', [23 16], ...
      'RasterInterpretation', 'cells', 'ColumnsStartFrom', 'north', ...
      'LatitudeLimits', [51.6 62.6], 'LongitudeLimits', [-3.1 12.1])
geoshow(futempgrid,R,'DisplayType', 'texturemap');
colormap('default')
colorbar
caxis([0 22])
xlabel('longitude');ylabel('latitude');

