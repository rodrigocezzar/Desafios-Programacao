# frozen_string_literal: true

def ascending_order
  print 'Digite o primeiro número: a = '
  a = gets.chomp.to_i

  print 'Digite o segundo número: b = '
  b = gets.chomp.to_i

  print 'Digite o terceiro número: c = '
  c = gets.chomp.to_i

  numeros = [a, b, c]

  numeros_ordenados = numeros.sort

  puts numeros_ordenados.join(', ')
end

ascending_order
