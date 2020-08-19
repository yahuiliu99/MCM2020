clear
load seasup.mat
%刨去第17列,刨去1214sst
seasuptrix=zeros(368,10);
seasuptrix(:,1)=seasup6064(:);
seasuptrix(:,2)=seasup6569(:);
seasuptrix(:,3)=seasup7074(:);
seasuptrix(:,4)=seasup7579(:);
seasuptrix(:,5)=seasup8084(:);
seasuptrix(:,6)=seasup8589(:);
seasuptrix(:,7)=seasup9094(:);
seasuptrix(:,8)=seasup9599(:);
seasuptrix(:,9)=seasup0004(:);
seasuptrix(:,10)=seasup0508(:);

