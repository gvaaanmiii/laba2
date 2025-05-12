function isPangram(sentence: string): boolean {
   
    const alphabet = new Set('abcdefghijklmnopqrstuvwxyz');

    const letters = new Set(sentence.toLowerCase());
    for (const letter of alphabet) {
        if (!letters.has(letter)) {
            return false;
        }
    }

    return true;
}

const userInput: string | null = prompt("Введите строку из строчных английских букв:");

if (userInput !== null) {
    if (isPangram(userInput)) {
        console.log("true");  
    } else {
        console.log("false"); 
    }
} else {
    console.log("Отмена ввода");
}
