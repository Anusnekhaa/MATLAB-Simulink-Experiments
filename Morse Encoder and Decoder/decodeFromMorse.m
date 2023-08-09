function decodedText = decodeFromMorse(morseCode)
    % Morse Code Dictionary
    morseCodeMap = struct('A', '.-', 'B', '-...', 'C', '-.-.', 'D', '-..', ...
        'E', '.', 'F', '..-.', 'G', '--.', 'H', '....', 'I', '..', ...
        'J', '.---', 'K', '-.-', 'L', '.-..', 'M', '--', 'N', '-.', ...
        'O', '---', 'P', '.--.', 'Q', '--.-', 'R', '.-.', 'S', '...', ...
        'T', '-', 'U', '..-', 'V', '...-', 'W', '.--', 'X', '-..-', ...
        'Y', '-.--', 'Z', '--..', '0', '-----', '1', '.----', '2', '..---', ...
        '3', '...--', '4', '....-', '5', '.....', '6', '-....', '7', '--...', ...
        '8', '---..', '9', '----.', ' ', '/');
    
    words = strsplit(morseCode, '/');
    decodedText = '';
    for word = words
        letters = strsplit(word, ' ');
        for letter = letters
            for key = fieldnames(morseCodeMap)'
                if strcmp(morseCodeMap.(key{1}), letter{1})
                    decodedText = [decodedText, key{1}];
                    break;
                end
            end
        end
        decodedText = [decodedText, ' '];
    end
end