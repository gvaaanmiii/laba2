const readline = require('readline');

function isValidTime(num) {
  for (let i = 1; i < num.length; i++) {
    const hours = parseInt(num.slice(0, i), 10);  
    const minutes = parseInt(num.slice(i), 10);  
    if (
      !isNaN(hours) && !isNaN(minutes) &&   
      hours >= 0 && hours <= 23 &&           
      minutes >= 0 && minutes <= 59         
    ) {
      return "YES"; 
    }
  }
  return "NO"; 
}

const rl = readline.createInterface({
  input: process.stdin,  
  output: process.stdout 
});
rl.question("", (input) => {
  const numbers = input.trim().split(/\s+/);
  const result = numbers.map(isValidTime);
  console.log(result.join(" "));
  rl.close();  
});
