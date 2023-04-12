caracteres = [*'0'..'9']

chave = (1...9).map { caracteres.sample }.join

puts chave 

