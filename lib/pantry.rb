require_relative 'recipe'

class Pantry

  attr_reader :stock
              

  def initialize
    @stock = {}
  end

  def put(ingredient)
    stock[ingredient]
  end

  # def stock_check(ingredient)
  #   stock.length
  # end

  # def restock
    
  # end
end
