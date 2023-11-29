# frozen_string_literal: true

def lottery_simulator(launchs)
  results = []

  launchs.times do
    result = rand(1..60)
    results << result
  end

  results
end

puts 'Jogue:'
launch_number = gets.chomp.to_i

if launch_number.positive? && launch_number == 6
  results = lottery_simulator(launch_number)
  puts results.join(', ')
else
  puts 'Por favor, insira um número válido para realizar sua aposta.'
end
