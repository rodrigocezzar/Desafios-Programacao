# frozen_string_literal: true

def fatorial(number)
  result = 1
  (1..number).each do |i|
    result *= i
  end
  result
end

print 'Digite o numero para gerar a sequência: '

number = gets.chomp.to_i

result = fatorial(number)
puts "O fatorial de #{number} é #{result}"
