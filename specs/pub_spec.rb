require('minitest/autorun')
require('minitest/rg')

require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../customer.rb')

class PubTest < MiniTest::Test

  def setup()
    @drink1 = Drink.new("Vodka", 2)
    @drink2 = Drink.new("Beer", 1)
    @drinks = [@drink1, @drink2]
    @pub1 = Pub.new("Ricky's Bar", 5000, @drinks)
  end

  def test_pub_name()
    assert_equal("Ricky's Bar", @pub1.name)
  end




end
