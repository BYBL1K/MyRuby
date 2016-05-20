puts "ruby".capitalize
puts 1.next

str = "string string"
puts str.capitalize

puts "------------------------------"

names = { :last_name => "Bond", :first_name => "James"}
puts names.length

puts "------------------------------"

class Item

	def initialize(options) 
		@price = options[:price]
		@weight = options[:weight]
	end
	
	attr_accessor :price, :weight

end

item1 = Item.new({:price => 30})
puts item1.price