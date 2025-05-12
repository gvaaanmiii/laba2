#include <iostream>
#include <string>
#include <cctype>

using namespace std;


bool isVowel(char ch) {
    ch = tolower(ch); 
    return ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u' || ch == 'y';
}

int main() {
    string s;

    cout << "Введите строку: ";
    getline(cin, s);

    int vowelCount = 0;
    int consonantCount = 0;

    for (char ch : s) {
        if (isalpha(ch)) { 
            if (isVowel(ch))
                vowelCount++;
            else
                consonantCount++;
        }
    }

    if (vowelCount > consonantCount) {
        cout << "Да" << endl;
    } else if (vowelCount < consonantCount) {
        cout << "Нет" << endl;
    } else {
        cout << "Одинаково" << endl;
    }

    return 0;
}
