class Item

	def price
		rand(100)
	end

end

item1 = Item.new
puts item1.price
item2 = Item.new
puts item2.price
item3 = Item.new
puts item3.price

puts "--------------------------------"
p item1 # вывод информации об объекте
p item2
p item3