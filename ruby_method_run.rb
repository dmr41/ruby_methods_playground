
	@preload = []
	@postload = []

	@preload = ObjectSpace.each_object(Class).to_a

	class MasterMethods
		require './array_ref.rb'
		require './recursive_factorial.rb'
		require './while-loop.rb'

		def user_methods_display(function_call_hash={})
			function_call_hash.each do |class_index, class_method_array|
				puts class_method_array[0].keys[0]
				class_method_array.each do |class_method_hash|
					class_method_hash.each do |class_name, method_name|
						test_run = class_name.new
						test_run.send method_name
					end
				end
			end
		end

		def method_pluralize(method_number_size=1)
			if (method_number_size == 1)
				method_puralize = "method"
			else
				method_puralize = "methods"
			end
			method_puralize
		end

		def class_method_array_builder(working_name=[], class_name="")
			method_array = []
			working_name.each do |method_names|
				class_method = {class_name => method_names}
				method_array << class_method
			end
			method_array
		end

		def build_user_methods(local_classes=[])
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
