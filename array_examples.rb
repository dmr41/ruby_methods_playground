class ArrayExamples
	attr_accessor :first_array

	def initialize
		@first_array = []
	end

	def set_array(first_array=[])
		evaluate_array(first_array)
		@first_array
	end

	def evaluate_array(first_array)
		array_test = first_array.is_a?(Array)
		if(array_test)
			integers_only_array(first_array)
		else
			return "Input not an array."
		end
	end

	def integers_only_array(first_array)
		numbers_array = first_array.all? {|i| i.is_a?(Fixnum) }
		if(numbers_array)
			@first_array = first_array
		else
			return "Array does not only contain integers."
		end
	end

	def second_array_referenced
		second_array = @first_array
		for i in 0..4
			second_array << second_array.last + 1
		end
		for i in 0..2
			first_array << first_array.last + 1
		end
		second_array
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
		to_print = "second array: #{second_array}"
		puts "first array:  #{first_array}"
		puts to_print
		to_print
	end

end
