Am=input('Enter amplitude of message:');
fm=input('Enter frequency of message:');
t=0:0.001:10;
x1=Am*cos(2*pi*fm*t);
subplot(4,1,1);
plot(t,x1);
Ac=input('Enter amplitude of carrier:');
fc=input('Enter frequency of carrier:');
x2=Ac*cos(2*pi*fc*t);
subplot(4,1,2);
plot(t,x2);
m=Am/Ac;
y=(Ac+(m*x1)).*cos(2*pi*fc*t);
subplot(4,1,3);
plot(t,y);
fs=1/0.001;
N=length(t);
y=fft(y,N);
z=y(1:(floor(N/2)+1));
k=0:(floor(N/2));
subplot(4,1,4);
plot(k,abs(z));

figure(2);
subplot(4,1,1);
y1=x1.*x2;
plot(t,y1);

