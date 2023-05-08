# Paper Cut into Minimum Number of Squares - Papel cortado em um número mínimo de quadrados

# Encontre um numero mínimo de quadrados que podem ser cortados do papel

#Entrada: 13 x 29
#Saída: 9
#Explicação:
#2 (quadrados de tamanho 13x13) +
#4 (quadrados de tamanho 3x3) +
#3 (quadrados de tamanho 1x1)=9

def cut(a, b)
    result = 0
    rem = 0 
    
    if a < b 
        a, b = b, a #troca de objeto
    end 

    while b > 0 
        div = a / b
        rem = a % b
        result += div 
        a = b 
        b = rem 
    end 

    return result
end 

a = 13
b = 29 

total_area = a * b 
min_size = cut(a, b)
min_squares = total_area / (min_size**2)

puts cut(a, b)

    