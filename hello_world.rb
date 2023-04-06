# comentario em ruby usamos "#" - Imprimir Hello Word na tela
# puts "Hello word"

nome = 'Caio'

mensagem1 = "Bem vindo #{nome}"

mensagem2 = <<~MENSAGEM 
Olá #{nome}, bem vindo ao meu primeiro teste de ruby!
MENSAGEM

mensagem3 = %Q(Bienvenido #{nome})

puts mensagem1 
puts mensagem2
puts mensagem3  
#listagem de como definir strings em ruby

#nome = "Caio"
#nome = 'Caio'   
#nome = %q(Caio)

puts "O tamanho da minha mensagem 1 é: #{mensagem1.length()}"
puts "O tamanho da minha mensagem 2 é: #{mensagem2.length()}"
puts "O tamanho da minha mensagem 3 é: #{mensagem3.length()}"

#imprimir intervalo da string
puts nome[0,1] 

#repetir string X vezes
puts nome * 10 

#remover espaços no inicio e no final da string, 

nomecompleto = "  caio Dassumpção"

puts nomecompleto.strip
puts nomecompleto

# tudo maiusculo e minusculo - Ao colocar esclamação depois do comando ela transforma a string (up ou donw) permanentemente 

puts nomecompleto.upcase
puts nomecompleto.downcase.strip #minusculo + strip

#primeira letra maiusculo

puts nomecompleto.capitalize

#dividir strings 

testo = "caio está estudando_ruby"
testo2 = "caio está-estudando_ruby"

puts testo.split         # Vai dividir por palavra
puts testo2.split("-")   # Vai dividir a cada "-"

#imprimir 

puts nomecompleto
p nomecompleto
print nomecompleto

p nomecompleto[-1]

#imprimindo numero

idade = 24

puts "minha idade é %03d" % idade

mes = "nasci no mes de março".split

#sobrescrever um método (substituindo o + pelo -)

class Integer
    def +(outro_valor)
        self - outro_valor
    end
end

p 6 + 5 

#numero é par(even) ou impar(odd)

p 24.even?
p 24.odd?
