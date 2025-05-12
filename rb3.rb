def valid_time?(num)
  (1...num.length).each do |i|
    hours = num[0...i].to_i     
    minutes = num[i..-1].to_i   
    return "YES" if hours >= 0 && hours <= 23 && minutes >= 0 && minutes <= 59
  end
  "NO"
end


input = gets.chomp
numbers = input.split
results = numbers.map { |num| valid_time?(num) }

puts results.join(" ")
