class Product
  attr_reader :name, :sizes
  def initialize(name, *sizes)
    @name = name
    @sizes = sizes.map{|e| e.to_i}
  end
  def catalog
      return "#{self.name}, #{self.sizes[0..self.sizes.size-2].join(',')}"
  end
  def average
    @sizes.inject(&:+) / @sizes.size
  end
end

products_list = []
data = []
output = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}

data.each do |prod|
  ls = prod.split(', ')
  products_list.push(Product.new(*ls))
end

products_list.each do |product|
  output.push(product.catalog)
end

File.write('output.txt', output.join("\n"))
