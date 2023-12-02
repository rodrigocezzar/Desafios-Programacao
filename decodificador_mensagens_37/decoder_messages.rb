# frozen_string_literal: true

def decipher_cifra_cesar(menssage, key)
  deciphered = ''

  menssage.each_char do |char|
    if char.match(/[A-Za-z]/)
      is_uppercase = char == char.upcase
      char = char.downcase
      displacement = (char.ord - 'a'.ord - key) % 26
      displacement += 26 if displacement.negative?
      char_deciphered = ('a'.ord + displacement).chr
      char_deciphered = char_deciphered.upcase if is_uppercase
      deciphered += char_deciphered
    else
      deciphered += char
    end
  end

  deciphered
end

print 'Digite a mensagem codificada: '
encoded_message = gets.chomp

print 'Digite a chave: '
key = gets.chomp.to_i

menssage_deciphered = decipher_cifra_cesar(encoded_message, key)

puts "Mensagem Codificada: #{encoded_message}"
puts "Chave: #{key}"
puts "Mensagem Decifrada: #{menssage_deciphered}"
