# frozen_string_literal: true


shopping_list = []

loop do
  puts "Insira um item de compra (ou digite 'sair' para finalizar):"

  item = gets.chomp.strip

  break if item.downcase == 'sair'

  
shopping_list << item
end

puts "Lista de Compras: #{
shopping_list.join(', ')}"
