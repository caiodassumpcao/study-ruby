#Contar letras maiúsculas, minúsculas, caracteres especiais e valores numéricos

def count_strg(string)
    #criando variaveis de contador
    upper = 0
    lower = 0
    number = 0
    special = 0

    string.each_char do |char| #char = caracteres
        if char.match?(/[A-Z]/) #match = corresponder
            upper += 1
        elsif char.match?(/[a-z]/)
            lower += 1
        elsif char.match?(/\d/) 
            number += 1
        else 
            special += 1 
        end 
    end


    puts "Letras maiusculas: #{upper}"
    puts "Letras minusculas: #{lower}"
    puts "Números: #{number}"
    puts "Caracteres especiais: #{special}"
end

string = "#GeeKs01fOr@gEEks07"
count_strg(string)

string = "*GeEkS4GeEkS*"
count_strg(string)