#Uma solução melhor é usar os fatos abaixo.  

#1.Se houver um número par de números negativos e nenhum zero, o resultado será o produto de todos, exceto o número negativo de maior valor.
#2.Se houver um número ímpar de números negativos e nenhum zero, o resultado é simplesmente o produto de todos.
#3.Se houver zeros e positivo, nenhum negativo, o resultado é 0. O caso excepcional é quando não há número negativo e todos os outros elementos positivos, então nosso resultado deve ser o primeiro número positivo mínimo.

def min_product(array)
    n = array.length
    return a[0] if n == 0 

    max_nega = -Float::INFINITY #Variavel MENOR numero: iniciada com -infinito
    min_posi = Float::INFINITY #Variavel MAIOR numero: iniciada com +infinito 
    count_nega = 0 #Variavel contagem de numeros negativos 
    count_zero = 0 #Variavel contagem de numeros negativos 
    product = 1 #Variavel que guarda o produto todos numeros NAO NEGATIVOS

    array.each do |num|
        if num == 0 
            count_zero += 1
            next #Se o numero for zero vai pular todas as interações do .each
        end

        if num < 0 
            count_nega += 1
            max_nega = [max_nega, num].max #encontra o MAIOR numero NEGATIVO 
        end

        if num > 0
            min_posi = [min_posi, num].min #Encontra o MENOR numero POSITIVO
        end
    end

    if count_zero == n || (count_zero > 0 && count_nega == 0 ) 
        return 0 
    end

    if count_nega == 0 
        return min_posi
    end

    if !(count_nega % 2).zero?
        product /= max_nega
    end

    return product
end

array = [-1, -1, -2, 4, 3]
puts min_product(array)
    