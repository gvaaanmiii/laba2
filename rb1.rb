puts "Введите строку из букв:"
input = gets.chomp
vowels = "aeiouyAEIOUY"

vowel_count = 0
consonant_count = 0
input.each_char do |char|
  if char.match?(/[A-Za-z]/)  
    if vowels.include?(char)
      vowel_count += 1      
    else
      consonant_count += 1    
    end
  end
end

if vowel_count > consonant_count
  puts "Да"
elsif vowel_count < consonant_count
  puts "Нет"
else
  puts "Одинаково"
end

