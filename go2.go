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
    isPangram := checkPangram(input)
    if isPangram {
        fmt.Println("true")
    } else {
        fmt.Println("false")
    }
}
func checkPangram(s string) bool {
    uniqueLetters := make(map[rune]bool)
    
    for _, char := range s {
 
        if char >= 'a' && char <= 'z' {
            uniqueLetters[char] = true
        }
    }
    return len(uniqueLetters) == 26
}

