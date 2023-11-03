# frozen_string_literal: true

def average_grades
  grades = []

  print 'Digite a nota ou digite "fim" para calcular a média: '
  input = gets.chomp

  while input != 'fim'
    grades << input.to_f
    print 'Digite a próxima nota ou digite "fim" para calcular a média: '
    input = gets.chomp
  end

  if grades.empty?
    puts 'Nenhuma nota inserida. Não é possível calcular a média.'
  else
    total = grades.sum
    media = total / grades.length
    puts "A média é: #{'%.1f' % media}"
  end
end

average_grades
