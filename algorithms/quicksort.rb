#QuickSort - ORdenação rápida
#Escolhe um elemento como um pivô e particiona o array dado em torno do pivô escolhido colocando o pivô em sua posição correta no array ordenado.

# 1° - Particione o intervalo a ser classificado (inicialmente o intervalo é de 0 a N-1 ) e retorne a posição correta do pivô (digamos pi ).
# 1°.1 - Selecione o valor mais à direita do intervalo para ser o pivô.
# 1°.2 - Itere da esquerda e compare o elemento com o pivô e execute a partição conforme mostrado acima.
# 1°.3 - Retorne a posição correta do pivô.
# 2° - Chame recursivamente o quicksort para a parte esquerda e direita do pi 

def swap(array, a, b) #função de troca valor de A e B dentro do array
    t = array[a]
    array[a] = array[b] 
    array[b] = t
end 

def partition(array, low, high)
    pivot = array[high] #Selecionando o pivor como ultimo numero do array
    i = low - 1
    for j in low..high-1
        if array[j] < pivot
            i += 1
            swap(array, i, j)
        end 
    end 
    swap(array, i+1, high)    
    return i+1
end 

def quicksort(array, low=0, high=nil)
    if high == nil
        high = array.length - 1 #defini a high como variavel
    end 
    
    if low < high 
        pivot_index = partition(array, low, high)
        quicksort(array, low, pivot_index - 1)
        quicksort(array, pivot_index + 1, high)
    end 
    return array 
end 

array = [1, 5, 7, 8, 9, 10]

puts quicksort(array)