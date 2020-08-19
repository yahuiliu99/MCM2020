load fish0507.mat;
fishgrid(lat0507,lon0507);
function[fishnum]= fishgrid(lat,lon)
    latgrid=51.6:0.5:62.6;
    longrid=-3.1:1:12.1;
    fishnum=zeros(length(latgrid),length(longrid));
    for i=1:length(lat)
        for la=1:length(latgrid)-1
            if (latgrid(la)<lat(i)&&lat(i)<latgrid(la+1))
                for lo=1:length(longrid)-1
                    if (longrid(lo)<lon(i)&&lon(i)<longrid(lo+1))                     
                        fishnum(la,lo)=fishnum(la,lo)+1;
                    end
                end                    
            end       
        end
    end
end
