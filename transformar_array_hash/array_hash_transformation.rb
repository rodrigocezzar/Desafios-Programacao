# frozen_string_literal:true

def array_hash_transformation
  print 'Inira os dados em forma de Array: Por exemplo(["nome", "corretora abc", "tipo", "empresa", "negocio", "aluguel e vendas"]): '
  array = gets.chomp
  array_sanitize = array[1..-2].split(',').map { |s| s.strip[1..-2] }
  hash = array_sanitize.each_slice(2).to_h

  puts hash
end

array_hash_transformation
