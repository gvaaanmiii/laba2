numbers = input("Введите числа через пробел: ").split()
def is_valid_time(num):
    num_str = str(num)
    for i in range(1, len(num_str)):
        hours = int(num_str[:i])   
        minutes = int(num_str[i:])    
        if 0 <= hours <= 23 and 0 <= minutes <= 59:
            return "YES"
    return "NO"
result = [is_valid_time(num) for num in numbers]
print(" ".join(result))
