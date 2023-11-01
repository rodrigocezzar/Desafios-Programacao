# frozen_string_literal: true

def array_reverse
  print 'Insira um array como no exemplo:([5, 1, 3, 2]): '
  array = gets.chomp
  array_sanitize = array.split(',').map(&:to_i)

  p array_sanitize.reverse
end

array_reverse
