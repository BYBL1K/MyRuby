class Item

	@@discount = 0.1

	def self.discount
		if Time.now.month == 4
			return @@discount + 0.2
		else
			return @@discount
		end
	end

	def self.show_info_about(attr, block)
		@@show_info_about ||= {} # если пустая - хэш, если нет, то не трогаем
		@@show_info_about[attr] = block
	end

	def initialize(name, options={}) 
		@real_price = options[:price]
		@name 		= name
	end
	
	attr_reader :real_price, :name
	

	def price=(value)
		@real_price = value
	end

	def info
		# [price, weight, name]
		# price.to_s + "," + weight.to_s + "," + name.to_s
		yield(price)
		yield(name)
	end

	def price
		(@real_price - @real_price*self.class.discount) + tax if @real_price
	end

	def to_s
		"#{self.name}:#{self.price}"
	end

	private

	def tax
		type_tax = if self.class == VirtualItem
			1
		else
			2
		end

		cost_tax = if @real_price > 5
			@real_price*0.2
		else
			@real_price*0.1
		end
		cost_tax + type_tax
	end

end