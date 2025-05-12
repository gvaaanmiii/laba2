function isValidTime(num: string): string {
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
const input = prompt("");

if (input !== null) {
  const numbers = input.trim().split(/\s+/);      
  const results = numbers.map(isValidTime);       
  alert(results.join(" "));                     
} else {
  alert("Ввод отменён.");
}
