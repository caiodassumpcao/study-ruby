puts "Digite um numero:"
numero = gets.chomp.to_i

array = [10, 20, 30, 50, 60, 80, 110, 130, 140, 170]

def busca_binaria(array, numero)
    inicio = 0 
    tamanho = array.length
    fim = tamanho - 1

    while inicio <= fim
        meio = (inicio + fim) / 2

        if array[meio] == numero 
            return meio 
        elsif array[meio] < numero
            inicio = meio + 1
        else 
            fim = meio - 1
        end
    end
    return -1
end

indice = busca_binaria(array, numero) + 1

if indice == -1 
    puts "O número não foi encontrado, logo não existe na lista."
else 
    puts "O número foi encontrado no índice #{indice}"
end


