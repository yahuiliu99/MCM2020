clear
load sea1214.mat;
seagrid(sealat1214,sealon1214,temp1214);
function[avgtempgrid]= seagrid(sealat,sealon,temp)
    latgrid=51.6:0.5:62.6;%23
    longrid=-3.1:1:13.1;%17
    tempgrid=zeros(length(latgrid),length(longrid));
    count=zeros(length(latgrid),length(longrid));
    for i=1:length(sealat)
        for la=1:length(latgrid)-1
            if (latgrid(la)<sealat(i)&&sealat(i)<latgrid(la+1))
                for lo=1:length(longrid)-1
                    if (longrid(lo)<sealon(i)&&sealon(i)<longrid(lo+1))
                        tempgrid(la,lo)=tempgrid(la,lo)+temp(i);
                        count(la,lo)=count(la,lo)+1;
                    end
                end                    
            end       
        end
    end
    avgtempgrid=tempgrid./count;
end

    





