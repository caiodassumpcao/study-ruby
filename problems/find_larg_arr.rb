#Encontre os três maiores elementos distintos em uma matriz
#Entrada: arr[] = {10, 4, 3, 50, 23, 90}
#saída: 90, 50, 23

def fnd_larg_arr(array)
    array_tidy = array.sort! #tidy = Arrumado; array ta arrumado em forma crescente
    
    puts "array organizado: #{array_tidy}"
end

array = [0, 4, 3, 50, 23, 90]