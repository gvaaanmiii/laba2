function analyze(input: string): void {
  
  const vowels = 'aeiouyAEIOUY';
  const consonants = 'bcdfghjklmnpqrstvwxzBCDFGHJKLMNPQRSTVWXZ';

  let vowelCount = 0;
  let consonantCount = 0;
  for (const char of input) {
    if (vowels.includes(char)) {
      vowelCount++;
    }
    else if (consonants.includes(char)) {
      consonantCount++;
    }
  }

  if (vowelCount > consonantCount) {
    console.log("Да");  
  } else if (vowelCount < consonantCount) {
    console.log("Нет"); 
  } else {
    console.log("Одинаково"); 
  }
}

const userInput: string | null = prompt("Введите строку:");

if (userInput !== null) {
  analyze(userInput); 
}
