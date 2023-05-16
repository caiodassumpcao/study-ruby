#Positive elements at even and negative at odd positions - Elementos positivos em posições pares e negativos em posições ímpares

#Realocar os positivos em lugar par e negativo em impar
#Pode haver um número desigual de valores positivos e negativos e os valores extras devem ser deixados como estão.

#EX:
#Entrada: arr[] = {1, -3, 5, 6, -3, 6, 7, -4, 9, 10}
#Saída: arr[] = {1, -3, 5, -3, 6, 6, 7, -4, 9, 10}

#Utilizar a partição QUICK SORT(algorithms/quicksort.rb)



def swap(array, a, b) #função de troca valor de A e B dentro do array
  t = array[a]
  array[a] = array[b]
  array[b] = t
end

def rearrange(array, n)
  positive = 0
  negative = 1


  while positive < n && array[positive] >= 0
    positive += 2
  end

  while negative < n && array[negative] <= 0
    negative += 2
  end

  if positive < n && negative < n
    swap(array, positive, negative)
  end
end

array = [ 1, -3, 5, 6, -3, 6, 7, -4, 9, 10 ]
n = array.length

rearrange(array, n)
for i in 0..n
  print "#{array[i]}, "
end
