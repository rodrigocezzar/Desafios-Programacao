# frozen_string_literal: true

def time_machine
  puts 'Você está no Egito Antigo. O que você deseja fazer?'
  puts '1. Conhecer os faraós.'
  puts '2. Explorar as pirâmides.'

  choice = gets.chomp

  case choice
  when '1'
    puts 'Você se encontra com o Faraó Ramsés II. Ele lhe faz perguntas sobre o futuro....'
  when '2'
    puts 'Você explora as pirâmides, mas não encontra nada de especial.'
  else
    puts 'Opção inválida. Tente novamente.'
  end
end

time_machine
