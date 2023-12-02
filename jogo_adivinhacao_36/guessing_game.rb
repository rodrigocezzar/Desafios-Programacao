# frozen_string_literal: true

def guessing_game
  random_number = rand(101)
  attempts = 0

  puts 'Bem-vindo ao jogo de adivinhação!'
  puts 'Tente adivinhar o número entre 0 e 100.'

  loop do
    print 'Digite sua tentativa: '
    attempt = gets.chomp.to_i
    attempts += 1

    if attempt < random_number
      puts 'O valor é menor! Tente Novamente.'
    elsif attempt > random_number
      puts 'O valor é maior! Tente Novamente.'
    else
      puts "Parabéns! Você acertou em #{attempts} tentativas. O número era #{random_number}."
      break
    end
  end
end

guessing_game
