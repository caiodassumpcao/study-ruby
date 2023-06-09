#Find Missing Number - Encontra o número que falta

#Encontrar o numero que falta no array[1 até N] onde N é o ultimo numero inteiro do array
#Exp: Entrada: arr[] = {1, 2, 4, 6, 3, 7, 8}, N = 8
#Saída: 5
#Explicação: O número que falta entre 1 a 8 é 5
# Usa a abordagem HASHING(https://www-geeksforgeeks-org.translate.goog/what-is-hashing/?_x_tr_sl=auto&_x_tr_tl=pt&_x_tr_hl=pt-BR)

# 1° Criar matriz temporaria de tamanho n + 1 com todos valores iniciais como 0: temp[]
# 2° Atravessar a matriz de entrada(array[]) para cada array[i]
#       if(temp[array[i]]) == 0 e temp[array[i]] = 1
#3° Atravessar temp[] e imprimir o elemento da matriz com valor 0(valor faltando)



def find_miss_num(array)

    temp = Array.new(n + 1, 0) # temp = [0, 0, 0, 0, 0, 0]
   
    for i in 0...n # 2° etapa 
        temp[array[i] - 1] = 1
    end

    x = nil #declara uma varavel como vazio
    
    for i in 0..n 
        if temp[array[i]] == 0
        x = 1 + 1 # Atribui o valor da posição não marcada em temp + 1 à variável
        break
        end
    end

    puts x 
end 

array = [1, 2, 3, 5]
n = array.size 
find_miss_num(array, n)

