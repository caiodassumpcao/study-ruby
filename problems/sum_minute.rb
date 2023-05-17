# Program to find the time after K minutes from given time - Programa para encontrar o tempo depois de K minutos a partir do horário determinado

# Você recebe uma hora T no formato de 24 horas (hh:mm) e um inteiro positivo K, você deve informar a hora após K minutos no formato de 24 horas.

#Entrada: T = 12:43, K = 21 / Saída: 13:04

# 1° - Converter o tempo dado em minutos
# 2° - Adicione K a ele e deixe-o igual a M.
# 3° - Converta os minutos M no formato de 24 horas de acordo.

def convert_minut(time)
  # Converter a entrada "time" em minutos
  # (horas, minutos) -> Cria duas variáveis para armazenar a entrada de forma dividida
  # (t.split(":")) -> Divide a entrada "time" em ":"
  # (.map) -> Método de interação, utiliado para realocar o que foi dividido
  # (&to_i) == {|elemento| elemento.to_i } -> Realoca cada elemento nas variáveis "horas" e "minutos"
  horas, minutos = time.split(":").map(&:to_i)

  # Converte as horas em minutos e cria uma nova variável para "total_minutos"
  total_minutos = horas * 60 + minutos
end

def convert_horas(tempo)
  # Converter a entrada "tempo" em (hh:mm)
  h = tempo / 60 # Cria variavel que armazena as horas
  min = tempo % 60 # Cria variável que armazena os minutos
  h %= 24 # Formatar as horas dentro de 24h

  # Armazena o resultado no formato "hh:mm" em uma variável
  # (h.to_s) -> Converte o valor da variável horas para uma string
  # (min.to_s) -> Converte o valor da variável horas para uma string
  # [rjust(2, '0')] -> Define o tamanho da string em 2, e incrementa '0' a esquerda caso o tamanho não esteja de acordo como foi definido antes
  resultado = "#{h.to_s.rjust(2, '0')}:#{min.to_s.rjust(2, '0')}"
end

def findtime(t, k)
  total_minutos = convert_minut(t) # Converte entrada "t" em minutos
  minutes = total_minutos + k # Add a entrada "t" ao intervalo "k"
  resultado = convert_horas(minutes)
end

t = "12:43"
k = 21
resultado = findtime(t, k)
puts resultado









