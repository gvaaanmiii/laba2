use std::collections::HashSet;
use std::io::{self, Write};

fn main() {
    print!("Введите строку: ");
    io::stdout().flush().unwrap(); 

    let mut sentence = String::new(); 
    io::stdin().read_line(&mut sentence).unwrap(); 
    let sentence = sentence.trim().to_lowercase(); 
    println!("{}", is_pangram(&sentence));
}
fn is_pangram(sentence: &str) -> bool {
    let mut letters = HashSet::new(); 
    for ch in sentence.chars() {
        if ch >= 'a' && ch <= 'z' {
            letters.insert(ch); 
        }
    }
    letters.len() == 26
}
