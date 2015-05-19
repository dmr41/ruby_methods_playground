class ArrayExamples

	def arrays_reference_each_other
		puts "--"*30
		puts "--"*30
		puts "simple second_array = first_array declaration.z"
		first_array = [1,2,3,4,5]
		second_array = first_array
		puts "first array:  #{first_array}"
		puts "second array: #{second_array}"
		puts "-----now alter second array --"

		for i in 0..4
			second_array << second_array.last + 1
		end

		puts "first array:  #{first_array}"
		puts "second array: #{second_array}"

		puts "-----now alter first array --"

		for i in 0..2
			first_array << first_array.last + 7
		end

		puts "first array:  #{first_array}"
		puts "second array: #{second_array}"
	end

	def newwing_up_arrays_prevents_referencing
		puts "--"*30
		puts "--"*30
		puts "Now with Array.new for the second_array declaration!!!!!!"

		first_array = [1,2,3,4,5]
		second_array = Array.new(first_array)
		puts "first array:  #{first_array}"
		puts "second array: #{second_array}"
		puts "-----now alter second array --"

		for i in 0..4
			second_array << second_array.last + 1
		end

		puts "first array:  #{first_array}"
		puts "second array: #{second_array}"
	end

end
