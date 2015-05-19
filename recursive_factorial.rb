class RecursiveFactorial

	def rec_fac(whole_number)
		if(whole_number == 1)
			whole_number
		else
			whole_number * rec_fac(whole_number - 1)
		end
	end

end
