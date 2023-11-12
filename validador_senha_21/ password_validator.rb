def password_validator
  print 'Insira uma senha: '
  password = gets.chomp.to_s
  if password.match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,}$/)
    puts "Senha válida"
  else
    puts "Senha inválida"
  end
end

password_validator
