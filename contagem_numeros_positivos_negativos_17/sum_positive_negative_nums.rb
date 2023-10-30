# frozen_string_literal:true

def sum_positive_negative
  print 'Insira o array desejado (Exemplo: [-2, 5, -6, 8, 0, -1, 3]): '
  numbers = gets.chomp
  numbers_sanitize = numbers.split(',').map(&:to_i)

  acc_positive = 0
  acc_negative = 0

  numbers_sanitize.uniq.each do |number|
    acc_positive += 1 if number >= 0
    acc_negative += 1 if number <= 0
  end
  puts "Positivos: #{acc_positive}"
  puts "Negativos: #{acc_negative}"
end

sum_positive_negative
