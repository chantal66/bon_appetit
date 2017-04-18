require_relative 'recipe'

class Pantry

  attr_reader :stock
  attr_accessor :amount
              
              
  def initialize
    @stock = {}
    @amount = []
    @shopping_list = []
  end

  def stock_check(ingredient)
    @amount << stock.values.join.to_i
    @amount.reduce(:+)
  
  end

  def restock(ingredient, amount)
    stock[ingredient] = amount
  end

  def add_to_shopping_list(r)
    r.ingredients.each do |ingredient|
      @shopping_list << ingredient
    end
    @shopping_list.to_h 
  end
end
