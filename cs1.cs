using System;

class Program
{
    static void Analyze(string input)
    {
        string vowels = "aeiouyAEIOUY";
        string consonants = "bcdfghjklmnpqrstvwxzBCDFGHJKLMNPQRSTVWXZ";

        int vowelCount = 0;
        int consonantCount = 0;
        foreach (char ch in input)
        {
            if (vowels.Contains(ch))
            {
                vowelCount++; 
            }
            else if (consonants.Contains(ch))
            {
                consonantCount++; 
            }
        }
        if (vowelCount > consonantCount)
        {
            Console.WriteLine("Да");
        }
        else if (vowelCount < consonantCount)
        {
            Console.WriteLine("Нет");
        }
        else
        {
            Console.WriteLine("Одинаково");
        }
    }

    static void Main()
    {
        Console.Write("Введите строку: ");
        string userInput = Console.ReadLine();
        Analyze(userInput);
    }
}

