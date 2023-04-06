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