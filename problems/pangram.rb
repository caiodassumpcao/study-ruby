def pangram(string)
    alfabeto = ("a".."z").to_a #Criando array de alfabeto
    string.downcase.split("").each do |i|
        alfabeto.delete(i) if alfabeto.include?(i)
    end

    if alfabeto.empty? 
        puts "Essa string é pangram: #{string}"
    else 
        puts "Essa string não é pangram: #{string}"
    end

    puts "faltaram #{alfabeto.length} letras"
    puts "Segue letras que faltaram: #{alfabeto}"
end

pangram("welcome to geeksforgeeks")
pangram("The quick brown fox jumps")
pangram("The quick brown fox jumps over the lazy dog")