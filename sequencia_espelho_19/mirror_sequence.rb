# frozen_string_literal: true

def mirror_sequence
  print 'Informe um array de numeros como no exemplo: [1, 2, 3] '
  array = gets.chomp
  array_sanitize = array.split(',').map(&:to_i)
  p array_sanitize + array_sanitize.reverse
end

mirror_sequence
