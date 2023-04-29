# Pesquisa de Fibonacci - Fibonacci Search 
# Dado um array[], encontra o Numero x retorne-o e indique seu indice caso esteja presente no array
# A sequencia de Fibonacci divide a matriz dada em partes desiguais
# Não usa o operador de divisão, usa + e -.
# A Pesquisa de Fibonacci examina elementos relativamente próximos nas etapas subsequentes. 

# Definição de numero de fibonacci: F(n) = F(n-1) + F(n-2), F(0) = 0, F(1) = 1.
# Numeros de fibonacci: 0 , 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, … 

#ALGORITMO:
# 1° - Encontrar o primeiro número de Fibo que seja menor ou igual ao comprimento da matriz (m)
# 2° - Os 2 numeros que precedem m... fibm1 [(m-1)] e fibm2[(m-2)]
# 3° - Compare x com o ultimo elemento do intervalo fibm2 "fibm2(1) = 1"
# 4° - Se x corresponder retorne o indice 
# 5° - Se x for menor, mova as tres variáveis de fibonacci 2 casas para baixo, indicando a eliminação de aproximadamente dois terços traseiros da matriz restante
# 6° - Se x for maior, mova as tres variáveis de fibonacci 1 casa para baixo, indicando a eliminação de aproximadamente um terço da matriz restante
# 7° - Como pode haver 1 unico elemento restante para comparação, verifique se fibm1 é 1.
# 8° - Se o elemento comparado antes for 1, compare com x e se corresponder retorne o indice.


def fibonacci_search(array, n, x)
    return -1 if n == 0 # retorna -1 se o tamanho do array for 0
    
    # inicializa os números de fibonacci
    fib1 = 0
    fib2 = 1
    fib3 = fib1 + fib2

    # encontra o menor número de Fibonacci maior ou igual a n
    while fib3 <= n
        fib1 = fib2
        fib2 = fib3
        fib3 = fib1 + fib2
    end 

    offset = -1 # inicializa a variável de divisão como -1

    while fib2 > 1 # continua a busca enquanto houver um intervalo para procurar
        i = [offset + fib1, n - 1].min # encontra o índice a ser comparado, adicionando offset e fib1, e evitando que i seja maior que n - 1

        if array[i] < x
            fib3 = fib2
            fib2 = fib1
            fib1 = fib3 - fib2
            offset = i
        elsif array[i] > x
            fib3 = fib1
            fib2 -= fib1 # altera o valor de fib2 subtraindo fib1
            fib1 = fib3 - fib2
        else
            return i # se x é igual ao valor no índice i, retorna o índice
        end 
    end 

    if fib2 == 1 && array[offset + 1] == x
        return offset + 1
    else 
        return -1 # se x não foi encontrado no array, retorna -1
    end 
end 

# Teste
array = [2, 3, 4, 10, 40]
n = array.length
x = 10
ind = fibonacci_search(array, n, x)
puts ind