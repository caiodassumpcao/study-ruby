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
  
    index_of_sub_array_one = 0
    index_of_sub_array_two = 0
    index_of_merged_array = left