sentence = input("Введите строку (только строчные английские буквы): ")
def is_pangram(s):
    alphabet = set('abcdefghijklmnopqrstuvwxyz')
    letters_in_sentence = set(s)
    return alphabet <= letters_in_sentence
if is_pangram(sentence):
    print("true")
else:
    print("false")

