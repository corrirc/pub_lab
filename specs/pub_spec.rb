require('minitest/autorun')
require('minitest/rg')

require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../customer.rb')

class PubTest < MiniTest::Test

  def setup()
    @drink1 = Drink.new("Vodka", 2, 20)
    @drink2 = Drink.new("Beer", 1, 10)
    @drinks = [@drink1, @drink2]
    @pub1 = Pub.new("Ricky's Bar", 5000, @drinks)
    @customer = Customer.new("John", 40, 30)
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

  def test_order
    @pub1.order(@customer, @drink2)
    assert_equal(39, @customer.wallet)
    assert_equal(5001, @pub1.till)
  end

end
