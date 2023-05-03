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

def quicksort(array)
    pivot = array[-1] #Selecionando o pivor como ultimo numero do array
    n = array.length - 2
    x = -1
    for i in 0..n 
        if array[i] > pivot
            swap(array, i, x)
        end 
    end 
    dsad 
