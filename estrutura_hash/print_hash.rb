# frozen_string_literal: true

require 'json'

def print_hash
  print 'Insira o hash (neste formato por exemplo: {"nome": "João", "idade": 25}): '
  hash_string = gets.chomp

  begin
    hash = JSON.parse(hash_string)
    hash.each do |key, value|
      puts "#{key} é #{value}"
    end
  rescue JSON::ParserError
    puts 'O formato inserido não é válido!'
  end
end

print_hash
