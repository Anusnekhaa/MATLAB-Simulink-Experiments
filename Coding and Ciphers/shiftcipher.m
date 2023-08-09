plaintext=input('Enter the message : ','s');
key=input('Enter key value:');
%% Encryption
plainASCII=abs(plaintext); % To convert to ASCII values
alphapos=mod(plainASCII,65); % To find the position of the character
cipher=alphapos+key;
ciphertext=mod(cipher,26)+65; % Character position to ASCII value
sprintf('Encrypted text : %s',char(ciphertext))
%% Decryption
decrypos=mod(ciphertext,65);
decrypt=decrypos-key;
decrypttext=mod(decrypt,26)+65;
sprintf('Decrypted text : %s',char(decrypttext))