require('minitest/autorun')
require('minitest/rg')

require_relative('../drink.rb')

class DrinkTest < MiniTest::Test


  def setup()
    @drink1 = Drink.new("Vodka", 2)
  end

  def test_name()
    # drink1 = Drink.new("Vodka", 2)
    assert_equal("Vodka", @drink1.name)
  end

  def test_price()
    assert_equal(2, @drink1.price)
  end




end
