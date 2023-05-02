# Merger Sorte - Algoritmo de classificação de mesclagem

#Divide a matrizes na metade e mesclar colocando em ordem

# 1° - Declarar a variavel esquerda, direita e meio
# 2° - execute: if left > right 
#                   return 
#                   mid= (esquerda+direita)/2
#                   mergesort(matriz, esquerda, meio)
#                   mergesort(matriz, meio+1, direita)
#                   merge(matriz, esquerda, meio, direita)
# 4° - Pare


def merge(array, left, mid, right)
    sub_array_one = mid - left + 1 #Variável que armazena o tamanho do subarray 
    sub_array_two = right - mid    #Variável que armazena o tamanho do subarray 
  
    left_array = Array.new(sub_array_one) #Cria novo array vazio "LEFT"
    right_array = Array.new(sub_array_two) #Cria novo array vazio "RIGHT"
  
    for i in 0...sub_array_one
      left_array[i] = array[left + i] #Adiciona os obj. no array/ Inicia com left = 0 e i = 0.
    end
  
    for j in 0...sub_array_two
      right_array[j] = array[mid + 1 + j]#Adiciona os obj. no array/ Inicia com o mid +1 pois o mid está no outro array até o final 
    end
  
    index_of_sub_array_one = 0 #Inidicaliza o index do subarray em 0, será usado para percorrer o array LEFT
    index_of_sub_array_two = 0 #Inidicaliza o index do subarray em 0 será usado para percorrer o array RIGHT
    index_of_merged_array = left #Inidicaliza o index do subarray em 0 será usado para percorrer o array FINAL

    #Enquanto o index do subarray for menor que o tamanho do subarray faça:
    while (index_of_sub_array_one < sub_array_one && index_of_sub_array_two < sub_array_two) 
    
        #Se o objeto do arary left for menor ou igual ao mesmo index do array right faça:
        if (left_array[index_of_sub_array_one] <= right_array[index_of_sub_array_two])
            #Se o objeto comparado do array left for menor adiciona ao array principal
            array[index_of_merged_array] = left_array[index_of_sub_array_one] 
            index_of_sub_array_one += 1 # +1 na variavel que roda o loop de 0 até n
        else
            #Se o objeto comparado do array left for maior adiciona ao array principal
            array[index_of_merged_array] = right_array[index_of_sub_array_two] 
            index_of_sub_array_two += 1
        end
        index_of_merged_array += 1
    end

    #Loop para quando um subarray (left or right) tem mais elementos que o outro
    #Adiciona o elemento sobrando no array principal
    while (index_of_sub_array_one < sub_array_one)
        array[index_of_merged_array] = left_array[index_of_sub_array_one]
        index_of_sub_array_one += 1
        index_of_merged_array += 1
    end

    while (index_of_sub_array_two < sub_array_two)
        array[index_of_merged_array] = right_array[index_of_sub_array_two]
        index_of_sub_array_two += 1
        index_of_merged_array += 1
    end
end 

#Organizar o array
def merge_sort(array, begin_index, end_index)
    if begin_index >= end_index #Verifica se tem mais de um elemento
        return
    end
        
    mid = begin_index + (end_index - begin_index) / 2 #Variavel que calcula o indice do meio
    merge_sort(array, begin_index, mid) #organiza o subarray left
    merge_sort(array, mid + 1, end_index) #organiza o subarray right
    merge(array, begin_index, mid, end_index) #juntar os 2 arrays ordenados em 1 só
    end 

def print_array(array)
    array.each do |element|
        print "#{element} "
    end
end

# Driver code
array = [12, 11, 13, 5, 6, 7]
array_size = array.length

puts "Given array is:"
print_array(array)

merge_sort(array, 0, array_size - 1)

puts "\nSorted array is:"
print_array(array)
