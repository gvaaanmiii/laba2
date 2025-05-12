a = input("Введите строку: ")
def analyze(S):
    vowels = 'aeiouyAEIOUY'
    consonants = 'bcdfghjklmnpqrstvwxzBCDFGHJKLMNPQRSTVWXZ'
    vowel_count = 0
    consonant_count = 0
    
    for char in S:
        if char in vowels:
            vowel_count += 1 
        elif char in consonants:
            consonant_count += 1  

    if vowel_count > consonant_count:
        print("Да")
    elif vowel_count < consonant_count:
        print("Нет")
    else:
        print("Одинаково")

analyze(a)
