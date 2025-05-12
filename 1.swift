import Foundation
func analyzeString(_ input: String) {
    let vowels: Set<Character> = ["a", "e", "i", "o", "u", "y",
                                  "A", "E", "I", "O", "U", "Y"]
    let consonants: Set<Character> = Set("bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ")
    
    var vowelCount = 0
    var consonantCount = 0
    for char in input {
        if vowels.contains(char) {
            vowelCount += 1
        } else if consonants.contains(char) {
            consonantCount += 1
        }
    }
    if vowelCount > consonantCount {
        print("Да")
    } else if vowelCount < consonantCount {
        print("Нет")
    } else {
        print("Одинаково")
    }
}

print("Введите строку:")
if let userInput = readLine() {
    analyzeString(userInput)
} else {
    print("Ошибка ввода.")
}



