fun main() {
    print("")
    val input = readLine() ?: return
    val numbers = input.split(" ")
    val result = numbers.map { num -> if (isValidTime(num)) "YES" else "NO" }

    println(result.joinToString(" "))
}
fun isValidTime(num: String): Boolean {
    for (i in 1 until num.length) {
        val hours = num.substring(0, i).toInt()
        val minutes = num.substring(i).toInt()
        if (hours in 0..23 && minutes in 0..59) {
            return true
        }
    }
    return false 
}

