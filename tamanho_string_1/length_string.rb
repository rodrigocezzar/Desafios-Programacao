# frozen_string_literal: true

def length_string
  print 'Digite a palavra: '
  word = gets.chomp.to_s

  puts word.length
end

length_string
