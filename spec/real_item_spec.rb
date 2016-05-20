require "rspec"
require_relative "../app/item"
require_relative "../app/real_item"
require_relative "../app/virtual_item"

describe RealItem  do
	
	it "uses weight while return info"  do

		item1 = RealItem.new(name: "kettle", price: 200, weight: 2)
		item2 = RealItem.new(name: "car", price: 600, weight: 10)
		item1_info = []
		item2_info = []
		item1.info { |attr| item1_info << attr }
		item2.info { |attr| item2_info << attr }
		expect(item1_info.join(", ")).to eq "222.0, kettle"
		expect(item2_info.join(", ")).to eq "10, 662.0, car"
	end
	
end