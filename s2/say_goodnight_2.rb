#!/usr/bin/env ruby

def say_goodnight(name)
	result = "Good night, #{name.capitalize}" 
	return result
end

puts say_goodnight("Wyatt")
puts say_goodnight("Google")
puts say_goodnight("fedora")


