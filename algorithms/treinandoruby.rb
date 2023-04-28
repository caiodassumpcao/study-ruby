#Arrey 
# tipo 1: lista1 = [1, 2, "3"]
# tipo 2: lista2 = Arrey.new

#Hashes - Estrutura de chave-valor
# hash { chave: valor, chave: valor}

# tipo 1: hash = {}
# tipo 2: hash = Hash.new 

# h = { nome: "Caio", idade: "24"} 

#como acessar um valor do hash?
#h[:nome] 

#como alterar elemento?
#{:nome} = "Caio Dassumpção" 

# hash.keys - retorna um array com as chaves
# hash.values - retorna um array com os valores
# hash.empty - verifica se o hash está vazio

# Laços:
#break - Sair do laço
#Return - Sair do laõ e do método onde está contido
#next - Vai imediatamente para a próxima interação 
#redo - Repete o laço do início (a condição não sera reavaliada)


puts "Digite um número:"
numero = gets.chomp.to_i

array = [3, 6, 9, 12, 15, 18]

encontrado = false
indice = -1

array.each_with_index do |elemento, i|
  if elemento == numero
    encontrado = true
    indice = i
    break
  end
end

if encontrado
  puts "O número #{numero} foi encontrado no índice #{indice}."
else
  puts "O número #{numero} não foi encontrado no array."
end

