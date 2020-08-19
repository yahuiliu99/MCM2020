clc
clear
load fishgrid.mat
load seasup.mat
fliketemp=fishtempgrid(fishgrid9094,seasup9094);

function[temp]=fishtempgrid(fishgrid,seasupgrid)
    fmid=median(fishgrid(find(fishgrid~=0)));
    temp=seasupgrid(find(fishgrid>fmid));
end
    
