require "rspec"
require_relative "../app/item"
require_relative "../app/virtual_item"
require_relative "../app/antique_item"
require_relative "../app/item_container"
require_relative "../app/cart"

describe Cart do # описание класса cart

	describe "managing items" do # rspec spec/cart_spec.rb:10
	
		it "adds items into the cart" do
			cart = Cart.new("nikita")
			item1 = Item.new("kettle", price: 200)
			item2 = Item.new("car", price: 150)
			cart.add_items(item1, item2)
			expect(cart.items).to include(item1, item2)
		end

		# pending - ожидание реализации

		it "removes items from itself"

	end

	it "counts items in itself"
	it "places order using all the items that were added into the cart"
	it "clears all items"


end