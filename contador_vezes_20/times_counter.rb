# frozen_string_literal: true

def times_counter
  print 'Informe uma palavra: '
  word = gets.chomp
  print 'Informe a letra que queira contar: '
  letter = gets.chomp
  counter = 0

  word.each_char do |character|
    counter = counter += 1 if character.downcase == letter.downcase
  end

  puts counter
end

times_counter
