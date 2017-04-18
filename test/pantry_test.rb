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
    
    assert ({}), pantry
  end

  def test_it_can_it_check_the_stock
    pantry = Pantry.new

    assert_equal 0, pantry.stock_check('Cheese')
   end

  def test_it_can_restock_an_item
    pantry = Pantry.new
    pantry.restock("Cheese", 10)
    
    assert_equal 10, pantry.stock_check("Cheese")
  end

  def test_can_keep_track_of_ingredients
    skip
    pantry = Pantry.new
    pantry.restock("Cheese", 10)
    pantry.restock('Cheese', 20)
    # binding.pry
    assert_equal 30, pantry.stock_check('Cheese')
  end

  def test_can_receive_recipe_ingredients
    pantry
    
  end
end

