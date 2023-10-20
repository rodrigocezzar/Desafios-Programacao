# frozen_string_literal: true

def multiplication_table
  print 'Digite um número inteiro positivo: '
  number = gets.chomp.to_i

  0.upto(10) do |num|
    puts "#{number} x #{num} = #{number * num}"
  end
end

multiplication_table
