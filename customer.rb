class Customer

  attr_reader :name, :wallet, :age, :drunkness_level

  def initialize(name, wallet, age)

    @name = name
    @wallet = wallet
    @age = age
    @drunkness_level = 0

  end

  def buy_drink(drink)
    @wallet -= drink.price
    @drunkness_level += drink.alchol_level
  end



end
