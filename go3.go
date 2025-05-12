package main

import (
    "bufio"
    "fmt"
    "os"
    "strconv"
    "strings"
)
func isValidTime(num string) string {
    for i := 1; i < len(num); i++ {
        hoursStr := num[:i]
        minutesStr := num[i:]
        hours, err1 := strconv.Atoi(hoursStr)
        minutes, err2 := strconv.Atoi(minutesStr)

        
        if err1 == nil && err2 == nil && hours >= 0 && hours <= 23 && minutes >= 0 && minutes <= 59 {
            return "YES"
        }
    }
    return "NO"
}

func main() {
    scanner := bufio.NewScanner(os.Stdin)
    if scanner.Scan() {
        line := scanner.Text()
        numbers := strings.Fields(line)
        var results []string
        for _, num := range numbers {
            results = append(results, isValidTime(num))
        }

        fmt.Println(strings.Join(results, " "))
    }
}

