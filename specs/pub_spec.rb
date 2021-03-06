require('minitest/autorun')
require('minitest/rg')

require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../customer.rb')
require_relative('../food.rb')

class PubTest < MiniTest::Test

  def setup()
    @drink1 = Drink.new("Vodka", 2, 20)
    @drink2 = Drink.new("Beer", 1, 10)
    @drinks = [@drink1, @drink2]
    stock = {@drink1 => 100, @drink2=> 200}
    @pub1 = Pub.new("Ricky's Bar", 5000, @drinks, stock)
    @customer = Customer.new("John", 40, 30)

    @food1 = Food.new("Burger", 3, 5)
  end

  def test_pub_name()
    assert_equal("Ricky's Bar", @pub1.name)
  end

  def test_till_amount
    assert_equal(5000, @pub1.till)
  end

  def test_number_drink
    assert_equal(2, @pub1.drinks_count)
  end

  def test_order_drink
    @pub1.order_drink(@customer, @drink2)
    assert_equal(39, @customer.wallet)
    assert_equal(5001, @pub1.till)
    assert_equal(10, @customer.drunkness_level)
  end

  def test_order_food_and_drink()
    @pub1.order_drink(@customer, @drink2)
    @pub1.order_food(@customer, @food1)
    assert_equal(36, @customer.wallet)
    assert_equal(5004, @pub1.till)
    assert_equal(5, @customer.drunkness_level)
  end

  def test_change_stock
    @pub1.order_drink(@customer, @drink2)
    # @pub1.change_stock(@drink2)
    # assert_equal(39, @customer.wallet)
    # assert_equal(5001, @pub1.till)
    # assert_equal(10, @customer.drunkness_level)
    assert_equal(199, @pub1.stock_count(@drink2))
  end

  def test_total_stock_value
    result = @pub1.total_stock_value()
    assert_equal(400, result)
  end

  def test_total_stock_value_after_ordering_drinks()
    @pub1.order_drink(@customer, @drink2)
    @pub1.order_drink(@customer, @drink1)
    result = @pub1.total_stock_value()
    assert_equal(397, result)
  end

end
