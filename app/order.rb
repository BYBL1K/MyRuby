class Order
	attr_reader :items, :placed_at

	include ItemContainer
	#include ItemContainer::Manager
	#include ItemContainer::Info

	def initialize
		@items = Array.new
		# ...
	end

	def place
		@placed_at = Time.now
		# mock - эмуляция поведения класса, не трогая сам класс
		# эмуляция отправки email'a без его отправки
		
		#thr = Thread.new do # создание нового потока, гем delayed_job

		# Pony.mail(:to => StoreApplication::Admin.email,
		# 	:from => "My store example",
		# 	:via => :smtp, :via_options => {
		# 		address: 'smtp.gmail.com',
		# 		port: '587',
		# 		user_name: 'jason.binwood@gmail.com',
		# 		password: '6bh5snql83d8',
		# 		authentication: :plain,
		# 		domain: "mail.google.com",
		# 	subject: "New order has been placed", body: "Please, check to see it" 
		# 		})
		#end
		#while(thr.alive?)
		#	puts "."
		#	sleep(1)
		#end
		send_email_at = Time.now
	end
end