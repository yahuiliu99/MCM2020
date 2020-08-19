clc
clear
load sstpre.mat
load fisherygrid.mat
tempafter1=reshape(sstpre(:,11),23,16);
tempafter1=tempafter1(end:-1:1,:);
tempafter2=reshape(sstpre(:,12),23,16);
tempafter2=tempafter2(end:-1:1,:);
tempafter3=reshape(sstpre(:,13),23,16);
tempafter3=tempafter3(end:-1:1,:);
tempafter4=reshape(sstpre(:,14),23,16);
tempafter4=tempafter4(end:-1:1,:);
tempafter5=reshape(sstpre(:,15),23,16);
tempafter5=tempafter5(end:-1:1,:);
tempafter6=reshape(sstpre(:,16),23,16);
tempafter6=tempafter6(end:-1:1,:);
tempafter7=reshape(sstpre(:,17),23,16);
tempafter7=tempafter7(end:-1:1,:);
tempafter8=reshape(sstpre(:,18),23,16);
tempafter8=tempafter8(end:-1:1,:);
tempafter9=reshape(sstpre(:,19),23,16);
tempafter9=tempafter9(end:-1:1,:);
tempafter10=reshape(sstpre(:,20),23,16);
tempafter10=tempafter10(end:-1:1,:);
tempafter1(find(~fisherygrid))=0;
tempafter2(find(~fisherygrid))=0;
tempafter3(find(~fisherygrid))=0;
tempafter4(find(~fisherygrid))=0;
tempafter5(find(~fisherygrid))=0;
tempafter6(find(~fisherygrid))=0;
tempafter7(find(~fisherygrid))=0;
tempafter8(find(~fisherygrid))=0;
tempafter9(find(~fisherygrid))=0;
tempafter10(find(~fisherygrid))=0;
N=length(find(tempafter1));
np1=length(find(tempafter1(find(tempafter1))<11.2473));
np2=length(find(tempafter2(find(tempafter2))<11.2473));
np3=length(find(tempafter3(find(tempafter3))<11.2473));
np4=length(find(tempafter4(find(tempafter4))<11.2473));
np5=length(find(tempafter5(find(tempafter5))<11.2473));
np6=length(find(tempafter6(find(tempafter6))<11.2473));
np7=length(find(tempafter7(find(tempafter7))<11.2473));
np8=length(find(tempafter8(find(tempafter8))<11.2473));
np9=length(find(tempafter9(find(tempafter9))<11.2473));
np10=length(find(tempafter10(find(tempafter10))<11.2473));
Q1=np1/N;Q2=np2/N;Q3=np3/N;Q4=np4/N;Q5=np5/N;
Q6=np6/N;Q7=np7/N;Q8=np8/N;Q9=np9/N;Q10=np10/N;
x=5:5:50;
Q=[Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10];
QQ=smooth(Q(:));
plot(x,QQ);
xlabel('subsequent years');
ylabel('Q');
hold on
plot([5,16],[0.3,0.3],'r:');
hold on
plot([16,16],[0.18,0.3],'r:');
hold on
plot([5,48],[0.2,0.2],'r:');
hold on
plot([48,48],[0.18,0.2],'r:');

    