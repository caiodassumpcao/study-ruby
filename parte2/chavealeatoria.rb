caracteres = [*'a'..'z', *'A'..'Z', *'0'..'9', *'!@#$%&*()']

chave = (0...16).map { caracteres.sample }.join

puts chave 

