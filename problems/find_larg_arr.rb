#Encontre os três maiores elementos distintos em uma matriz
#Entrada: arr[] = {10, 4, 3, 50, 23, 90}
#saída: 90, 50, 23

def fnd_larg_arr(array)
    array.sort! #array ta arrumado em forma crescente
    array.reverse! # Colocando em ordem decrescente
    puts "array organizado: #{array}"

    for i in (0..2)        
        array.delete(array[0]) #removendo o maior numero
    end

    return array #retorna o array atualizado
end

array = [0, 4, 3, 50, 23, 90]

puts "New array: #{fnd_larg_arr(array)}"
