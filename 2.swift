import Foundation
func isPangram(_ sentence: String) -> Bool {
    let alphabet = Set("abcdefghijklmnopqrstuvwxyz")
    let cleanedSentence = sentence.lowercased().filter { $0 >= "a" && $0 <= "z" }
    let charactersInSentence = Set(cleanedSentence)

    return charactersInSentence.isSuperset(of: alphabet)
}

print("Введите строку из строчных английских букв:")
if let input = readLine() {
    let result = isPangram(input)
    print(result)
} else {
    print("Ошибка ввода.")
}



