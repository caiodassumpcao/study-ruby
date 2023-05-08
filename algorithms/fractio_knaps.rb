require 'pry'

class Item 
  attr_accessor :weight, :profit

  def initialize(weight, profit)
    @weight = weight
    @profit = profit
  end 

  def to_s
    "#{@weight}-#{@profit}"
  end 
end 

def compare(a, b)
  b.profit.to_f / b.weight <=> a.profit.to_f / a.weight
end 

def razao(array, max_weight)
  array.sort! { |a, b| compare(a, b) } 

  total_profit = 0
  remaining_weight = max_weight

  array.each do |item|
    if remaining_weight >= item.weight
      total_profit += item.profit
      remaining_weight -= item.weight
    else
      fraction = remaining_weight.to_f / item.weight
      total_profit += fraction * item.profit
      break
    end
  end

  return total_profit 
end 

array = [
  Item.new(20, 100), 
  Item.new(10, 60), 
  Item.new(30, 120), 
]

max_weight = 50
puts "Lucro máximo obtido:"
puts razao(array, max_weight) 
