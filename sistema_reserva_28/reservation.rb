# frozen_string_literal: true

class Hotel
  attr_accessor :quartos_disponiveis, :quartos_ocupados

  def initialize
    @quartos_disponiveis = [1, 2, 3, 4, 5]
    @quartos_ocupados = []
  end

  def reservar(quarto)
    unless @quartos_disponiveis.include?(quarto)
      puts "O quarto #{quarto} não está disponível."
      return
    end

    @quartos_disponiveis.delete(quarto)

    @quartos_ocupados << quarto

    puts "O quarto #{quarto} foi reservado."
  end

  def cancelar(quarto)
    unless @quartos_ocupados.include?(quarto)
      puts "O quarto #{quarto} não está ocupado."
      return
    end

    @quartos_ocupados.delete(quarto)

    @quartos_disponiveis << quarto

    puts "O quarto #{quarto} foi cancelado."
  end

  def buscar(quarto)
    if @quartos_disponiveis.include?(quarto)
      puts "O quarto #{quarto} está disponível."
    else
      puts "O quarto #{quarto} está ocupado."
    end
  end
end

hotel = Hotel.new

loop do
  puts 'O que deseja? Reservar, Cancelar, Buscar, Sair  '
  comando = gets.chomp.downcase

  case comando
  when 'reservar'
    puts 'Digite o número do quarto a ser reservado:'
    quarto = gets.to_i
    hotel.reservar(quarto)
  when 'cancelar'
    puts 'Digite o número do quarto a ser cancelado:'
    quarto = gets.to_i
    hotel.cancelar(quarto)
  when 'buscar'
    puts 'Digite o número do quarto a ser buscado:'
    quarto = gets.to_i
    hotel.buscar(quarto)
  when 'sair'
    break
  end

  puts 'Quartos disponíveis:'
  puts hotel.quartos_disponiveis
  puts 'Quartos ocupados:'
  puts hotel.quartos_ocupados
end
