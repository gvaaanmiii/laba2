use std::io::{self, Write};

fn main() {
    print!("");
    io::stdout().flush().unwrap();
    let mut input = String::new();
    io::stdin().read_line(&mut input).unwrap();
    let numbers = input.trim().split_whitespace();
    let results: Vec<&str> = numbers.map(|num| {
        if is_valid_time_format(num) {
            "YES"
        } else {
            "NO"
        }
    }).collect();

    println!("{}", results.join(" "));
}

fn is_valid_time_format(number: &str) -> bool {
    let len = number.len();
    for i in 1..len {
        let (hours_str, minutes_str) = number.split_at(i);
        if let (Ok(hours), Ok(minutes)) = (hours_str.parse::<u32>(), minutes_str.parse::<u32>()) {
            if hours <= 23 && minutes <= 59 {
                return true;
            }
        }
    }

    false
}
