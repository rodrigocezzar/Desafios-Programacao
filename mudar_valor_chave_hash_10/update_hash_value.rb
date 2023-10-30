# frozen_string_literal:true

require 'json'

def update_hash_value
  print 'Insira o hash no formato JSON (ex: {"chave": "valor"}): '
  hash_string = gets.chomp

  begin
    hash = JSON.parse(hash_string)
  rescue JSON::ParserError
    puts 'O formato inserido não é válido!'
    return
  end

  print 'Insira a chave que você deseja alterar: '
  key = gets.chomp

  key = key.to_i if key =~ /\A-?\d+\z/

  if hash.key?(key)
    print "Insira o novo valor para '#{key}': "
    new_value = gets.chomp

    new_value = new_value.to_i if new_value =~ /\A-?\d+\z/

    hash[key] = new_value
    puts "Hash atualizado: #{hash}"
  else
    puts "Chave '#{key}' não encontrada!"
  end
end

update_hash_value
