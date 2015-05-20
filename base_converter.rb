class BaseConverter
	require './stack_ruby.rb'

	def base_calculate(current_number, base_num)
		current_stack = Stack.new
		while(current_number > 0) do
			current_stack.push(current_number % base_num)
			current_number = (current_number/base_num).floor
		end
		converted = 0
		while (current_stack.count > 0)
			converted += current_stack.pop
			puts converted
		end
		converted
	end

end

p BaseConverter.new.base_calculate(10, 8)
