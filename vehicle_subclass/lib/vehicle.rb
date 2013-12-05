class Vehicle
  attr_writer :price
  def initialize(name, price)
    @name = name
    @price = price
  end

  def to_s
    puts "#{ @name } = Rs.#{ @price }"
  end
end