class Car
  attr_accessor :model, :year
  def initialize(model, year)
    @model = model
    @year = year
  end
end

car = Car.new('Fito', 1985)
puts "Mi auto favorito es un #{car.model} del año #{car.year}!"
