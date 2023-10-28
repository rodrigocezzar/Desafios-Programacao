# frozen_string_literal:true

def sum_digits
  print 'Inira a sequência de digitos: Por exemplo(12345): '
  digits = gets.chomp
  digits_sanitize = digits.to_s.chars.map(&:to_i)
  soma = 0

  digits_sanitize.each do |digit|
    soma += digit
  end
  puts soma
end

sum_digits
