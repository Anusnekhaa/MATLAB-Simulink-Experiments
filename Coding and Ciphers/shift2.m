N=5; % Key (5x5)
cipher_txt = "yzektacgthatemnniost";

NN=N*N; % Number of characters in a block
D=length(cipher_txt);
% Find the number Letters to pad in a block
if mod(D,NN)== 0
pad=0;
else
pad=NN-mod(D,NN);
end
for i=1:pad
cipher_txt=[cipher_txt 'Z'];
end

Decipher_txt=[];
cipher_txtBlock =reshape(cipher_txt,5,[]);
for i=1:1:length(cipher_txt)/NN
ff=cipher_txtBlock(((i*N)-(N-1)):i*N,1:N);
ffwithkey = ff(1:5, [3 1 4 5 2]);
Decipher_txt=[Decipher_txt reshape(ffwithkey',1,[])]; % reading character column by column
end
fprintf('Decrypted text : %s\n',Decipher_txt)
