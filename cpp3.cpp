#include <iostream>
#include <string>
#include <sstream>

using namespace std;

string is_valid_time(const string& num) {
    
    for (size_t i = 1; i < num.length(); ++i) {
        string hours_str = num.substr(0, i);  
        string minutes_str = num.substr(i);  
        int hours = stoi(hours_str);
        int minutes = stoi(minutes_str);
        if (hours >= 0 && hours <= 23 && minutes >= 0 && minutes <= 59) {
            return "YES";  
        }
    }
    return "NO";
}

int main() {
    string input;
    getline(cin, input); 

    stringstream ss(input);  
    string num;
    while (ss >> num) {
        cout << is_valid_time(num) << " ";
    }

    return 0;  
}

