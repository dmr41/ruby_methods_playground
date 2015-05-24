class Queue


	def initialize
		@queue_data = []
	end

	def add_to_queue(new_element)
		@queue_data.push(new_element)
	end

	def remove_from_queue
		@queue_data.shift
	end

	def front_of_queue
		@queue_data[0]
	end

	def back_of_queue
		@queue_data[-1]
	end

	def list_queue
		queue_string = ""
		final_size = @queue_data.length - 1
		for iter in 0..final_size
			queue_string += "#{iter+1}. #{@queue_data[iter]}\n"
		end
		queue_string
	end

	def is_queue_empty
		if @queue_data.length == 0
			return true
		else
			return false
		end
	end

end

jimmy = Queue.new
jimmy.add_to_queue("Bobert")
jimmy.add_to_queue("Chelsea")
jimmy.add_to_queue("Victoria")

puts jimmy.list_queue

puts jimmy.front_of_queue
puts jimmy.back_of_queue

puts jimmy.remove_from_queue
puts jimmy.remove_from_queue

puts jimmy.list_queue

puts jimmy.front_of_queue
puts jimmy.back_of_queue
puts jimmy.is_queue_empty
puts jimmy.remove_from_queue
puts jimmy.is_queue_empty
