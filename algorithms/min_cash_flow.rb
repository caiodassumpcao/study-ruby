# Minimize Cash Flow - Minimizar o fluxo de caixa

# 1° - Calcule o valor líquido para cada pessoa. O valor líquido da pessoa 'i' pode ser calculado subtraindo a soma de todas as dívidas da soma de todos os créditos.
# 2° - Encontre as duas pessoas que são credor máximo e devedor máximo. Seja o valor máximo a ser creditado do credor máximo maxCredit e o valor máximo a ser debitado do devedor máximo maxDebit. Seja o devedor máximo Pd e o credor máximo Pc.
# 3° - Encontre o mínimo de maxDebit e maxCredit. Deixe mínimo de dois ser x. Debitar 'x' de Pd e creditar esse valor em Pc
# 4° - Se x for igual a maxCredit, então remova Pc do conjunto de pessoas e repita para as pessoas restantes (n-1).
# 5° - Se x for igual a maxDebit, então remova Pd do conjunto de pessoas e repita para as pessoas restantes (n-1).

N = 3

def get_min(array) #retorna o minimum index
  min_ind = 0
  (1...N).each do |i|
    min_ind = i if array[i] < array[min_ind]
  end
  min_ind
end

def get_max(array) #retorna o maximum index
  max_ind = 0
  (1...N).each do |i|
    max_ind = i if array[i] > array[max_ind]
  end
  max_ind
end

def min_of_2(x, y) #retorna o menor entre 2 valores
  x < y ? x : y
end

def min_cash_flw(amount)
  mx_credit = get_max(amount)#pegando valor max a pagar
  mx_debit = get_min(amount) #pegando valor min a receber

  return if amount[mx_credit] == 0 && amount[mx_debit] == 0

  min = min_of_2(-amount[mx_debit], amount[mx_credit])
  amount[mx_credit] -= min
  amount[mx_debit] += min

  puts "Person #{mx_debit} pays #{min} to Person #{mx_credit}"

  min_cash_flw(amount)
end

def calculate_cash_flw(graph)

  amount = Array.new(N, 0)

  (0...N).each do |p|
    (0...N).each do |i|
      amount[p] += graph[i][p]  -graph[p][i]
    end
  end

  min_cash_flw(amount)

end

graph = [
  [0, 1000, 2000],
  [0, 0, 5000],
  [0, 0, 0]
]

calculate_cash_flw(graph)
