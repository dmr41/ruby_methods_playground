class ArrayExamples
	attr_accessor :first_array, :second_array

	def initialize
		@first_array = []
		@second_array = []
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

	def direct_array_referencing(array_value)
		unless(set_array(array_value).empty?)
			puts "I am not empty"
			@second_array = set_array(array_value)
			for i in 0..4
				@second_array << @second_array.last + 1
				end
				for i in 0..2
					@first_array << @first_array.last + 1
				end
				@second_array
			end
	end

	def new_array_not_referenced(array_value)
		@first_array = set_array(array_value)
		f_array = @first_array
		@second_array = Array.new(f_array)
		for i in 0..4
			@second_array << @second_array.last + 1
		end
		@second_array
	end

end
