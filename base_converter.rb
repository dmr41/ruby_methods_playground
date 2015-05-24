class BaseConverter
	require './stack_ruby.rb'

	def base_calculate(current_number, base_num)
		current_stack = Stack.new
		while(current_number > 0) do
			current_stack.push(current_number % base_num)
			current_number = (current_number/base_num).floor
		end
		converted = ""
		while (current_stack.count > 0)
			converted += current_stack.pop.to_s

		end
		converted.to_i
	end

	def base_no_stack(current_number, base_num)
		while(current_number > 0) do
			string_holder ||= ""
			hold = current_number % base_num
			string_holder += hold.to_s
			current_number =  (current_number/base_num).floor
		end
		 string_holder.reverse.to_i
	end

end

# p BaseConverter.new.base_calculate(10, 8)
start1 = Time.now
p BaseConverter.new.base_calculate(11232123459902348923489283412312312312, 2)
stop1 = Time.now
puts stop1-start1

start2 = Time.now
p BaseConverter.new.base_no_stack(11232123459902348923489283412312312312, 2)
stop2 = Time.now
puts stop2-start2
