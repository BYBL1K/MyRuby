class Duck

	@@greeting = "Hello" # переменная класса

	def initialize(greeting)
		@greeting = greeting # инстансная переменная
	end

	def quack # методы для экземпляра класса
		puts "#{@@greeting} #{@greeting}"
	end

	class << self # метод класса
		
		attr_accessor :greeting # инстансная переменная класса

		def quack
			puts "#{@@greeting} #{@greeting}" # инстансная переменная класса
		end
	end
end

duck1 = Duck.new("quack quack")
duck1.quack

Duck.greeting = "class quack"
Duck.quack