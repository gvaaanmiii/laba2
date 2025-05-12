const readline = require('readline');
const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});
function analyze(S) {
    const vowels = 'aeiouyAEIOUY';
    const consonants = 'bcdfghjklmnpqrstvwxzBCDFGHJKLMNPQRSTVWXZ';
    let vowel_count = 0;
    let consonant_count = 0;
    for (let i = 0; i < S.length; i++) {
        let char = S[i];
        if (vowels.includes(char)) {
            vowel_count++;  
        }
        else if (consonants.includes(char)) {
            consonant_count++;  
        }
    }
    if (vowel_count > consonant_count) {
        console.log("Да");
    } else if (vowel_count < consonant_count) {
        console.log("Нет");
    } else {
        console.log("Одинаково");
    }
}

rl.question("Введите строку: ", function(userInput) {
    analyze(userInput);
    rl.close();
});

