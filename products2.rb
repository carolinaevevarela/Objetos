class Product
   def initialize(name, *sizes)
       @name = name
       @sizes = sizes.map{|e| e.to_i}
   end

   def catalog
       return "#{@name}, #{@sizes.join(',')}"
   end

   def catalog_v2
       return "#{@name}, #{@sizes[0..@sizes.size-2].join(',')}"
   end
end

data = []
output = []
File.open('catalogo.txt', 'r') {|file| data = file.readlines}

data.each do |prod|
  output.push(Product.new(*prod.split(', ')).catalog_v2)
end


File.write('output.txt', output.join("\n"))
