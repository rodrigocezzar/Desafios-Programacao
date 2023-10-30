# frozen_string_literal:true

def max_num_array
  print 'Inira o Array: Por exemplo([3, 7, 2, 8, 9, 4]): '
  array = gets.chomp
  array_sanitize = array.split(',').map(&:to_i)

  maior_valor = array_sanitize[0]
  inicial = 0

  while inicial < array_sanitize.length
    maior_valor = array_sanitize[inicial] if array_sanitize[inicial] > maior_valor

    inicial += 1
  end

  puts "O maior numero é #{maior_valor}"
end

max_num_array
