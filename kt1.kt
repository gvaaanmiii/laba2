fun main() {
    print("Введите строку: ")
    val input = readLine() ?: ""
    analyze(input)
}

fun analyze(s: String) {
    val vowels = "aeiouyAEIOUY"
    val consonants = "bcdfghjklmnpqrstvwxzBCDFGHJKLMNPQRSTVWXZ"

    var vowelCount = 0     
    var consonantCount = 0 
    for (char in s) {
        when {
            vowels.contains(char) -> vowelCount++       
            consonants.contains(char) -> consonantCount++ 
        }
    }
    when {
        vowelCount > consonantCount -> println("Да")
        vowelCount < consonantCount -> println("Нет")
        else -> println("Одинаково")
    }
}	

