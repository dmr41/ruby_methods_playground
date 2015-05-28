require 'spec_helper'
require './array_examples'

##
describe "evaluate_array method" do

	it "returns array if input value an array" do
		arrays_reference = ArrayExamples.new
		test_array_state = arrays_reference.evaluate_array([1, 2, 3, 6])
		expect(test_array_state).to eq([1, 2, 3, 6])
		test_array_state = arrays_reference.evaluate_array([1, "stringy", 3, 6])
		expect(test_array_state).to eq("Array does not only contain integers.")
	end

	it "fails to return array if input array contains non-integers" do
		arrays_reference = ArrayExamples.new
		test_array_state = arrays_reference.evaluate_array([1, 2, 3, 6])
		expect(test_array_state).to eq([1, 2, 3, 6])
		test_array_state = arrays_reference.evaluate_array([1, "stringy", 3, 6])
		expect(test_array_state).to eq("Array does not only contain integers.")
	end

	it "fails to return array if input value is not an array" do
		arrays_reference = ArrayExamples.new

		test_array_state = arrays_reference.evaluate_array("I am words")
		expect(test_array_state).to eq("Input not an array.")

		test_array_state = arrays_reference.evaluate_array(590999)
		expect(test_array_state).to eq("Input not an array.")
	end

end

##
describe "integers_only_array method" do

	it "sets the first_array instance to the input integer array" do
		array_reference = ArrayExamples.new
		expect(array_reference.first_array).to eq([])
		number_array = array_reference.integers_only_array([1, 2, 3, 4])
		expect(array_reference.first_array).to eq([1, 2, 3, 4])
	end

	it "fails to set first_array if any values in input are non-integers" do
		array_reference = ArrayExamples.new
		expect(array_reference.first_array).to eq([])
		number_array = array_reference.integers_only_array([1, "word", 3, 4])
		expect(number_array).to eq("Array does not only contain integers.")
		expect(array_reference.first_array).to eq([])
	end

end

##
describe "set_array method" do

	it "returns empty array by default" do
		arrays_reference = ArrayExamples.new
		empty_array = arrays_reference.set_array
		expect(empty_array).to match_array([])
	end

	it "returns input array given" do
		arrays_reference = ArrayExamples.new
		number_array = arrays_reference.set_array([1, 2, 3])
		expect(number_array).to match_array([1, 2, 3])
	end

	it "returns empty array if input is not an array" do
		arrays_reference = ArrayExamples.new
		string_value = arrays_reference.set_array("I like turtles")
		expect(string_value).to eq([])
		numeric_value = arrays_reference.set_array(1)
		expect(string_value).to eq([])
	end

	it "fails to set array if array contains more than integers" do
		arrays_reference = ArrayExamples.new
		mixed_array_type = arrays_reference.set_array([1, 2, 3, "r"])
		expect(mixed_array_type).to eq([])
		mixed_array_type = arrays_reference.set_array([1, 2, 3, "5"])
		expect(mixed_array_type).to eq([])
	end

end

	# it "second array references first array" do
	# 	arrays_reference = ArrayExamples.new
	# 	arrays_reference.set_array([1, 2, 3, 4, 5])
	# 	expect(arrays_reference.second_array_referenced).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13])
	# end
