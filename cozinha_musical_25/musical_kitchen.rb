# frozen_string_literal: true

require 'json'

def musical_kitchen
  print 'Insira a sequência desejada em forma de array: '
  recipe = gets.chomp
  recipe_sanitize = JSON.parse(recipe)
  ingredient_to_note = {
    'Tomate' => 'Dó',
    'Cebola' => 'Ré',
    'Alho' => 'Mi',
    'Feijão' => 'Fa',
    'Carne' => 'Sol',
    'Peixe' => 'La',
    'Macarrão' => 'Si'
  }

  notes = recipe_sanitize.map { |ingredient| ingredient_to_note[ingredient] }.join(', ')
  puts notes
end

musical_kitchen
