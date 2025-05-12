package main

import (
    "bufio"
    "fmt"
    "os"
    "strings"
)

func main() {
    fmt.Print("Введите строку: ")
    reader := bufio.NewReader(os.Stdin)
    input, _ := reader.ReadString('\n')
    input = strings.TrimSpace(input)
    analyze(input)
}

func analyze(s string) {
    vowels := "aeiouyAEIOUY"
    consonants := "bcdfghjklmnpqrstvwxzBCDFGHJKLMNPQRSTVWXZ"

    vowelCount := 0
    consonantCount := 0

    for _, char := range s {
        if strings.ContainsRune(vowels, char) {
            vowelCount++
        } else if strings.ContainsRune(consonants, char) {  
            consonantCount++
        }
    }

    if vowelCount > consonantCount {
        fmt.Println("Да")
    } else if vowelCount < consonantCount {
        fmt.Println("Нет")
    } else {
        fmt.Println("Одинаково")
    }
}
