#Minimum sum - Soma minima 

#Encontre a soma mínima dos produtos de dois arrays de mesmo tamanho, dado que k modificações são permitidas no PRIMWEIRO array. Em cada modificação, um elemento do primeiro array pode ser aumentado ou diminuído em 2.

#Começando a estudar 
#Entrada: a[] = {1, 2, -3}
#b[] = {-2, 3, -5}
#k = 5



def min_sum(array1, array2, n, k)
    i = 0
    res = 0
    dif = 0

    for i in 0..n do
        pro = array1[i] * array2[i] # Faz a multiplicação por index entre os arrays
        res = res + pro # Soma os produtos(multiplicação) de cada index

        #Aplicando o fator K na multiplicação
        if (pro < 0 && array2[i] < 0) # Produto -, Array1 +, Array2 -;
            temp = (array1[i] + 2 * k) * array2[i]
        elsif (pro < 0 && array1[i] < 0) # Produto -, Array1 -, Array2 +;
            temp = (array1[i] - 2 * k) * array2[i]
        elsif (pro > 0 && array1[i] < 0) # Produto +, Array1 -, Array2 -;
            temp = (array1[i] + 2 * k) * array2[i]
        elsif (pro > 0 && array1[i] > 0) # Produto +, Array1 +, Array2 +;
            temp = (array1[i] - 2 * k) * array2[i]
        end 

        d = (pro - temp).abs #Diferença: produto sem alteração do K - produto com alteração do K

        if d > dif 
            dif = d #Define a maior diferença entre os index
        end 
    end 
    return res - dif 
end 


array1 = [2, 3, 4, 5, 4]
array2 = [3, 4, 2, 3, 2]
n = array1.length - 1
k = 3 # Quantidade de alterações

puts min_sum(array1, array2, n, k)
