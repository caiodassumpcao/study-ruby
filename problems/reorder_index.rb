#Reorder an array according to given indexes - Reordenar uma matriz de acordo com os índices fornecidos

def reorder(array, index, n)
  temp = Array.new(n, 0) #Criando novo array TEMP de N elementos inicializados com 0"

  # array[i] deve esta presente no indice index[i]
  (0...n).each do |i|
    temp[index[i]] = array[i] #Atribuindo o valor e index(correto) do elemento i no array
  end

  (0...n).each do |i|
    array[i] = temp[i] #Copia cada elemento do array temporário de volta para o array original no indice correto
    index[i] = i #Atualiza o index  '[0, 1, 2, 3, 4]'
  end
end

array = [50, 40, 70, 60, 90]
index = [3, 0, 4, 1, 2]
n = array.length

reorder(array, index, n)

puts "Array reordenado:"
(0...n).each do |i|
  print " #{array[i]}"
end

puts "\nArray de índices modificados:"
(0...n).each do |i|
  print " #{index[i]}"
end

