
	@preload = []
	@postload = []

	@preload = ObjectSpace.each_object(Class).to_a

	class MasterMethods
		require './array_examples.rb'
		require './recursive_factorial.rb'
		require './while-loop.rb'
		require './stack_ruby.rb'

		def reformat_method_names(class_name, method_name, counter)
			 	string_method = method_name.to_s
				roll_an_instance = class_name.new
				argument_count = roll_an_instance.method(method_name).arity
				arg_names = roll_an_instance.method(method_name).parameters
				arg_string = ""
				holding_array = []
				arg_names.each do |arg_array|
					if arg_names.length == 1
						holding_array << arg_array[1]
					else
						holding_array << arg_array[1]

					end
					arg_string = holding_array.join(", ")
				end

			 	puts "  #{counter}: #{string_method}(#{arg_string})"
		end

		def user_methods_display(function_call_hash)
			function_call_hash.each do |class_index, class_method_array|
				puts "-"*90
				puts "#{class_method_array[0].keys[0]} "\
				     "has #{class_method_array.length} methods"
				puts
				counter = 1
				class_method_array.each do |class_method_hash|
					class_method_hash.each do |class_name, method_name|
						reformat_method_names(class_name, method_name, counter)
			# class_name.new.send method_name
						counter += 1
					end
				end
			end
		end

		def method_pluralize(method_number_size)

				if (method_number_size == 1)
					method_puralize = "method"
				elsif (method_number_size != 1)
					method_puralize = "methods"
				end
				method_puralize
		end

		def class_method_array_builder(working_name, class_name)
			method_array = []
			working_name.each do |method_names|
				class_method = {class_name => method_names}
				method_array << class_method
			end
			method_array
		end

		def build_user_methods(local_classes)
			function_call_hash = {}
			class_counter = 0
			local_classes.each do |class_name|
				class_number = local_classes.length
				working_name = class_name.new.methods - Object.methods
				method_array = class_method_array_builder(working_name, class_name)
				class_counter += 1
				function_call_hash[class_counter] = method_array
			end
			user_methods_display(function_call_hash)
			function_call_hash
		end #def
	end #class

	@postload = (ObjectSpace.each_object(Class).to_a - @preload)

 master_function_hash = MasterMethods.new.build_user_methods(@postload)
# puts master_function_hash


	private
