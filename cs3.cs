using System;
using System.Collections.Generic;

class Program
{
    static string IsValidTime(string number)
    {
        for (int i = 1; i < number.Length; i++)
        {
            string hourPart = number.Substring(0, i);    
            string minutePart = number.Substring(i);     
            if (int.TryParse(hourPart, out int hours) &&
                int.TryParse(minutePart, out int minutes))
            {
                if (hours >= 0 && hours <= 23 && minutes >= 0 && minutes <= 59)
                {
                    return "YES";
                }
            }
        }
        return "NO";
    }

    static void Main()
    {
        Console.WriteLine("");
        string input = Console.ReadLine();
        string[] numbers = input.Split(' ');

        foreach (string num in numbers)
        {
            Console.Write(IsValidTime(num) + " ");
        }

        Console.WriteLine(); 
    }
}

