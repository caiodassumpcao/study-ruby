#Entrada: arr[]={“22/4/1233”, “1/3/633”, “23/5/56645”, “4/12/233”}, Q = 2, 
#Consulta[] = {“ 23/3/4345”, “12/3/2”}
#Saída:
#23/5/56645
#4/12/233

require 'date'

array = array.map {|string| Date.strip(string, "%d/%m/%Y")}