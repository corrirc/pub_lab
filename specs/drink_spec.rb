require('minitest/autorun')
require('minitest/rg')

require_relative('../drink.rb')

class DrinkTest < MiniTest::Test

  def test_name()
    drink1 = Drink.new("Vodka")
    assert_equal("Vodka", drink1.name)
  end


end
