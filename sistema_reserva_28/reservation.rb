# frozen_string_literal: true

class Hotel
  attr_accessor :available_rooms, :occupied_rooms

  def initialize
    @available_rooms = [1, 2, 3, 4, 5]
    @occupied_rooms = []
  end

  def reserve(room)
    unless @available_rooms.include?(room)
      puts "O quarto #{room} não está disponível."
      return
    end

    @available_rooms.delete(room)

    @occupied_rooms << room

    puts "O quarto #{room} foi reservado."
  end

  def cancel(room)
    unless @occupied_rooms.include?(room)
      puts "O quarto #{room} não está ocupado."
      return
    end

    @occupied_rooms.delete(room)

    @available_rooms << room

    puts "O quarto #{room} foi cancelado."
  end

  def search(room)
    if @available_rooms.include?(room)
      puts "O quarto #{room} está disponível."
    else
      puts "O quarto #{room} está ocupado."
    end
  end
end

hotel = Hotel.new

loop do
  puts 'Escolha uma opção:'
  puts '1. Reservar'
  puts '2. Cancelar'
  puts '3. Buscar'
  puts '4. Sair'
  command = gets.chomp.to_i

  case command
  when 1
    puts 'Digite o número do quarto a ser reservado:'
    room = gets.to_i
    hotel.reserve(room)
  when 2
    puts 'Digite o número do quarto a ser cancelado:'
    room = gets.to_i
    hotel.cancel(room)
  when 3
    puts 'Digite o número do quarto a ser buscado:'
    room = gets.to_i
    hotel.search(room)
  when 4
    break
  end

  puts 'Quartos disponíveis:'
  puts hotel.available_rooms
  puts 'Quartos ocupados:'
  puts hotel.occupied_rooms
end
