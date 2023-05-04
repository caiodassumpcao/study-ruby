#Job sequencing - Sequenciamento de tarefas

# Matriz contem trabalhos
# Cada trabalho contem prazo e lucro se o trabalho for concluído antes do prazo
# Cada trabalho leva uma und de tempo. Logo o prazo minimo para cada trabalho = 1
# Maximize o lucro total se apenas um trabalho puder ser agendado por vez

a = [4, 20]
b = [1, 10]
c = [1, 40]
d = [1, 30]

class job 
    attr_acessor :prazo, :lucro

    def initialize(id, prazo, lucro)
        @id = id
        @prazo = prazo
        @lucro = lucro
    end 

    def compare(job1, job2)
        job2.lucro -  job1.lucro
    end 

    def min(num1, num2)
        num1 > num2 ? num2 : num1 #Operador ternário (? x : y) - Retorna o maior entre os 2 comparados(x e y)
    end 
