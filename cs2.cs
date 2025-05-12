using System;
using System.Collections.Generic;

class Program
{
    static bool IsPangram(string sentence)
    {
        HashSet<char> letters = new HashSet<char>();
        foreach (char ch in sentence)
        {
            if (ch >= 'a' && ch <= 'z')
            {
                letters.Add(ch); 
            }
        }

        return letters.Count == 26;
    }

    static void Main()
    {
        Console.Write("Введите строку (только строчные английские буквы): ");
        string input = Console.ReadLine();
        if (IsPangram(input))
        {
            Console.WriteLine("true");
        }
        else
        {
            Console.WriteLine("false");
        }
    }
}

