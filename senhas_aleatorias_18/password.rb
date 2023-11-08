# frozen_string_literal: true

def password(tamanho = 8)
  caracteres = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'
  senha = ''
  tamanho.times { senha = (senha.dup << caracteres[rand(caracteres.size)]) }
  puts "A senha gerada é: #{senha}"
end

password
