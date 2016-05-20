names = ["Bob", "Nikita", "James"]
puts names[0]
puts names[1]
puts names[2]

puts names.class # add element to end of array
names.push "Roman"
p names

names.pop # delete last element
p names

names.shift # delete first element
p names

class Cart

	attr_reader :items

	def initialize
		@items = Array.new
	end

	def add_item(item)
		@items.push item
	end

	def remove_item
		@items.pop
	end
end

