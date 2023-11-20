# frozen_string_literal: true

def temp_monitoring
  print 'Temperaturas registradas ao longo do dia, exemplo: [27.6, 32.3, 29.5]: '
  temperatures = gets.chomp
  temperatures_sanitize = temperatures.gsub(/[\[\]]/, '').split(',').map(&:to_f)

  sum_temperatures = temperatures_sanitize[0]
  temperatures_sanitize.each do |temp|
    sum_temperatures += temp
  end
  media = sum_temperatures / temperatures_sanitize.length
  puts "Média de temperatura: #{media}"

  max_temperature = temperatures_sanitize.max
  puts "Temperatura mais alta: #{max_temperature}"

  min_temperature = temperatures_sanitize.min
  puts "Temperatura mais baixa: #{min_temperature}"
end

temp_monitoring
