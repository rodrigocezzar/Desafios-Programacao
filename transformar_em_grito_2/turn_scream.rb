# frozen_string_literal: true

def turn_scream
  print 'Digite uma entrada: '
  word = gets.chomp.to_s.downcase

  puts word.upcase
end

turn_scream
