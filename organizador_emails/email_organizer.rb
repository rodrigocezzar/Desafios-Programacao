# frozen_string_literal: true

def organizar_emails_por_dominio(emails)
  organizacao = Hash.new { |hash, key| hash[key] = [] }

  emails.each do |email|
    usuario, dominio = email.split('@')
    organizacao[dominio] << email
  end

  organizacao
end

emails = ['user1@gmail.com', 'user2@yahoo.com', 'user3@gmail.com']

resultado = organizar_emails_por_dominio(emails)
puts resultado
