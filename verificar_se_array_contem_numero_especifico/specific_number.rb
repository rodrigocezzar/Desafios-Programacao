# frozen_string_literal: true

def specific_number
  print 'Digite um número para verificar se ele está presente no Array: '
  number = gets.chomp.to_i

  array = [1, 2, 'teste']

  return puts "Não tem o número #{number}" unless array.include?(number)

  puts "Tem o número #{number}"
end

specific_number
