# frozen_string_literal:true

def vowel_count
  print 'Digite uma palavra: '
  word = gets.chomp.downcase.to_s
  vowel = %w[a e i o u]

  word_sanitize = word.to_s.chars
  acc = 0

  word_sanitize.each do |word_each|
    acc += 1 if vowel.include?(word_each)
  end
  puts "#{acc} vogais."
end

vowel_count
