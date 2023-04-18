#Encontre a soma máxima igual de cada três pilhas

#Algoritmo para resolver este problema: 

#1.Encontre a soma de todos os elementos de em pilhas individuais.
#2.Se a soma das três pilhas for a mesma, essa será a soma máxima.
#3.Caso contrário, remova o elemento superior da pilha com a soma máxima entre três das pilhas. Repita o passo 1 e o passo 2.

def find_max(array1, array2, array3, n1, n2, n3)
    #inicia a soma dos array em 0
    soma1 = array1.sum 
    soma2 = array2.sum
    soma3 = array3.sum

    #inicia numeros do topo de cada array em 0
    top1 = 0
    top2 = 0
    top3 = 0

    #soma da pilha 1
    for i in 0..n1-1
        soma1 += array1[i]
    end 
  
    #soma da pilha 2
    for i in 0..n2-1
        soma2 += array2[i]
    end 
    #soma da pilha 3
    for i in 0..n3-1
        soma3 += array3[i]
    end 

    while true 
        #Verifica se alguma pilha ta vazia
        if top1 == n1 || top2 == n2 || top3 == n3 
            return 0
        end

        #Se a soma das pilhas é igual
        if soma1 == soma2 && soma3 == soma1 
            return soma1
        end

        #Encontrar a maior soma e remover o numero do topo
        if soma1 >= soma2 && soma1 >= soma3
            soma1 -= array1[top1]
            top1 += 1 
        elsif soma2 >= soma1 && soma2 >= soma3
            soma2 -= array2[top2]
            top2 += 1
        else soma3 >= soma1 && soma3 >= soma2
            soma3 -= array3[top3]
            top3 += 1
        end
    end
end

array1 = [3, 2, 1, 1, 1]
array2 = [4, 3, 2]
array3 = [1, 1, 4, 1]

n1 = array1.length
n2 = array2.length
n3 = array3.length

puts find_max(array1, array2, array1, n1, n2, n3)


