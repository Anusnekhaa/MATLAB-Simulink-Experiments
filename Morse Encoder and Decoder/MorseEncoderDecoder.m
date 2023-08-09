% Morse Code Dictionary as a cell array
morseCodeMap = {'A', '.-', 'B', '-...', 'C', '-.-.', 'D', '-..', ...
    'E', '.', 'F', '..-.', 'G', '--.', 'H', '....', 'I', '..', ...
    'J', '.---', 'K', '-.-', 'L', '.-..', 'M', '--', 'N', '-.', ...
    'O', '---', 'P', '.--.', 'Q', '--.-', 'R', '.-.', 'S', '...', ...
    'T', '-', 'U', '..-', 'V', '...-', 'W', '.--', 'X', '-..-', ...
    'Y', '-.--', 'Z', '--..', '0', '-----', '1', '.----', '2', '..---', ...
    '3', '...--', '4', '....-', '5', '.....', '6', '-....', '7', '--...', ...
    '8', '---..', '9', '----.', ',', '--..--', '.', '.-.-.-', '?', ...
    '..--..', '''', '.----.', '!', '-.-.--', '-', '-....-', '/', '-..-.', ...
    '(', '-.--.', ')', '-.--.-', '&', '.-...', ' ', '/'};

% Encode text to Morse code
textToEncode = input('Enter text to encode to Morse code: ', 's');
textToEncode = upper(textToEncode);
encodedMorse = [];
for i = 1:length(textToEncode)
    letter = textToEncode(i);
    if ismember(letter, morseCodeMap)
        index = find(strcmp(morseCodeMap, letter));
        encodedMorse = [encodedMorse, morseCodeMap{index+1}, ' '];
    else
        encodedMorse = [encodedMorse, ' ']; % Add space for unknown characters
    end
end

% Decode Morse code to text
encodedMorse = strsplit(morseCodeToDecode, ' ');
decodedText = [];
word = [];
for i = 1:length(encodedMorse)
    morseSymbol = encodedMorse{i};
    if strcmp(morseSymbol, '/') % Check for word separator
        decodedText = [decodedText, word, ' '];
        word = [];
    else
        index = find(strcmp(morseCodeMap, morseSymbol));
        if ~isempty(index)
            word = [word, morseCodeMap{index-1}];
        end
    end
end

% Append the last word
decodedText = [decodedText, word];

% Display results
disp(['Text to Encode: ' textToEncode]);
disp(['Morse Code: ' strjoin(encodedMorse, ' ')]);
disp(['Morse Code to Decode: ' strjoin(encodedMorse, ' ')]);
disp(['Decoded Text: ' decodedText]);