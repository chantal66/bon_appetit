require_relative 'recipe'

class Pantry

  attr_reader :stock
              
  def initialize
    @stock = {}
    # @ingredient = Recipe.new
  end

  def stock_check("Cheese")

  end
end
