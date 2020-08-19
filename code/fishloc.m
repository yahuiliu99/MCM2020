clc
clear
% load fliketemp.mat
% load futuretemp.mat
% load fishgrid.mat
% ffavotemp=median(fliketemp,'all');
% futempgrid=reshape(futuretemp,23,16);
% fishcoe=ffavotemp./futempgrid;
% fishcoe(find(~fishgrid0507))=0;
% fishcoe=fishcoe(end:-1:1,:);
% fishcoe=fishcoe.*100;

load finalloc.mat
R = georasterref('RasterSize', [23 16], ...
      'RasterInterpretation', 'cells', 'ColumnsStartFrom', 'north', ...
      'LatitudeLimits', [51.6 62.6], 'LongitudeLimits', [-3.1 12.1])
geoshow(finalloc,R,'DisplayType', 'texturemap');
colormap('summer')
colorbar
caxis([0 150])
xlabel('longitude');ylabel('latitude');

% figure(1)
%geodensityplot(trlat,trlon);
%geobasemap grayland



