class Item

	def initialize # инициализация начальных значений
		@price = 30
	end
	
	def price # геттер
		@price
	end

	def price=(price_value) # сеттер
		@price = price_value
	end

end

item1 = Item.new
item1.price = 10
puts item1.price
item2 = Item.new
item2.price = 115
puts item2.price
item3 = Item.new
puts item3.price