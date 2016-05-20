def hello_world(last_name="", first_name="")
	greeting = "Hello World\n"
	unless last_name == "" && first_name == ""
		greeting += "My name is " + first_name.to_s + " " + last_name.to_s
	end
	greeting
end

puts hello_world("Bond", "James")
puts hello_world