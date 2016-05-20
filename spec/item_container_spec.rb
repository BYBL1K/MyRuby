require "rspec"
require_relative "../app/item_container"
require_relative "../app/item"
require_relative "../app/virtual_item"

class ItemBox
	
	include ItemContainer

	def initialize
		@items = []
	end
end

describe ItemContainer do

	before(:each) do
		@box = ItemBox.new
		@item1 = Item.new("kettle", price: 200)
		@item2 = Item.new("car", price: 200)
	end

	# тестирование метода класса
	it "shows min price for the item" do
		expect(ItemBox.min_price).to eq 100
	end

	it "adds items into the container" do
		@box.add_item(@item1)
		@box.add_item(@item2)
		expect(@box.items.size).to eq(2)
	end

	it "removes item from the box" do
		@box.add_item(@item1)
		@box.add_item(@item2)
		expect(@box.remove_item).to be(@item2)
		@box.remove_item
		expect(@box.items).to be_empty
	end

	it "raises error if user if trying to add anything else but an item" do
		expect(lambda { @box.add_item("something else") }).to raise_error
	end

end