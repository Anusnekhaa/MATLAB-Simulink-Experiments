% Define Morse code dictionary
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

% Get user input
userInput = input('Enter text to encode to Morse code: ', 's');

% Encode user input to Morse code
encodedMorse = '';
userInput = upper(userInput);
for i = 1:length(userInput)
    letter = userInput(i);
    if isfield(morseCodeMap, letter)
        morseSymbol = morseCodeMap.(letter);
        encodedMorse = [encodedMorse, morseSymbol, ' '];
    elseif letter == ' '
        encodedMorse = [encodedMorse, '/ ']; % Add space for word separation
    else
        encodedMorse = [encodedMorse, ' ']; % Add space for unknown characters
    end
end

% Display encoded Morse code
disp(['Text to Encode: ' userInput]);
disp(['Morse Code: ' encodedMorse]);

% Decode Morse code back to text
morseCodeToDecode = input('Enter the Morse code to decode: ', 's');
morseCodeToDecode = strsplit(morseCodeToDecode, ' ');
decodedText = '';
for i = 1:length(morseCodeToDecode)
    morseSymbol = morseCodeToDecode{i};
    found = false;
    for letter = fieldnames(morseCodeMap)'
        if strcmp(morseCodeMap.(letter{1}), morseSymbol)
            decodedText = [decodedText, letter{1}];
            found = true;
            break;
        end
    end
    if ~found && strcmp(morseSymbol, '/')
        decodedText = [decodedText, ' ']; % Add space for word separation
    elseif ~found
        decodedText = [decodedText, '?']; % Use '?' for unknown Morse symbols
    end
end

% Display decoded text
disp(['Morse Code to Decode: ' strjoin(morseCodeToDecode, ' ')]);
disp(['Decoded Text: ' decodedText]);