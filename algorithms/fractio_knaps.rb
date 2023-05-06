#Fractional Knapsack Problem - Problema da Mochila Fracionária  

# Obter o maior lucro total na mochila
# N itens de forma {lucro, peso}
# W = Capacidade da mochila

require 'pry'

class Item 
    attr_accessor :weight, :profit

    def initialize(weight, profit)
        @weight = weight
        @profit = profit

    end 
 

    def to_s
        "#{@weight}-#{@profit}"
    end 

end 

def max(num1, num2) 
    num1 > num2 ? num2 : num1 #Operador ternário (? x : y) - Retorna o menor entre os 2 comparados(x e y)
end 

def compare(a, b)
    razao_a = a.profit / a.weight
    razao_b = b.profit / b.weight
    razao_b = razao_a #comparando resultados
end 

def razao(array, n)
    
    array.sort! { |a, b| compare(a, b) } 

    res = 0
    w = 50

    for i in 0..n do
        if array[i].weight < w 
            w -= array[i].weight
            res += array[i].profit
        else 
            fracao_w = w / array[i].weight # porcentagem
            res += fracao_w * array[i].profit #lucro em %
            w -= fracao_w * array[i].weight #Peso em % (oque faltava)
        end 
    end
    return res 
end 

array = [
    Item.new(2, 100), 
    Item.new(1, 19), 
    Item.new(2, 27), 
]

n = array.length 
puts "Lucro máximo obtido:"
razao(array, n)

