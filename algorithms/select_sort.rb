#Algoritmo de Ordenação por seleção 
# A classificação por seleção é um algoritmo de classificação simples e eficiente que funciona selecionando repetidamente o menor (ou maior) elemento da parte não classificada da lista e movendo-o para a parte classificada da lista. 
# Ordena a lista comparando 2 elementos adjacentes e movendo a posição

# 1° - Inicialize o valor minimo (min_idx) para o local 0
# 2° - Percorrer e encontrar o elemento minimo da matriz
# 3° - Se algum algoritmo percorrido do array for menor que (min_idx) troque a posição dos dois elementos
# 4° - Repita até a matriz se classificar


def swap(xp, yp) #função de troca
    temp = xp
    xp = yp 
    yp = temp
    return xp, yp
end 

def select_sort(array, n)

    for i in 0...n-1 
        min_idx = i 
        for j in i+1...n #Encontrar o objeto de menor valor
            if array[j] < array[min_idx] #Verifica se o elemento atual array[j] é menor que o elemento armazenado em min_inx 
                min_idx = j
            end
        end

        if min_idx != i #troca de posição/index
            array[i], array[min_idx] = swap(array[i], array[min_idx])
        end
    end
end

def print_array(array, size)
    for i in 0..size-1
        puts array[i]
    end 
    puts "\n" # pular uma linha
end 

array = [64, 25, 12, 22, 11]
n = array.size
select_sort(array, n)
puts "sorted array: \n"
print_array(array, n)
   