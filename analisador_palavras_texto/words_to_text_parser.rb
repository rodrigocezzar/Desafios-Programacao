# frozen_string_literal: true

def count_frequency(text)
  text = text.downcase.gsub(/[[:punct:]]/, ' ')

  words = text.split

  frequency = Hash.new(0)

  words.each { |word| frequency[word] += 1 }

  frequency
end

puts 'Digite o texto:'
text_user = gets.chomp

result = count_frequency(text_user)
puts result
