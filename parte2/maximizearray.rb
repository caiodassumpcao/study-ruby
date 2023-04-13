def min_sum(array, n)
  valo_minimo = array.min
  return valo_minimo * (n-1)
end
 

array = [3, 6, 2, 8, 7, 5]
n = array.length

puts min_sum(array, n)
