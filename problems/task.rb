#saber as task do dia

def tasks
    tasks_array = [] 
    x = 0 #variavél para cancelar o loop (cancela quando x = 1)
    limit_task = 15 #variavel define limite de task
    
    
    while x == 0 
        puts "digite a task de hoje"
        task = gets.chomp
        tasks_array << task 

        puts "Tem mais alguma task? (Y/N)"
        more_task = gets.chomp 

        break if more_task.downcase == "n"
    end

    return tasks_array
end 

tasks_array = tasks

puts "Suas task de hoje são:"
tasks_array.each do |task| 
    puts "- #{task}"
end


        

        

