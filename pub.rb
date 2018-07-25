class Pub

attr_reader :name, :till

  def initialize(name, till, drinks, stock)
    @name = name
    @till = till
    @drinks = drinks
    @stock = stock
  end

  def drinks_count()
    return @drinks.count
  end

  def order_drink(customer, drink)
    if customer.age > 18 && customer.drunkness_level <= 80
      if @drinks.include?(drink)
        customer.buy_drink(drink)
        @till += drink.price
        change_stock(drink)
      end
    end
  end

  def order_food(customer, food)
    customer.buy_food(food)
    @till += food.price
  end

  def change_stock(drink)
    @stock[drink] -= 1
  end

  def stock_count(drink)
    return @stock[drink]
  end

end
