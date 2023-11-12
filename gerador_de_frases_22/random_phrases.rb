# frozen_string_literal: true

def random_phrases
  nouns = %w[cachorro gato carro casa computador]
  verbs = %w[corre pula dirige come dorme]
  adjectives = %w[grande pequeno rápido lento bonito]

  substantive = nouns.sample
  verb = verbs.sample
  adjetive = adjectives.sample

  phrase = "O #{adjetive} #{substantive} #{verb}."

  puts phrase
end

random_phrases
