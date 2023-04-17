#Uma solução melhor é usar os fatos abaixo.  

#1.Se houver um número par de números negativos e nenhum zero, o resultado será o produto de todos, exceto o número negativo de maior valor.
#2.Se houver um número ímpar de números negativos e nenhum zero, o resultado é simplesmente o produto de todos.
#3.Se houver zeros e positivo, nenhum negativo, o resultado é 0. O caso excepcional é quando não há número negativo e todos os outros elementos positivos, então nosso resultado deve ser o primeiro número positivo mínimo.

def minimo_product(array)
    n = array.length
    return a[0] if n == 0 

    max_nega = -Float::INFINITY #Variavel MENOR numero: iniciada com -infinito
    max_posi = Float::INFINITY #Variavel MAIOR numero: iniciada com +infinito 
    count_nega = 0 #Variavel contagem de numeros negativos 
    count_zero = 0 #Variavel contagem de numeros negativos 
    product = 1 #Variavel que guarda o produto todos numeros NAO NEGATIVOS

    array.each do |num|
        if num == 0 