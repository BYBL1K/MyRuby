require "rspec"
require_relative "../app/item.rb"
require_relative "../app/virtual_item.rb"

describe Item do # проверяем этот класс

	before(:each) do
		@item = Item.new("kettle", price: 200)
	end

	# before(:all) do
	# 	@item = Item.new("kettle", price: 200)
	# end

	after(:each) do
	end

	after(:all) do
	end
	
	it "calculate price according to a special formula" do
		expect(@item.price).to eq 222
		@item.price = 300
	end

	it "returns info" do
		expect(@item.to_s).to eq "kettle:222.0"
	end

	it "calucalates tax" do
		expect(@item.send(:tax)).not_to be_nil
	end

end