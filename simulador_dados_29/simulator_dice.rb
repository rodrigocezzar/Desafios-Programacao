# frozen_string_literal: true

def simular_lancamento_dado(lancamentos)
  resultados = []

  lancamentos.times do
    resultado = rand(1..6)
    resultados << resultado
  end

  resultados
end

puts 'Lançamentos:'
numero_lancamentos = gets.chomp.to_i

if numero_lancamentos.positive?
  resultados = simular_lancamento_dado(numero_lancamentos)
  puts resultados.join(', ')
else
  puts 'Por favor, insira um número válido de lançamentos.'
end
