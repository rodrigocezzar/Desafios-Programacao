# frozen_string_literal: true

playlist = []

def add_music(playlist)
  puts 'Digite o nome da música:'
  music = gets.chomp
  playlist << music
  puts "#{music} foi adicionada à playlist."
end

def remove_music(playlist)
  puts 'Digite o nome da música que deseja remover:'
  music = gets.chomp
  if playlist.include?(music)
    playlist.delete(music)
    puts "#{music} foi removida da playlist."
  else
    puts "#{music} não encontrada na playlist."
  end
end

def display_playlist(playlist)
  puts "\nPlaylist:"
  playlist.each_with_index do |music, index|
    puts "#{index + 1}. #{music}"
  end
  puts "\n"
end

loop do
  puts 'Escolha uma opção:'
  puts '1. Adicionar música'
  puts '2. Remover música'
  puts '3. Exibir playlist'
  puts '4. Sair'

  choice = gets.chomp.to_i

  case choice
  when 1
    add_music(playlist)
  when 2
    remove_music(playlist)
  when 3
    display_playlist(playlist)
  when 4
    puts 'Saindo do programa. Até logo!'
    break
  else
    puts 'Opção inválida. Tente novamente.'
  end
end
