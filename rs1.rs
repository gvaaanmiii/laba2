use std::io::{self, Write};

fn main() {
    print!("Введите строку: ");
    io::stdout().flush().unwrap(); 

    let mut input = String::new(); 
    io::stdin().read_line(&mut input).unwrap(); 
    let input = input.trim(); 

    analyze(input); 
}

fn analyze(s: &str) {
    let vowels = "aeiouyAEIOUY";
    let consonants = "bcdfghjklmnpqrstvwxzBCDFGHJKLMNPQRSTVWXZ";
    let mut vowel_count = 0; 
    let mut consonant_count = 0; 
    for c in s.chars() {
        if vowels.contains(c) {
            vowel_count += 1; 
        } else if consonants.contains(c) {
            consonant_count += 1;
        }
    }
    if vowel_count > consonant_count {
        println!("Да"); 
    } else if vowel_count < consonant_count {
        println!("Нет");
    } else {
        println!("Одинаково"); 
    }
}