fun main() {
    print("Введите строку (только строчные латинские буквы): ")
    val sentence = readLine()?.lowercase() ?: ""
    println(isPangram(sentence))
}

fun isPangram(sentence: String): Boolean {
    val letters = mutableSetOf<Char>()
    for (char in sentence) {
        if (char in 'a'..'z') {
            letters.add(char)
        }
    }
    return letters.size == 26
}


