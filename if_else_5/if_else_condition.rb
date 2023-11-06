def condition
  print 'Digite um numero: '
  num = gets.chomp.to_i

  if num < 5
    puts 'é menor que 5'
  else
    puts 'é maior ou igual à que 5'
  end
end

condition
