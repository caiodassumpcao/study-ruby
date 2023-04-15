def minimo_product(array)
    n = array.length
    min_product = Float::INFINITY #INICIAR O min_product com infinito   

    (1..n).each do |len|

        (0..n-len).each do |i|
