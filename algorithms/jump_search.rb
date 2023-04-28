# Jump seach - pesquias de salto
# utiliza mesma ideia do binary search
# Elementos: array[]; n(tamanho do array); m(tamanho do salto); x(elemento procurado)
# procuramos nos indices arr[0], arr[m], arr[2m]…..arr[km] 
# Encontra o intervalo (arr[km] < x < arr[(k+1)m])
# Realizamos a busca linear a partir do indice array(km) até encontrar x
# elementos:
# array: (0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610)
# x = 55
# m = 4
# 1° - Ordenar array (caso não esteja ordenado)
# 2° - Saltar os indices em m até encontrar x ou um número > x
# 3° - Retroceder um jump(m)
# 4° - Realizar busca linear 
# 5° - Output do número encontrado


puts "Digite um número"
x = gets.chomp.to_i
array = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
n = array.length - 1 

def jump_search(array, x, n)
    inicio = 0
    m = 0 #variavel de pulo
    k = 4 #variavel que adiciona o pulo 4, a variavel m

    while inicio <= n

        if array[m] == x #se x for numero do meio 
            index = m
            return index #retorna indice do numero encontrado
        elsif array[m] < x 
            inicio = m
            m += k
        else array[m] > x
            inicio = m - k
            m -= k

            for i in m..n
                if array[i] == x
                    index = i
                    return index 
                end 
            end 
            return -1 
        end

        inicio += k
    end 
    
    return -1 
end 

resultado = jump_search(array, x, n)

if resultado == -1 
    puts "número não encontrado" 
else 
    puts "O número #{x} foi encontrado no índice #{resultado}"
end




