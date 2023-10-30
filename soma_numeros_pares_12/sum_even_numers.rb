# frozen_string_literal: true

def sum_even
  print 'Digite um número inteiro positivo: '

  number = gets.chomp.to_i
  numbers = (0..number).to_a

  numbers_even = numbers.select(&:even?)

  total = numbers_even.reduce(0) { |acumulador, numero| acumulador + numero }
  puts "A soma dos números pares até #{number} é #{total}."
end

sum_even
