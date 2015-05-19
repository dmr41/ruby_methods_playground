
	@preload = []
	@postload = []

	@preload = ObjectSpace.each_object(Class).to_a

	class MasterMethods
		require './array_ref.rb'
		require './recursive_factorial.rb'
		require './while-loop.rb'


		def build_user_methods(local_classes)
			function_call_hash = {}
			local_classes.each do |class_name|
				class_counter = 0
				class_number = local_classes.length
				working_name = class_name.new.methods - Object.methods
				method_number = working_name.length
				if (working_name.length == 1)
					method_counter = "method"
				else
					method_counter = "methods"
				end
				puts"The class #{class_name} has #{method_number} #{method_counter}."
				counter = 1

				method_array = []
				working_name.each do |method_names|
					class_counter += 1
					string_method_name = method_names.to_s
					instance_method_string ="#{class_name}.new.#{string_method_name}"
					if(function_call_hash[class_name])
						method_array << instance_method_string
					else
						method_array << instance_method_string
					end
						function_call_hash[class_name] = method_array
					puts "  #{counter}. #{string_method_name}"
					counter += 1
				end
				puts "-----------------------------"
			end

		end
	end

	@postload = (ObjectSpace.each_object(Class).to_a - @preload)

	MasterMethods.new.build_user_methods(@postload)

	private
		def
