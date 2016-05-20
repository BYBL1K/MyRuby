i = 10
i.times {
	puts "Hello World"
}
puts "------------------------------"
james_bond = {:first_name => "James",
			  :middle_name => "Robert",
			  :last_name => "Bond"}
james_bond.each_key { |key| puts james_bond[key]}

File.open("/tmp/blocks.txt", "w" ) {|f| f.puts "hello world"}
