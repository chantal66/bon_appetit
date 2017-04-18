require_relative 'recipe'

class Pantry

  attr_reader :stock
  attr_accessor :amount
              
              
  def initialize
    @stock = {}
    @amount = []
  end

  def stock_check(ingredient)
    @amount << stock.values.join.to_i
    @amount.reduce(:+)
  
  end

  def restock(ingredient, amount)
    stock[ingredient] = amount
  end
end
