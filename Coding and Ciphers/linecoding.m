%line coding
clc;
clear all;
close all;
input1=input('enter no of input bits: ');
for i=1:input1
    a(i)=input('enter input bits: ');
end
sample=100;
output1=[];
sign=1;
for j=1:length(a)
    if a(j)==1
        c=sign*[ones(1,sample/2), -ones(1, sample/2)];
        sign=sign*(-1);
        
    else
        c=sign*[-ones(1,sample/2), ones(1, sample/2)];
        
        
    end
    output1=[output1, c];
end
plot(output1);
axis([0 ,sample*length(a), -2, 2]);
xlabel('No. of Samples');
ylabel('Amplitude');
title('Unipolar RZ');
grid on


        