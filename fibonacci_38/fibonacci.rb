# frozen_string_literal: true

def fibonacci(number)
  fib = [0, 1]

  (2..number).each do |i|
    fib[i] = fib[i - 1] + fib[i - 2]
  end

  fib
end

print 'Digite o numero para gerar a sequência: '

number = gets.chomp.to_i

result = fibonacci(number)

puts result.join(', ')
