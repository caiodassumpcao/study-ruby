# Minimize Cash Flow - Minimizar o fluxo de caixa 

# 1° - Calcule o valor líquido para cada pessoa. O valor líquido da pessoa 'i' pode ser calculado subtraindo a soma de todas as dívidas da soma de todos os créditos.
# 2° - Encontre as duas pessoas que são credor máximo e devedor máximo. Seja o valor máximo a ser creditado do credor máximo maxCredit e o valor máximo a ser debitado do devedor máximo maxDebit. Seja o devedor máximo Pd e o credor máximo Pc.
# 3° - Encontre o mínimo de maxDebit e maxCredit. Deixe mínimo de dois ser x. Debitar 'x' de Pd e creditar esse valor em Pc
# 4° - Se x for igual a maxCredit, então remova Pc do conjunto de pessoas e repita para as pessoas restantes (n-1).
# 5° - Se x for igual a maxDebit, então remova Pd do conjunto de pessoas e repita para as pessoas restantes (n-1).