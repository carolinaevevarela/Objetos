class Product
  attr_accessor :name
  def initialize(name, *large, medium, small, xsmall)
    @name = name
    @large = large.to_s
    @medium = medium.to_s
    @small = small.to_s
    @xsmall = xsmall.to_s
  end
  def average
    @large + @medium
  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
  data.each do |prod|
    ls = prod.split(', ')
    products_list << Product.new(ls[0], *ls)
end
puts products_list
