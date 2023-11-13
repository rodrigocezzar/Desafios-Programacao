# frozen_string_literal: true

def anagrams
  print 'Palavra 1: '
  word1 = gets.chomp.to_s.downcase
  print 'Palavra 2: '
  word2 = gets.chomp.to_s.downcase

  array1 = word1.split('')
  array2 = word2.split('')

  return puts 'São anagramas!' if array1 == array2.reverse

  puts 'Não são Anagramas!'
end

anagrams
