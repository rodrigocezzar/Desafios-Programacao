# frozen_string_literal: true

def binary_for_text(binary)
  bytes = binary.scan(/.{8}/)

  bytes.map { |byte| byte.to_i(2).chr }.join
end

puts 'Digite a string binária (separada por espaços):'
binary_user = gets.chomp

text_resultant = binary_for_text(binary_user.gsub(/\s+/, ''))

puts "Texto resultante: #{text_resultant}"
