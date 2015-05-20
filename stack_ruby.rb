class Stack

  def initialize
   @the_stack = []
  end

  def push(item)
    @the_stack.push item
  end

  def pop
    @the_stack.pop
  end

  def count
    @the_stack.length
  end

	def clear
		@the_stack.clear
	end

	def look
		@the_stack.last
	end

end
