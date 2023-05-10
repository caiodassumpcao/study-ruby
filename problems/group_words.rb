#Group words with same set of characters - Agrupar palavras com o mesmo conjunto de caracteres

#entrada - palavras[] = { "pode", "aluno", "alunos", "cachorro", "studentssess", "deus", "gato", "agir",
#"tab", "morcego", "fluxo", "lobo", "cordeiros", "amy", "inhame", "bálsamo", "looped", "poodle"};



def get_key(str)
  max_char = 26
  visited = Array.new(max_char, false)

  str.each_char do |char|
    visited[char.ord - 'a'.ord] = true #Adiciona "true" para cada char da string
  end

  key = ""
  for j in 0...max_char
    if visited[j]
      #('a'.ord) -> retorna indice correspondente da letra do alfabeto
      #(+ j) -> representa o indice da letra no array visited
      #().chr -> Converte o valor do index em caractere.
      key += ('a'.ord + j).chr
    end
  end

  return key
end

def word_same_char(words)
  hash = Hash.new { |h, k| h[k] = [] } #Cria novo hash de chave k e valor vazio

  words.each_with_index do |word, i| #Intera sobre cada elemento do array Word e seu index i
    key = get_key(word) #pega a key da palabra word
    hash[key] << i #Adiciona a chave key como novo Hash(se ñ existir) e um indice de valor i
  end

  hash.each do |key, indexes| #Percorre todo index retornando chave(key) e valor(indexes)
    indexes.each do |index|
      print " #{words[index]},"
    end
    puts
  end
end

words = ["may", "student", "students", "dog", "studentssess",
 "god", "cat", "act", "tab", "bat", "flow", "wolf", "lambs",
 "amy", "yam", "balms", "looped", "poodle"]

word_same_char(words)
