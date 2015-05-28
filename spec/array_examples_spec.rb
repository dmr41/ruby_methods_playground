require 'spec_helper'
require './array_examples'

describe ArrayExamples do

	it "fails to set first array and returns default empty array" do
		arrays_reference = ArrayExamples.new
		empty_array = arrays_reference.set_array
		expect(empty_array).to match_array([])
	end

	it "sets first array returns input array" do
		arrays_reference = ArrayExamples.new
		empty_array = arrays_reference.set_array([1, 2, 3])
		expect(empty_array).to match_array([1, 2, 3])
	end

	it "fails to set array if input is not an array" do
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

	it "second array references first array" do
		arrays_reference = ArrayExamples.new
		arrays_reference.set_array([1, 2, 3, 4, 5])
		expect(arrays_reference.second_array_referenced).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13])
	end

end
