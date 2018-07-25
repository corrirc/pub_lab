class Pub

attr_reader :name, :till

  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks
  end

  def drinks_count()
    return @drinks.count
  end

  def order(customer, drink)
    if customer.age > 18
      if @drinks.include?(drink)
        customer.buy_drink(drink)
        @till += drink.price
      end
    end

  end

end
