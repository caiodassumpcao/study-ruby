def tokenize(s, del)
    res = []
    start = 0
    end_pos = -1 * del.size
    loop do
        start = end_pos + del.size
        end_pos = s.index(del, start)
        res.push(s[start, end_pos - start]) if end_pos
    end until end_pos.nil?
    res
end

# Função de comparação para comparar as duas datas
def comp(s, t)
    # Dividir as strings de datas quando encontrar uma "/"
    ss = tokenize(s, "/")
    tt = tokenize(t, "/")

    date1 = []
    date2 = []

    # Armazenar as datas em forma de arrays
    for i in 0..2
        date1.push(ss[i].to_i)
        date2.push(tt[i].to_i)
    end

    # Se os anos não forem iguais
    if date1[2] != date2[2]
        return date1[2] - date2[2]
    # Se os meses não forem iguais
    elsif date1[1] != date2[1]
        return date1[1] - date2[1]
    # Se os dias não forem iguais
    elsif date1[0] != date2[0]
        return date1[0] - date2[0]
    end

    # Se as duas datas forem iguais
    return 0
end

# Função para imprimir a próxima data mais próxima
def next_closest_date(arr, q)
    # Ordenar o array de datas
    arr.sort! { |s, t| comp(s, t) }

    # Realizar a busca binária para responder às consultas
    l = 0
    r = arr.size - 1
    ind = -1

    # Iterar até l <= r
    while l <= r
        # Encontrar o valor do meio m
        m = (l + r) / 2

        # Chamada da função de comparação
        c = comp(q, arr[m])

        # Se a função de comparação retornar 0,
        # a próxima data mais próxima foi encontrada
        if c == 0
            ind = m
            break
        # Se a função de comparação retornar um valor
        # menor que 0, buscar na metade esquerda
        elsif c < 0
            r = m - 1
            ind = m
        # Se a função de comparação retornar um valor
        # maior que 0, buscar na metade direita
        else
            l = m + 1
        end
    end

    # Retornar o resultado
    if ind == -1
        return "-1"
    else
        return arr[ind]
    end
end

# Função para realizar as consultas
def perform_queries(arr, q)
    # Percorrer as consultas de datas
    for i in 0...q.size
        # Chamada da função
        puts next_closest_date(arr, q[i])
    end
end

# Código principal
# Array de datas dado
arr = ["22/4/1233", "1/3/633", "23/5/56645", "4/12/233"]

# Consultas dadas
q = ["