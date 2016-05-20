require_relative "init"

cart = Cart.new(ARGV.delete_at(0)) # delete first element and return here
ARGV.each do |a|
	@items.each { |i| cart.add_item(i) if a == i.name}
end
cart.read_from_file
begin
	cart.save_to_file
rescue Cart::ItemNotSupported
	puts "One of your items is not supported. #{Cart::UNSUPPORTED_ITEMS}"
end