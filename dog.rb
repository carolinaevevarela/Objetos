class Dog
  def initialize(nombre, raza, color)
    @nombre = nombre
    @raza = raza
    @color = color
  end
  def ladrar
    puts "#{@nombre} está ladrando!"
  end
end

dog = Dog.new('Beethoven', 'San Bernardo', 'Café')
dog.ladrar
