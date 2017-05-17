long_string = "Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur Excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum"
# find the longest word
new_long_string = long_string.split
puts new_long_string.max_by { |word| word.length }

# find the most common letter used
character_length = long_string.split('')
character_counts = []
26.times do
  character_counts << 0
end

character_length.each do |char|
  if char.ord > "a".ord && char.ord <= "a".ord + 25
    character_counts[char.ord - "a".ord] += 1
  end
end

char_index = -1
max_chars = -1

character_counts.each_with_index do |count, index|
  if count > max_chars
    max_chars = count
    char_index = index
  end
end

puts (char_index + "a".ord).chr

endcoded_message = "7 15 15 4 27 4 15 7".split
characters = endcoded_message.map do |digit_string|
  if digit_string.to_i == 27
    ''
  else
    (digit_string.to_i + 96).chr
  end
end
puts "\n#{characters.join}"

random_numbers = []
10.times do
  random_numbers << rand(9) + 1
end

primes = []
random_numbers.each do |num|
  if (2..num/2).none?{|divisor| num % divisor == 0}
    puts "Prime: #{num}"
  else
   primes << num
  end
end

primes.each do |non_prime|
  puts "Not Prime: #{non_prime}"
end
