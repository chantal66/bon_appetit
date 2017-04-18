require './lib/pantry'
require './lib/recipe'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class PantryTest < Minitest::Test
  def test_it_exists
    pantry = Pantry.new 

    assert_instance_of Pantry, pantry
  end

  def test_it_returns_a_hash
    pantry = Pantry.new
    result = pantry.stock
    
    assert result.is_a? Hash
  end

  def test_it_can_check_the_stock

    pantry = Pantry.new
    ingredient = Recipe.new('Cheese')
    ingredient.add_ingredient('Cheese', 0) 
    # binding.pry
 
    assert_equal 0, pantry.stock_check("Cheese")
  end

  def test_it_can_restock_an_item
    skip
    pantry = Pantry.new
    pantry.restock("Cheese", 10)

    assert_equal 10, pantry.stock_check("Cheese")
  end
end

