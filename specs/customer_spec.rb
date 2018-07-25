require('minitest/autorun')
require('minitest/rg')

require_relative('../customer.rb')

class CustomerTest < MiniTest::Test

  def setup()
    @customer1 = Customer.new("Ricky", 50, 32)
    @customer2 = Customer.new("Sithara", 60, 30)
  end

  def test_name()
    assert_equal("Ricky", @customer1.name)
  end

end
