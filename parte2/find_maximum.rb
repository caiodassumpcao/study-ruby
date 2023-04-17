#Encontre a soma máxima igual de cada três pilhas

#Algoritmo para resolver este problema: 

#1.Encontre a soma de todos os elementos de em pilhas individuais.
#2.Se a soma das três pilhas for a mesma, essa será a soma máxima.
#3.Caso contrário, remova o elemento superior da pilha com a soma máxima entre três das pilhas. Repita o passo 1 e o passo 2.

def find_max(array1, array2, array3)
    #inicia a soma dos array em 0
    soma1 = array1.sum 
    soma2 = array2.sum
    soma3 = array3.sum

    #inicia numeros do topo de cada array em 0
    top1 = 0
    top2 = 0
    top3 = 0

    
    loop do 
        #Verificar se alguma pilha está vazia
        if top1 == array1.size || top2 == array2.size || top3 == array3.size
            return 0
        end
        
        #Verificar se a soma das 3 já é igual 
        if soma1 == soma2 && soma2 == soma3
            return soma1
        end

        if soma1 >= soma2 

  