require('minitest/autorun')
require('minitest/rg')

require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../customer.rb')
require_relative('../food.rb')

class FoodTest < MiniTest::Test

  def setup()
    @food1 = Food.new("Burger", 3, 5)
  end

  def test_food_name
    assert_equal("Burger", @food1.name)
  end

  def test_food_price
    assert_equal(3, @food1.price)
  end

end
