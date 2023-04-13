#Esse algoritmo é uma junção do algoritmo de Kruskal e de Prim  

#Existe um truque fácil para resolver esta questão que é sempre escolher o menor elemento do array A[] e seus adjacentes, deletar o elemento adjacente e copiar o menor 
#para o array B[]. Novamente, para a próxima iteração, temos o mesmo menor elemento e qualquer elemento adjacente aleatório que deve ser excluído. Após n-1 operações,
#todos os elementos de A[] foram excluídos, exceto o menor e, ao mesmo tempo, o array B[] contém “n-1” elementos e todos são iguais ao menor elemento do array A[]. 
#Assim, a soma total da matriz B[] é igual ao menor * (n-1) .

def min_sum(array, n)
  valo_minimo = array.min
  return valo_minimo * (n-1)
end
 

array = [3, 6, 2, 8, 7, 5]
n = array.length

puts min_sum(array, n)
