text1 = upper(input('Please Enter text to convert to Morse code: \n', 's'));

morse_dict = containers.Map(...
    { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', ' ' }, ...
    { '.-', '-...', '-.-.', '-..', '.', '..-.', '--.', '....', '..', '.---', '-.-', '.-..', '--', '-.', '---', '.--.', '--.-', '.-.', '...', '-', '..-', '...-', '.--', '-..-', '-.--', '--..', '-----', '.----', '..---', '...--', '....-', '.....', '-....', '--...', '---..', '----.', ' ' });

encoded_text = '';

for i = 1:length(text1)
    character = text1(i);
    if isKey(morse_dict, character)
        encoded_text = [encoded_text, morse_dict(character), ' '];
    else
        disp(['Ignoring character: ', character]);
    end
end

disp(['Morse Code: ', encoded_text]);



text2 = encoded_text;
morse = {'.-','-...','-.-.','-..','.','..-.','--.','....','..','.---','-.-','.-..', ...
         '--','-.','---','.--.','--.-','.-.','...','-','..-','...-','.--','-..-', ...
         '-.--','--..'};
letter = char('A':'Z');
 
morse1 = {'-----','.----','..---','...--','....-','.....','-....', ...
         '--...','---..','----.'};
number = char('0':'9');
 
symbol = strsplit(text2, ' ');
decoded_text = '';

for i = 1:length(symbol)
    decoded_text = [decoded_text, letter(ismember(morse, symbol{i}))];
    decoded_text = [decoded_text, number(ismember(morse1, symbol{i}))];
end

disp(['Decoded Text: ', decoded_text]);

