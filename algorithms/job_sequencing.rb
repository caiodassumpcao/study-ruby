#Job sequencing - Sequenciamento de tarefas

# Matriz contem trabalhos
# Cada trabalho contem prazo e lucro se o trabalho for concluído antes do prazo
# Cada trabalho leva uma und de tempo. Logo o prazo minimo para cada trabalho = 1
# Maximize o lucro total se apenas um trabalho puder ser agendado por vez
require 'pry'

class Job 
    attr_accessor :id, :dead, :profit

    def initialize(id, dead, profit)
        @id = id
        @dead = dead
        @profit = profit
    end 
 

    def to_s
        "#{@id}-#{@dead}-#{@profit}"
    end 
end 

def compare(a, b) # Função de comparação para ordenar os trabalhos em ordem decrescente de lucro
    temp1 = a 
    temp2 = b
    temp2.profit - temp1.profit #retorna a diferença entre o lucro
end 

def min(num1, num2) 
    num1 > num2 ? num2 : num1 #Operador ternário (? x : y) - Retorna o menor entre os 2 comparados(x e y)
end 

def printjobscheduling(array, n) #Retorna o máximo lucro possível dos trabalhos

    array.sort! { |a, b| compare(a, b) } #Ordena em ordem decrescente de lucro

    result = Array.new(n) #Array para armazenar a sequencia de jobs em forma decrescente de lucro
    slot = Array.new(n, false) #Array para armazenar o "TEMPO", criando slots disponíveis. O valor "false" indica que o slot ainda n foi preenchido

    (0..n-1).each do |i| #interar por todos os Jobs
        #min - Retorna o menor valor entre 2 números ( compara "n" e "dead")
        #downto - Percorrer em ordem decrescente de prazo
        # J - Representa o indice do slot atual (Verificar se o slot ta livre)
        (min(n, array[i].dead) - 1).downto(0) do |j|

            #Slort livre encontrado 
            if slot[j] == false 
                result[j] = i # Add job ao resultado
                slot[j] = true #Transofrmando em slot ocupado
                break
            end 
        end 
    end 

    #Imprime resultado
    (0..n-1).each { |i| print "#{array[result[i]].id}" if slot[i] }
end 

#Programa principal
array = [
    Job.new('a', 2, 100), 
    Job.new('b', 1, 19), 
    Job.new('c', 2, 27), 
    Job.new('d', 1, 25), 
    Job.new('e', 3, 15), 
]

n = array.length 
puts "A seguinte sequência tem lucro máximo:"
printjobscheduling(array, n)









