#Pesquisa binária
puts "Digite um numero:"
numero = gets.chomp.to_i

array = [10, 20, 30, 50, 60, 80, 110, 130, 140, 170]

def busca_binaria(array, numero)
    inicio = 0 
    tamanho = array.length #tamanho do array
    fim = tamanho - 1 #usamos -1 pois o array começa em 0 e o array.length começa a contagem com 1

    while inicio <= fim #loop do inicio(0) até o fim (tamanho do arrai)
        meio = (inicio + fim) / 2  #começa a busca pela metade do array, aumentando a probabilidade de acerto

        if array[meio] == numero # achou o numero no meio
            return meio 
        elsif array[meio] < numero #Número é menor q o meio
            inicio = meio + 1
        else #Número é maior q o meio
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


