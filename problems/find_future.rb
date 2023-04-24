#Entrada: arr[]={“22/4/1233”, “1/3/633”, “23/5/56645”, “4/12/233”}, Q = 2, 
#Consulta[] = {“ 23/3/4345”, “12/3/2”}
#Saída:
#23/5/56645
#4/12/233

require 'date'

# Array de datas
date = ['22/4/1233', '1/3/633', '23/5/56645', '4/12/233']

datas = date.map { |data_str| Date.strptime(data_str, '%d/%m/%Y')}

# Obtém a entrada do usuário
puts "Digite uma data (formato: dd/mm/yyyy):"
input = gets.chomp

# Converte a entrada do usuário em um objeto de data
data_usuario = Date.strptime(input, '%d/%m/%Y')

# Verifica se a data do usuário existe no array de datas
if datas.include?(data_usuario)
  index = datas.index(data_usuario)
  puts "A data #{data_usuario.strftime('%d/%m/%Y')} existe na biblioteca, na posição #{index}."
else
  puts "A data #{data_usuario.strftime('%d/%m/%Y')} não existe no biblioteca."
end

