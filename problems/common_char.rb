#Common characters in n strings - Caracteres comuns em n strings

def common_char(string1, string2)
  repetido = []
  contagem = string2.chars
  string1.chars.each do |char|
    if contagem.include?(char)
      repetido << char
    else
      #somente operador logico para n ficar vazio
    end
  end

  puts "#{repetido}"
end

string1 = "apple"
string2 = "orange"

common_char(string1, string2)
