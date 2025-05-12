import Foundation

func isValidTime(_ num: String) -> String {
    let length = num.count
    for i in 1..<length {
        let index = num.index(num.startIndex, offsetBy: i)
        let hoursStr = String(num[..<index])
        let minutesStr = String(num[index...])

        if let hours = Int(hoursStr), let minutes = Int(minutesStr) {
            if hours >= 0 && hours <= 23 && minutes >= 0 && minutes <= 59 {
                return "YES"
            }
        }
    }
    return "NO"
}

if let input = readLine() {
    let numbers = input.split(separator: " ")
    var results: [String] = []
    for num in numbers {
        results.append(isValidTime(String(num)))
    }

    print(results.joined(separator: " "))
} else {
    print("Ошибка ввода.")
}
