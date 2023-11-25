# frozen_string_literal: true

def simulate_launch_dice(lancamentos)
  results = []

  lancamentos.times do
    result = rand(1..6)
    results << result
  end

  results
end

puts 'Lançamentos:'
launch_number = gets.chomp.to_i

if launch_number.positive?
  results = simulate_launch_dice(launch_number)
  puts results.join(', ')
else
  puts 'Por favor, insira um número válido de lançamentos.'
end
