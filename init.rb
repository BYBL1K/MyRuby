#cart.remove_item
require_relative "app/store_application"
StoreApplication.config do |app| # domain specific languages
	app.name = "My store application"
	app.environment = :production

	app.admin do |admin|
		admin.email = "chekalin-kanztorg@yandex.ru"
		admin.login = "admin"
		admin.send_info_emails_on :mondays
	end

end

p StoreApplication.environment
p StoreApplication.name
p StoreApplication::Admin.login
p StoreApplication::Admin.email

unless StoreApplication.frozen?
	StoreApplication.name = "My name"
end

#StoreApplication::Admin.email = "aaaaaa"
#puts StoreApplication::Admin.email

#p cart.items
@items = []
@items << AntiqueItem.new("car", :price => 101, :weight => 100) #syntax sugar
@items << RealItem.new(price: 120, weight: 200, name: "car")
@items << RealItem.new({:price => 120, :weight => 150, :name => "man"})

cart = Cart.new("Nikita")
cart.add_item AntiqueItem.new("car", :price => 101, :weight => 100)
cart.add_item RealItem.new({:price => 120, :weight => 200, :name=> "car"})
cart.add_item RealItem.new({:price => 120, :weight => 200, :name=> "kettle"})
#p cart.all_cars
#p cart.all_kettles

#@items.each { |i| puts i.name }

order = Order.new
@items.each { |i| order.add_item(i) }
order.place
puts order.placed_at
puts order.placed_at.utc
puts order.placed_at.strftime("%b %d, %Y %H:%M:%S")

#puts @items[0].kind_of?(Item) # является ли конкретный объект экзепляром класса в аргументе
#puts @items[0].kind_of?(AntiqueItem) 
#puts cart.kind_of?(Item)
#puts "------------------"
#puts @items[0].class == AntiqueItem # проверка точно класса
#puts @items[0].class == Item
#puts "---------------------"
#puts @items[0].respond_to?(:info)
#puts @items[0].respond_to?(:input_info)
#puts "---------------------"
#puts @items[0].send(:tax) # тоже самое, но может вызывать приватные методы
#puts @items[0].price
#puts @items[0].tax
#method = "all_kettles"
#p cart.send(method)
#cart.some_cars
#cart.add_item item2
#cart.add_item item3
#puts cart.items.size

#puts "-----------------"

#order = Order.new
#order.add_item item1
#order.add_item item2
#order.add_item item3
#order.remove_item
#puts order.items.size

#puts "------------------"

#p cart.items
#cart.delete_invalid_items
#p cart.items

#p item1.respond_to?(:weight)
#p item2.respond_to?(:weight)

#puts Item.discount
#puts "discount + tax" + " " + item1.price.to_s
#puts "real price" + " " + item1.real_price.to_s

#puts "--------------------"
#puts order.count_valid_items
#puts cart.count_valid_items
#puts "--------------------"

