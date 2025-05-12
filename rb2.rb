puts "Введите строку из строчных английских букв:"
sentence = gets.chomp
letters = sentence.chars.uniq
only_letters = letters.select { |ch| ch >= 'a' && ch <= 'z' }
if only_letters.length == 26
  puts "true"
else
  puts "false"
end


