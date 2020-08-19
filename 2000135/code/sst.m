clc
clear
load seasup.mat
load fishgrid.mat

% seasup6064(find(~fishgrid0507))=0;
% seasup6064=seasup6064(end:-1:1,:);

% geodensityplot(sealat8084,sealon8084,temp8084,'FaceColor','interp');
% hold on
% geodensityplot(sealat7084,sealon7084,temp7084,'FaceColor','interp');


% latlim = ([51.6211 62.6074]);
% lonlim = ([-3.5889 13.1104]);
% 
% latgrid = 51.6:0.5:62.6;
% longrid = -3.1:1:13.1;


seasup0508(find(~fishgrid0507))=0;
seasup0508=seasup0508(end:-1:1,:);
R = georasterref('RasterSize', [23 16], ...
      'RasterInterpretation', 'cells', 'ColumnsStartFrom', 'north', ...
      'LatitudeLimits', [51.6 62.6], 'LongitudeLimits', [-3.1 12.1])
geoshow(seasup0508,R,'DisplayType', 'texturemap');
colormap('default')
colorbar
caxis([0 18])
xlabel('longitude');ylabel('latitude');

