#include <iostream>
#include <string>
#include <set>


bool is_pangram(const std::string& sentence) {
    std::set<char> alphabet;  
    for (char ch : sentence) {
        if (ch >= 'a' && ch <= 'z') {
            alphabet.insert(ch); 
        }
    }
    return alphabet.size() == 26;
}

int main() {
    std::string user_input;  
    std::cout << "Введите строку из строчных английских букв: ";  
    std::getline(std::cin, user_input);  
    if (is_pangram(user_input)) {
        std::cout << "true\n";  
    } else {
        std::cout << "false\n";  
    }

    return 0;  
}
