module Mastermind
	class Player
		attr_reader :first_input, :second_input, :third_input, :fourth_input, :name
		def initialize(input)
			@first_input = input.fetch(:first_input)
			@second_input = input.fetch(:second_input)
			@third_input = input.fetch(:third_input)
			@fourth_input = input.fetch(:fourth_input)
			@name = input.fetch(:name)
		end
	end
end
