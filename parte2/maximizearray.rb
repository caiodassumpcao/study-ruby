#Entrada: arr[] = {-2, 0, 5, -1, 2}, K = 4
#Saída: 10
#Explicação:
#1. Substitua (-2) por -(-2), a matriz se torna {2, 0, 5 , -1, 2}
#2. Substitua (-1) por -(-1), a matriz torna-se {2, 0, 5, 1, 2}
#3. Substitua (0) por -(0), a matriz torna-se {2, 0, 5, 1, 2}
#4. Substitua (0) por -(0), a matriz se torna {2, 0, 5, 1, 2}

#exercicio prático: arr[] = {9, 8, 8, 5}, k = 3

#primeiro vamos ordenar o arr

def max_soma (array, k)
    array_ord = array.sort!
    x = 0 #variavel para identificar se tem numero negativo ou 0 

    for i in (0..k) 
        if array[i] < 0
            array[i] = -array[i]
        elsif array[i] == 0 
            numero_zero += 1
        else    
            x += 1
        end
    end

    until x = 0 
        do 






