class Item

	def initialize # инициализация начальных значений
		@price = 30
	end
	
	attr_accessor :price, :weight # определении обоих сразу
	# attr_reader :price, :weight определение геттеров
	# attr_writer :price, :weight определение сеттеров

end

item1 = Item.new
item1.price = 20
puts item1.price
item1.weight = 150
puts item1.weight