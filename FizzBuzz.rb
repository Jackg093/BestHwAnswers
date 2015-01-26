(1..100).map {|numb|
	# if numb % 3 == 0 && numb % 5 == 0  
	# 	puts "Fizzbuzz!"
	# elsif numb % 3 == 0 
	# 	puts "Fizz!"
	# elsif numb % 5 == 0
	# 	puts "Buzz!"
	# else
	# 	puts numb
	# end

print numb % 3 == 0 ? "#{numb} Fizz" : "#{numb}"
puts numb % 5 == 0 ? "Buzz" : ""

}

