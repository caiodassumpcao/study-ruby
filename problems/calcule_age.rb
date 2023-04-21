#Calcular a idade 

def calcule_age(data_nascimento)
    data_atual = Time.now  #utilizando a função "Time.now" para pegar data atual

    dif_segundos = data_atual - data_nascimento 

    dif_anos = dif_segundos / (60 * 60 * 24 * 365.25)

    dif_meses = (dif_segundos % (60 * 60 * 24 * 365.25)) / (60 * 60 * 24 * 30.44)

    dif_dias = (dif_segundos % (60 * 60 * 24 * 365.25)) % (60 * 60 * 24 * 30.44) / (60 * 60 * 24)

    return [dif_anos.to_i, dif_meses.to_i, dif_dias.to_i]
end

puts "Qual a sua idade? Use o formato a seguir: (aaaa, mm, dd)"
data_nascimento = Time.new(gets.chomp)

idade = calcule_age(data_nascimento)

puts "Idade: #{idade[0]} anos, #{idade[1]} meses e #{idade[2]} dias}"

