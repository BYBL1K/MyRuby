def hello_world(last_name="", first_name="")
	puts "Hello World"
	unless last_name == "" && first_name == ""
		puts "My name is " + first_name.to_s + " " + last_name.to_s
	end
end
hello_world("Chekalin")
hello_world("Bond", "James")
hello_world("Pupkin", "Vasya")
hello_world