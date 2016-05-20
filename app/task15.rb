my_data = { :name => "James", :last_name => "Bond"}

puts my_data[:name]
puts my_data[:last_name]

p my_data # информаци об объекте

puts "----------------------------"

class Item

	def initialize(options) # инициализация начальных значений
		@price = options[:price]
		@weight = options[:weight]
	end
	
	attr_accessor :price, :weight # определении обоих сразу
	# attr_reader :price, :weight определение геттеров
	# attr_writer :price, :weight определение сеттеров

end

item1 = Item.new({ :weight => 150, :price => 30})
puts item1.price
puts item1.weight