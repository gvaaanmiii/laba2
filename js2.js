const readline = require('readline');
const rl = readline.createInterface({
    input: process.stdin,  
    output: process.stdout 
});
function isPangram(sentence) {
    
    const letters = new Set(sentence);
    const alphabet = new Set('abcdefghijklmnopqrstuvwxyz');
    for (let letter of alphabet) {
        
        if (!letters.has(letter)) {
            return false;
        }
    }
    
    return true;
}
rl.question('Введите строку из строчных английских букв: ', (userInput) => {

    if (isPangram(userInput)) {
        console.log("true"); 
    } else {
        console.log("false"); 
    }
    rl.close()
})


