#Entrada: arr[]={“22/4/1233”, “1/3/633”, “23/5/56645”, “4/12/233”}, Q = 2, 
#Consulta[] = {“ 23/3/4345”, “12/3/2”}
#Saída:
#23/5/56645
#4/12/233

require 'date'

array = ["22/4/1233", "1/3/633", "23/5/56645", "4/12/233"]
q = ["12/3/2", "23/3/4345", "1/3/633"]

def find_date(array)
    inicio = 0 
    tamanho = array.length
    fim = tamanho - 1

    date_array = array.map { |str| Date.strptime(str, "%d/%m/%Y") } #transformar os objetos do array em data
    date_q = q.map { |str| Date.strptime(str, "%d/%m/%Y") }

    sorted_date_array = date_array.sort

    puts sorted_date_array
    
    while inicio <= fim
        meio = (inicio + fim) / 2

        if sorted_date_array[meio] == date_q 
            return meio 
        elsif sorted_date_array [meio] < date_q
            inicio = meio + 1
        else 
            fim = meio - 1
        end
    end
    return -1

end 

indice = find_date(array) + 1

if indice == -1
  puts "A data não foi encontrada"
else
  puts "A data foi encontrada no índice #{indice} #{q}"
end

