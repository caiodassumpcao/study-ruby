#Dado um array, gire-o para a direita em k elementos. 
# array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# k = 3
# reverse array = {8, 9, 10, 1, 2, 3, 4, 5, 6, 7}

def revers(array, k)

    for i in 1..k
        temp = array.pop #Remove o ULTIMO elemento e armazena numa variavel "temp"
        array.unshift(temp) #Adiciona a variavel temp(ultimo elemento) no INICIO do array
    end

    return array
end

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
k = 3
puts "Old array: #{array}"
puts "New array: #{revers(array, k)}"


