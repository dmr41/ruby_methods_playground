class RubyLoops

  def while_loop_time_test
    total_time = 0
    loop_number = 1000
    for i in 0..loop_number
      input_num = 1000
      time_start = Time.now
      input_counter = input_num
      initial_value = 1
      while (input_counter > 1) do
        initial_value *= input_counter
        input_counter -= 1
      end
      time_stop = Time.now
      total_time += (time_stop - time_start)
    end

    puts total_time/loop_number
    puts initial_value
  end

end
