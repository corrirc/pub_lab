class Customer

  attr_reader :name, :wallet, :age, :drunkness_level

  def initialize(name, wallet, age, drunkness_level)

    @name = name
    @wallet = wallet
    @age = age
    @drunkness_level = drunkness_level

  end

  def buy_drink(drink)
  @wallet -= drink.price
  end

end
