require('minitest/autorun')
require('minitest/rg')

require_relative('../customer.rb')
require_relative('../drink.rb')
require_relative('../food.rb')

class CustomerTest < MiniTest::Test

  def setup()
    @customer1 = Customer.new("Ricky", 50, 32)
    @customer2 = Customer.new("Sithara", 60, 30)
    @drink = Drink.new("Vodka", 2, 20)
  end

  def test_name()
    assert_equal("Ricky", @customer1.name)
  end

  def test_wallet()
    assert_equal(50, @customer1.wallet)
  end

  def test_age()
    assert_equal(32, @customer1.age)
  end

  def test_buy_drink()
    @customer1.buy_drink(@drink)
    assert_equal(48, @customer1.wallet)
  end

  def test_drunkness_level
    assert_equal(0, @customer1.drunkness_level)
  end

  def test_buy_food
    food1 = Food.new("Burger",3, 5)
    @customer1.buy_drink(@drink)
    @customer1.buy_food(food1)
    assert_equal(15, @customer1.drunkness_level)
    assert_equal(45, @customer1.wallet)
  end
end
