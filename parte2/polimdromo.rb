# Verificando se a palavra é um polindromo
print "Digite uma palavra"
palavra = gets.chomp.downcase
palavra_reversa = palavra.reverse

if palavra == palavra_reversa
    puts "#{palavra} é palindromo" 
else 
    puts "#{palavra} não é palindromo"
end