#condicional 

puts "Qual livro você deseja?"

livro = gets.chomp
case livro 
when "Mais esperto que o diabo" 
    puts "Livro encontrado, no armário da cabeceira" 
when "O poder da ação" 
    puts "Livro não encontrado"
else 
    puts "Não temos esse livro"
end


